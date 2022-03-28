prometheus-server
=========

Install prometheus-server with ansible. 
It is optional to choose any of the following prometheus components to install:
- prometheus
- node_exporter
- alertmanager

Requirements
------------

Has been tested in centos 7 targets and the following ansible execution environments:
- ansible [core 2.12.3]
- python version = 3.9.10 (main, Jan 15 2022, 11:48:15) [Clang 12.0.0 (clang-1200.0.32.29)]
- jinja version = 3.0.3

Role Variables
--------------

All variables which can be overridden are stored in defaults/main.yml file with default values.

Dependencies
------------

A list of other roles hosted on Galaxy should go here, plus any details in regards to parameters that may need to be set for other roles, or variables that are used from other roles.

Example Playbook
----------------

Including an example of how to use your role (for instance, with variables passed in as parameters) is always nice for users too:
```yaml
---
- hosts: all
  become: yes
  roles:
    - prometheus-server
  vars:
    prometheus_components:
      - prometheus
      # - node_exporter # It can be replaced with an updated "prometheus_node_exporter" role
      - alertmanager

    alertmanager_slack_api_url: 'https://hooks.slack.com/services/API'
    alertmanager_slack_channel: '#alerts-testing'
    prometheus_targets:
      node:
      - targets:
        - localhost:9100
        - node01:9100
        - node02:9100
        labels:
          env: dev_nodes
```

License
-------

BSD

Author Information
------------------

DST
