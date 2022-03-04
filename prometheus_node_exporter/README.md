Prometheus Node Exporter
=========

Role which installs the prometheus node_exporter module for hardware and OS metrics exposed by *NIX kernels, written in Go with pluggable metric collectors.

[Prometheus Node Exporter](https://github.com/prometheus/node_exporter)

Requirements
------------

None

Role Variables
--------------

* node_exporter_link: link path to the downloads section for node_exporter plugin
* node_exporter_version: Particular version you wish to download
* uid: The nodeusr uid

Example Playbook
----------------

Including an example of how to use your role (for instance, with variables passed in as parameters) is always nice for users too:

---
  - hosts: servers
    roles:
      - prometheus_node_exporter
