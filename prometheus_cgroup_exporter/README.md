Cgroup Exporter
=========
The cgroup_exporter produces metrics from cgroups.

[Cgroup Exporter](https://github.com/treydock/cgroup_exporter)

Requirements
------------

None

Role Variables
--------------

| Name                  | Default                  | Description                                    |
| --------------------- | ------------------------ | ---------------------------------------------- |
| exporter_version      | "0.8.0"                  | Version to download                            |
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
          - prometheus_cgroup_exporter
