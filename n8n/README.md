Role Name
=========

Role to install and configure n8n.io automation platform

Requirements
------------

Role Variables
--------------

| Name                             | Default Value | Description                               |
| ----                             | -----         | -----------                               |
| mounts                           | []            | List of dictionaries defining the mount   |

Tags
----

List of tags you can use to control the execution of the role.

| Name             | Description                                  |
| ----             | -----------                                  |
| slurm_controller | Install and configure slurmctld and slurmdbd |

Dependencies
------------

A list of other roles hosted on Galaxy should go here, plus any details in regards to parameters that may need to be set for other roles, or variables that are used from other roles.

Example Playbook
----------------

Including an example of how to use your role (for instance, with variables passed in as parameters) is always nice for users too:

    - hosts: servers
      roles:
         - { role: username.rolename, x: 42 }

