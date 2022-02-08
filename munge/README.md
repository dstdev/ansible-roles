Role Name
=========

Role to install munge on the server and set unified munge key

Requirements
------------

None

Role Variables
--------------


| Name      | Default Value | Description                    |
| ----      | -----         | -----------                    |
| munge_key | Required      | Contents of the munge key file |


Dependencies
------------

None

Example Playbook
----------------


    - hosts: slurms_servers
      roles:
        - munge

License
-------

BSD

Author Information
------------------

An optional section for the role authors to include contact information, or a website (HTML is not allowed).
