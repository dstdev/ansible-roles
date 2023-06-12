Role Name
=========

Minor configurations for EC2 nodes on AWS.  

Will perform the following actions:

* Set the hostname to be preserved on a reboot

Requirements
------------

None

Role Variables
--------------

None

Dependencies
------------

None

Example Playbook
----------------

    - hosts: servers
      roles:
        - aws-cloud-config
