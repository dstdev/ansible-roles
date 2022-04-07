Prometheus DCGM Exporter
=========

This repository contains the DCGM-Exporter project. It exposes GPU metrics exporter for Prometheus leveraging NVIDIA DCGM.

[Prometheus DCGM Exporter](https://github.com/NVIDIA/dcgm-exporter)

Requirements
------------

None

Role Variables
--------------

* uid: The nodeusr uid
* executable_path: The full path to the executable

Example Playbook
----------------

Including an example of how to use your role (for instance, with variables passed in as parameters) is always nice for users too:

---
  - hosts: servers
    roles:
      - prometheus_dcgm_exporter
