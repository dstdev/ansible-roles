grafana-server
=========

- Install grafana-server with ansible. 
- Setup the default data source
- Install custom dashboard from json files.

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

The following collections are required:
  - community.grafana

Example Playbook
----------------

Including an example of how to use your role (for instance, with variables passed in as parameters) is always nice for users too:

    - hosts: servers
      roles:
         - grafana-server

License
-------

BSD

Author Information
------------------

An optional section for the role authors to include contact information, or a website (HTML is not allowed).
