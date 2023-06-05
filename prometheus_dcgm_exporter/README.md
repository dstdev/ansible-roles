DCGM Exporter
=========
It exposes GPU metrics exporter for Prometheus leveraging NVIDIA DCGM.

[DCGM Exporter](https://github.com/NVIDIA/dcgm-exporter)

Requirements
------------

NVIDIA GPUs

Role Variables
--------------

| Name                  | Default                  | Description                                    |
| --------------------- | ------------------------ | ---------------------------------------------- |
| executable_path       | "/var/lib/node_exporter" | Location to install executable                 |
| uid                   | "440"                    | UID to use for consistancy                     |

Tags
--------------
None

Testing
--------------

`molecule test`

Example Playbook
----------------

Including an example of how to use your role (for instance, with variables passed in as parameters) is always nice for users too:
```
      - hosts: servers
        roles:
          - prometheus_dcgm_exporter
```
