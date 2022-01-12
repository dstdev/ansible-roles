Role Name
=========

Postgresql server install

Requirements
------------

None

Role Variables
--------------

| Name | Default Value | Description |
| ---- | ----- | ----------- |
| common_dst_user_password | None | Password whihc must be specified |
| common_dst_user_id | 10000 | uid for dst user |

Dependencies
------------

None

Example Playbook
----------------

    - hosts: servers
      roles:
         - common

