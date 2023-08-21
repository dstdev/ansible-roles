#!/usr/bin/python3
import csv
import os
import subprocess

def get_job_id_from_pid(pid):
    cmd = f"grep 'slurm' /proc/{pid}/cgroup | grep -o 'job_[0-9]*' | grep -o '[0-9]*'"
    try:
        job_id = subprocess.check_output(cmd, shell=True).decode('utf-8').strip()
        return int(job_id.split('\n')[0])  # taking the first one assuming they're the same
    except subprocess.CalledProcessError:
        return None

# Parse the CSV files
def parse_csv(file_path):
    data = []
    with open(file_path, 'r') as f:
        reader = csv.DictReader(f)
        for row in reader:
            cleaned_row= {k.strip(): v.strip() for k,v in row.items()}
            data.append(cleaned_row)
    return data


# Gather GPU info and app usage data
try:
    subprocess.run('nvidia-smi --query-gpu=gpu_uuid,index,name,utilization.gpu --format=csv > gpu_info.csv', shell=True, check=True)
    subprocess.run('nvidia-smi --query-compute-apps=pid,used_gpu_memory,gpu_uuid --format=csv > compute_apps_usage.csv', shell=True, check=True)
except subprocess.CalledProcessError as e:
    print(f"Error running nvidia-smi commands: {e}")
    exit(1)

gpu_info = parse_csv('gpu_info.csv')
#print(f"GPU INFO: {gpu_info}")
compute_apps_usage = parse_csv('compute_apps_usage.csv')
#print(f"COMPUTE APPS USAGE: {compute_apps_usage}")

# Prepare the mapping
mapping = {}
for app in compute_apps_usage:
    uuid = app['gpu_uuid']
    # print(f"Checking UUID from App Usage:{uuid}")
    for gpu in gpu_info:
        if gpu['uuid'] == uuid:
            # print(f"Match found for UUID: {uuid}")
            index = gpu['index']
            mapping[index] = {
                'uuid': uuid,
                'pid': app['pid'],
                'utilization': gpu['utilization.gpu [%]'].strip(' %'),
                'used_memory_mib': app['used_gpu_memory [MiB]'].strip(' MiB')
            }

# Write to the output file
output_file = "/var/lib/node_exporter/textfile_collector/gpu_metrics.prom"
with open(output_file, 'w') as f:
    for key, value in mapping.items():
        minor_number = key
        gpu_utilization = value['utilization']
        gpu_memory_usage_bytes = int(value['used_memory_mib']) * 1024 * 1024
        job_id = get_job_id_from_pid(value['pid'])
        #print(f"Data to be written for GPU ID {minor_number}: Utilization={gpu_utilization}, Memory={gpu_memory_usage_bytes}, Job ID={job_id}")       

        if job_id:  # Only write if job_id exists
            f.write(f'cgroups_nvidia_gpu_utilization{{gpu_id="{minor_number}", job_id="{job_id}"}} {gpu_utilization}\n')
            f.write(f'cgroups_nvidia_gpu_memory_usage_in_bytes{{gpu_id="{minor_number}", job_id="{job_id}"}} {gpu_memory_usage_bytes}\n')

#print("Metrics written to gpu_metrics.prom")
