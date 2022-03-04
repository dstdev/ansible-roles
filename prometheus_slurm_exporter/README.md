Prometheus Slurm Exporter
=========
Prometheus collector and exporter for metrics extracted from the Slurm resource scheduling system.

[Prometheus Slurm Exporter](https://github.com/vpenso/prometheus-slurm-exporter)

Requirements
------------

None

Role Variables
--------------

* uid: The nodeusr uid; same user as the node_exporter
* slurm_bin_loc: binary location for the slurm tools (sacct, sinfo, etc)
* slurm_conf_loc: configuration file location for slurm

Example Playbook
----------------

Including an example of how to use your role (for instance, with variables passed in as parameters) is always nice for users too:

---
  - hosts: servers
    roles:
      - prometheus_slurm_exporter
