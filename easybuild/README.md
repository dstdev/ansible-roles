Role Name
=========

This role installs easybuild which can be used to create software stacks on a
cluster.

Requirements
------------

None

Role Variables
--------------

| Name                  | Devault Value  | Description                   |
| ---                   | ---            | ---                           |
| easybuild_install_dir | /opt/easybuild | Location to install easybuild |

Dependencies
------------

None

Example Playbook
----------------

Including an example of how to use your role (for instance, with variables passed in as parameters) is always nice for users too:

    - hosts: servers
      roles:
        - easybuild
