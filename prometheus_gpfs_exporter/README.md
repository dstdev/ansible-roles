GPFS Node Exporter
=========
GPFS exporter is a Prometheus exporter to collect & export data from mmtools provided.

[GPFS Exporter](https://github.com/treydock/gpfs_exporter)

Requirements
------------

GPFS needs to be installed on the system for gpfs_exporter to run

Role Variables
--------------

| Name                  | Default                  | Description                                    |
| --------------------- | ------------------------ | ---------------------------------------------- |
| gpfs_exporter_version | "2.0.0"                  | Version to download                            |
| executable_path       | "/usr/lib/node_exporter" | Path to executable location                    |
| uid                   | "771"                    | UID to use for consistancy                     |

Tags
--------------

None

Testing
--------------

`molecule test`

Example Playbook
----------------

Including an example of how to use your role (for instance, with variables passed in as parameters) is always nice for users too:

      - hosts: servers
        roles:
          - prometheus_gpfs_exporter
