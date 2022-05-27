Slurm Exporter
=========
Prometheus collector and exporter for metrics extracted from the Slurm resource scheduling system.

[Slurm Exporter](https://github.com/vpenso/prometheus-slurm-exporter)

Requirements
------------
Slurm must be installed to collect metrics

Role Variables
--------------
slurm_bin_loc: "/cm/shared/apps/slurm/current/bin/"
slurm_conf_loc: "/cm/shared/apps/slurm/var/etc/slurm/slurm.conf" 


| Name                  | Default                                                                   | Description                                    |
| --------------------- | ------------------------------------------------------------------------- | ---------------------------------------------- |
| slurm_bin_loc         | "/cm/shared/apps/slurm/current/bin"                                       | path for SLURM env variable                    |
| slurm_conf_lob        | "/cm/shared/apps/slurm/var/etc/slurm/slurm.conf"                          | $SLURM_CONF                                    |
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

      - hosts: servers
        roles:
          - prometheus_slurm_exporter
