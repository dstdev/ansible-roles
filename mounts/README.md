Role Name
=========

Creates a mount path and mounts a filesystem.  Optionally, may format the filesystem if not already so.

Requirements
------------

None

Role Variables
--------------

All variables are listed below, along with the default values (see `defaults/main.yml`):

| Name | Default Value | Description |
| ---- | ----- | ----------- |
| mounts | [] | List of dictionaries defining the mount

The `mounts` variable is a list of dictionaries.  Each items defines the `path`, `fstype`, `opts`, and `src`.  And should mimic the options found in `/etc/fstab`. 

Item definition:

| Name | Default Value | Description |
| ---- | ----- | ----------- |
| path | Required | Path to mount filesystem |
| fstype | Required | Filesystem type|
| opts | Required | Filesystem options |
| src | Required | Mount source  |
| mkfs | no | Whether to run mkfs if the format doesn't match fstype |



If `mkfs` is set to 'yes', then a mkfs command will be run if it is a formattable filesystem and it doesn't match the existing filesystem.  This is a dangerous operation and should only be used with extreme care. It must have a valid filesystem type, and the src must be  a local block device.

- btrfs
- ext2
- ext3
- ext4
- ext4dev
- f2fs
- lvm
- ocfs2
- reiserfs
- xfs
- vfat
- swap
- ufs

Example:

    mounts:
      - path: /mnt/something
        fstype: nfs
        opts: defaults
        src: 192.168.1.1:/something
        mkfs: no
Dependencies
------------

None

Example Playbook
----------------

Including an example of how to use your role (for instance, with variables passed in as parameters) is always nice for users too:

    - hosts: servers
      roles:
         - mounts
