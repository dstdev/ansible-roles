IBM Spectrum Exporter
=========
IBM Spectrum exporter is a Prometheus exporter to collect & export data from GPFS REST API.

[IBM Spectrum Exporter](https://github.com/topine/ibm-spectrum-exporter)

Requirements
------------

GPFS needs to be installed on the system for the exporter to run

Role Variables
--------------

| Name                  | Default                  | Description                                    |
| --------------------- | ------------------------ | ---------------------------------------------- |
| exporter_version      | "0.0.3"                  | Version to download                            |
| executable_path       | "/usr/lib/node_exporter" | Path to executable location                    |
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

      - hosts: servers
        roles:
          - prometheus_ibm_exporter
