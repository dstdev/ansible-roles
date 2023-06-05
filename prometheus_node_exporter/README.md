Node Exporter
=========
Node exporter is a Prometheus exporter to collect & export data about the node.

[Node Exporter](https://github.com/prometheus/node_exporter)

Requirements
------------

None 

Role Variables
--------------

| Name                  | Default                  | Description                                    |
| --------------------- | ------------------------ | ---------------------------------------------- |
| node_exporter_version | "1.3.1"                  | Version to download                            |
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

      - hosts: servers
        roles:
          - prometheus_node_exporter
