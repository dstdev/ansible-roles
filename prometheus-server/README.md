prometheus-server
=========

Install prometheus-server with ansible. 

Requirements
------------

Has been tested in centos 7
ansible [core 2.12.3]
python version = 3.9.10 (main, Jan 15 2022, 11:48:15) [Clang 12.0.0 (clang-1200.0.32.29)]
jinja version = 3.0.3

Role Variables
--------------

All variables which can be overridden are stored in defaults/main.yml file with default values.

A description of the settable variables for this role should go here, including any variables that are in defaults/main.yml, vars/main.yml, and any variables that can/should be set via parameters to the role. Any variables that are read from other roles and/or the global scope (ie. hostvars, group vars, etc.) should be mentioned here as well.

Dependencies
------------

A list of other roles hosted on Galaxy should go here, plus any details in regards to parameters that may need to be set for other roles, or variables that are used from other roles.

Example Playbook
----------------

Including an example of how to use your role (for instance, with variables passed in as parameters) is always nice for users too:

---
- hosts: all
  become: yes
  roles:
   - prometheus-server
     - ansible-prometheus
     - cloudalchemy.prometheus
  vars:
    prometheus_components:
      - prometheus
      - node_exporter
      - alertmanager

    alertmanager_slack_api_url: 'https://hooks.slack.com/services/API'
    prometheus_targets: '#alerts-testing'
      node:
      - targets:
        - localhost:9100
        - node01:9100
        - node02:9100
        labels:
          env: dev_nodes

License
-------

BSD

Author Information
------------------

DST
