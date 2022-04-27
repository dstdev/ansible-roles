GPFS Node Exporter
=========
IBM Spectrum Exporter is a Prometheus exporter to collect & export data from IBM Spectrum.

[IBM Spectrum Exporter](https://github.com/topine/ibm-spectrum-exporter)

Requirements
------------

None

Role Variables
--------------

* gpfs_exporter_link: link path to the downloads section for exporter plugin
* gpfs_exporter_version: Particular version you wish to download
* executable_path: location in which to install exporter
* uid: The nodeusr uid

Example Playbook
----------------

Including an example of how to use your role (for instance, with variables passed in as parameters) is always nice for users too:

---
  - hosts: servers
    roles:
      - prometheus_gpfs_exporter
