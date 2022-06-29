Role Name
=========

Install and configures slurm controller, daemons, and database.

Requirements
------------

Running Mariadb/MySQL Role or instance

Role Variables
--------------

| Name                             | Default Value | Description                               |
| ----                             | -----         | -----------                               |
| mounts                           | []            | List of dictionaries defining the mount   |
| slurm_database_password          | "default"     | Mysql password for slurm database user    |
| slurm_version                    | "21.08.5"     | Versino of slurm to download and install  |
| slurm_slurmd                     | false         | Install as a slurm daemon (compute/login) |
| slurm_controller                 | false         | Install as a slurm controller             |
| slurm_uid                        | 450           | Slurm User ID                             |
| slurm_gid                        | 450           | Slurm group ID                            |
| slurm_controller_hostname        | localhost     | Hostname for SlurmctldHost                |
| slurm_controller_ip              | 127.0.0.1     | IP for SlurmctldHost                      |
| slurm_controller_port            | 6817          | Controller listening port                 |
| slurm_daemon_port                | 6818          | Daemon listening port                     |
| slurm_user                       | slurm         | User to run slurmctld as                  |
| slurm_cluster_name               | cluster       | Name for this cluster install             |
| slurm_controller_debug           | 3             | Controller debug level                    |
| slurm_daemon_debug               | 3             | Daemon debug level                        |
| slurm_nodes                      | []            | List of nodes                             |
| slurm_partitions                 | []            | List of partitions                        |
| slurm_cgroup_automount           | yes           | Automount cgroups                         |
| slurm_cgroup_constrain_cores     | yes           | Constrain cores available                 |
| slurm_cgroup_constrain_ram_space | yes           | Constrain ram space                       |
| slurm_dbd_storage_user           | slurm         | Slurmdbd service user                     |
| slurm_dbd_log_level              | verbose       | Slurmdbd log level                        |
| slurm_dbd_address                | localhost     | Host ip address for dbd                   |
| slurm_dbd_host                   | localhost     | Hostname of dbd service                   |
| slurm_dbd_password               | ""            | MySQL/Mariadb password                    |


Tags
----

List of tags you can use to control the execution of the role.

| Name                     | Description                                  |
| ----                     | -----------                                  |
| slurm_install_controller | Install and configure slurmctld and slurmdbd |
| slurm_install_slurmd     | Install and configure slurmd                 |
| slurm_configure          | Update slurm configuration files             |


Dependencies
------------

None

Example Playbook
----------------

Including an example of how to use your role (for instance, with variables passed in as parameters) is always nice for users too:

    - hosts: tags_slurm
      roles:
        - munge
        - common

    - hosts: device_roles_head-node
      roles:
        - slurm

    - hosts: device_roles_compute-node
      roles:
        - slurm

    - hosts: device_roles_login-node
      roles:
        - slurm
