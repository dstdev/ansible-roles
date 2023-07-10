Role Name
=========

Install and configure a ZFS Exporter

Requirements
------------

A mounted ZFS pool

Role Variables
--------------

| Name                              | Default Value         | Description                                                                       |
| ----                              | -----                 | -----------                                                                       |
| mounts                            | []                    | List of dictionaries defining the mount                                           |

Dependencies
------------

None

Example Playbook
----------------

Including an example of how to use your role (for instance, with variables passed in as parameters) is always nice for users too:

    - hosts: servers
      roles:
        - zfs_exporter

License
-------

BSD

Author Information
------------------

An optional section for the role authors to include contact information, or a website (HTML is not allowed).
