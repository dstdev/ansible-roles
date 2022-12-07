Cgroups Exporter
=========
The cgroup_exporter produces metrics from cgroups.

[Cgroups Exporter](https://github.com/phpHavok/cgroups_exporter)

Requirements
------------

None

Role Variables
--------------

| Name                  | Default                  | Description                                    |
| --------------------- | ------------------------ | ---------------------------------------------- |
| executable_path       | "/usr/lib/node_exporter" | Path to executable location                    |
| uid                   | "440"                    | UID to use for consistancy                     |

Tags
--------------

None


Example Playbook
----------------

Including an example of how to use your role (for instance, with variables passed in as parameters) is always nice for users too:

      - hosts: servers
        roles:
          - cgroups_exporter
