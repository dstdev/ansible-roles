Role Name
=========

This role installs and configures the beegfs client

Requirements
------------

None

Role Variables
--------------

| Name | Default Value | Description |
| ---- | ----- | ----------- |
| beegfs_management_host | beegfs | hostname of beegfs server (?vip?) |
| beegfs_mount_point | /mnt/beegfs | Mount point on the file system which should be created, then mounted |


Example Playbook
----------------

Including an example of how to use your role (for instance, with variables passed in as parameters) is always nice for users too:

    - hosts: servers
      roles:
         - beegfs-client
