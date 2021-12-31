Role Name
=========

A brief description of the role goes here.

Requirements
------------

Any pre-requisites that may not be covered by Ansible itself or the role should be mentioned here. For instance, if the role uses the EC2 module, it may be a good idea to mention in this section that the boto package is required.

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
