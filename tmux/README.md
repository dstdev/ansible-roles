Role Name
=========

This role installs and configures tmux for the root user of a system and also for other users who would like it.

Requirements
------------

None

Role Variables
--------------

| Name       | Default Value | Description                                |
| ----       | -----         | -----------                                |
| tmux_users | []            | List of user names to run the role against |

Dependencies
------------

None

Example Playbook
----------------

Including an example of how to use your role (for instance, with variables passed in as parameters) is always nice for users too:

    - hosts: servers
      roles:
      - tmux

License
-------

BSD
