Role Name
=========

Install and configures slurm controller, daemons, and database.

Requirements
------------

Running Mariadb/MySQL Role or instance and munge development libraries must be installed.

Role Variables
--------------


| Name                                        | Default Value         | Description                                                                       |
|---------------------------------------------|-----------------------|-----------------------------------------------------------------------------------|
| mounts                                      | []                    | List of dictionaries defining the mount                                           |
| slurm_accounting_storage_enforce            | 0                     | Accounting enforcement                                                            |
| slurm_cgroup_automount                      | yes                   | Automount cgroups                                                                 |
| slurm_cgroup_constrain_cores                | yes                   | Constrain cores available                                                         |
| slurm_cgroup_constrain_ram_space            | yes                   | Constrain ram space                                                               |
| slurm_cluster_name                          | cluster               | Name for this cluster install                                                     |
| slurm_conf_accounting_storage_external_host | ""                    | External Accounting DB host ip and port                                           |
| slurm_conf_accouting_storage_tres           | []                    | AccoutingStorageTres Parameter                                                    |
| slurm_conf_cli_filter_plugins               | []                    | List of filter/modification plugins                                               |
| slurm_conf_gres_types                       | []                    | GRES Types used                                                                   |
| slurm_conf_job_acct_gather_type             | jobacct_gather/cgroup | Job accouting collection type                                                     |
| slurm_conf_job_submit_plugins               | False                 | Plugins to enable (lua)                                                           |
| slurm_conf_max_array_size                   | 1001                  | Maximum array size allowed                                                        |
| slurm_conf_prolog_flags                     | ["X11"]               | PrologFlags                                                                       |
| slurm_conf_return_to_service                | 2                     | Return to service: 0, 1, or 2                                                     |
| slurm_conf_resume_program                   | ""                    | Resume program to use when suspending a node in the cloud. Multiline string.      |
| slurm_conf_resume_timeout                   | ""                    | Resumewhen calling ResumeProgram                                                  |
| slurm_conf_suspend_time                     | ""                    | SuspendTime in slurm.conf                                                         |
| slurm_conf_suspend_timeout                  | ""                    | SuspendTimeout when calling SuspendProgram                                        |
| slurm_conf_suspend_program                  | ""                    | Suspend program to use when suspending a node in the cloud. Multiline string.     |
| slurm_conf_task_plugin                      | ['task/cgroup']       | Task plugins to use                                                               |
| slurm_controller                            | false                 | Install as a slurm controller                                                     |
| slurm_controller_debug                      | 3                     | Controller debug level                                                            |
| slurm_controller_hostname                   | localhost             | Hostname for SlurmctldHost                                                        |
| slurm_controller_ip                         | 127.0.0.1             | IP for SlurmctldHost                                                              |
| slurm_controller_port                       | 6817                  | Controller listening port                                                         |
| slurm_daemon_debug                          | 3                     | Daemon debug level                                                                |
| slurm_daemon_port                           | 6818                  | Daemon listening port                                                             |
| slurm_daemon_spool_dir                      | /var/spool/slurmd     | Location on node for slurm daemon states                                          |
| slurm_database_password                     | "default"             | Mysql password for slurm database user                                            |
| slurm_dbd_address                           | localhost             | Host ip address for dbd                                                           |
| slurm_dbd_host                              | localhost             | Hostname of dbd service                                                           |
| slurm_dbd_log_level                         | verbose               | Slurmdbd log level                                                                |
| slurm_dbd_password                          | ""                    | MySQL/Mariadb password                                                            |
| slurm_dbd_storage_user                      | slurm                 | Slurmdbd service user                                                             |
| slurm_disable_restart                       | false                 | Disable service restart when files are updated                                    |
| slurm_enable_pam_adopt                      | false                 | Enable pam adopt on host                                                          |
| slurm_enable_restd                          | false                 | Build and install the slurm rest api                                              |
| slurm_firewalld_enabled                     | false                 | Enable firewalld rules for a defined subnet                                       |
| slurm_firewalld_subnet                      | 10.141.0.0/16         | Firewalld opened subnet                                                           |
| slurm_gid                                   | 450                   | Slurm group ID                                                                    |
| slurm_gres_conf_entries                     | []                    | List of entires in gres.conf                                                      |
| slurm_job_epilog_append                     | ""                    | Append to job epilog script                                                       |
| slurm_job_prolog_append                     | ""                    | Append to job prolog script                                                       |
| slurm_job_temporary_directories             | "/tmp/$SLURM_JOBID"   | Temporary slurm directories to create per job.  Can leverage enviroment variables |
| slurm_kill_step_enabled                     | false                 | Enable kill step program and write defaults                                       |
| slurm_nodes                                 | []                    | List of nodes                                                                     |
| slurm_partitions                            | []                    | List of partitions                                                                |
| slurm_priority_calc_period                  | 5                     | Half lie decay time                                                               |
| slurm_priority_decay_half_life              | "7-0"                 | PriorityDecayHalfLife in slurm.conf                                               |
| slurm_priority_type                         | basic                 | Priority Plugin to use                                                            |
| slurm_priority_weight_age                   | 0                     | Weight contribution to priority                                                   |
| slurm_priority_weight_assoc                 | 0                     | Association contribution to priority                                              |
| slurm_priority_weight_fair_share            | 0                     | Fair share contribution to priority                                               |
| slurm_priority_weight_job_size              | 0                     | Job sizec ontribution to priority                                                 |
| slurm_priority_weight_partition             | 0                     | Partition contribution to priority                                                |
| slurm_priority_weight_qos                   | 0                     | QOS contribution to priority                                                      |
| slurm_priority_weight_tres                  | 0                     | TRES contribution to priority                                                     |
| slurm_proctrack_type                        | cgroup                | ProctrackType                                                                     |
| slurm_profile_bash_append                   | ""                    | Append slurm bash profile scripts                                                 |
| slurm_profile_csh_append                    | ""                    | Append slurm csh profile scripts                                                  |
| slurm_rest_jwt_key                          | Undefined             | Java Web Token Key                                                                |
| slurm_restd_host                            | 0.0.0.0               | Restapi host                                                                      |
| slurm_restd_port                            | 8911                  | Restapi port                                                                      |
| slurm_restd_user                            | Undefined             | User to run api as. Not slurm or root                                             |
| slurm_rpm_install			      | false                 | Install RPMs rather than building from source                                     |
| slurm_rpm_repo                              | ""                    | For RPM install, the path to a confir file for the yum repo hosting the RPMs      |
| slurm_scheduler_type                        | backfill              | Type of scheduler to uses (without "sched")                                       |
| slurm_script_directory                      | "/etc/slurm"          | Location to write prolog and epilog scripts for all nodes to access               |
| slurm_select_type                           | select/cons_res       | Select type                                                                       |
| slurm_select_type_parameters                | CR_Core_Memory        | Select type parameter                                                             |
| slurm_slurmd                                | false                 | Install as a slurm daemon (compute/login)                                         |
| slurm_state_save_location                   | /var/spool/slurmctld  | Location on controller for state data                                             |
| slurm_task_prolog_append                    | ""                    | Append to task prolog script                                                      |
| slurm_task_epilog_append                    | ""                    | Append to tas epilog script                                                       |
| slurm_uid                                   | 450                   | Slurm User ID                                                                     |
| slurm_user                                  | slurm                 | User to run slurmctld as                                                          |
| slurm_version                               | "21.08.5"             | Versino of slurm to download and install                                          |


To create the jwt key, use the following command:

    dd if=/dev/random of=/var/spool/slurmctld/jwt_hs256.key bs=32 count=1

Tags
----

List of tags you can use to control the execution of the role.

| Name                     | Description                                  |
|--------------------------|----------------------------------------------|
| slurm                    | Run all slurm role tasks                     |
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

Updating Slurm
--------------

Updates should not be taken lightly.  Before doing a version update of slurm,
set the `slurm_disable_restart` to prevent the role from restarting any
important services like slurmdbd and slurmctld.  These should be started
following the instructions provided by [Schedmd](https://slurm.schedmd.com/quickstart_admin.html#upgrade).
