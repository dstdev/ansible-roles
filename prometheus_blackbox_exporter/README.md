Prometheus Node Exporter
=========

Role which installs the prometheus blackbox_exporter module that allows blackbox probing of endpoints over HTTP, HTTPS, DNS, TCP and ICMP.

[Prometheus Node Exporter](https://github.com/prometheus/blackbox_exporter)

Requirements
------------

None

Role Variables
--------------

None

Example Playbook
----------------

Including an example of how to use your role (for instance, with variables passed in as parameters) is always nice for users too:

  - hosts: servers
    roles:
      - prometheus_blackbox_exporter
