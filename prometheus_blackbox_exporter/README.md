Blackbox Exporter
=========
The blackbox exporter allows blackbox probing of endpoints over HTTP, HTTPS, DNS, TCP, ICMP and gRPC

[Blackbox Exporter](https://github.com/prometheus/blackbox_exporter)

Requirements
------------

None 

Role Variables
--------------

| Name                  | Default                                                                         | Description                                    |
| --------------------- | ------------------------                                                  | ---------------------------------------------- |
| exporter_version      | "0.20.0"                                                                  | Version to download                            |
| executable_path       | "/var/lib/node_exporter"                                                  | Location to install executable                 |
| uid                   | "440"                                                                     | UID to use for consistancy                     |

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
          - prometheus_blackbox_exporter
```
