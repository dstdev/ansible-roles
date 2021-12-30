Role Name
=========

Role which installs and configures restic on the system.  This will target backups
to s3 and requires aws credentials be available.  It will also create a new command line wrapper
for restic called `drestic` which makes using the tool easier.

[Restic Documentation](https://restic.readthedocs.io)

Requirements
------------

Requires AWS credentials for backing up.  Can use an IAM role for s3 backups

Role Variables
--------------

    # defaults file for restic
    restic_s3_bucket: ""
    restic_s3_aws_id: ""
    restic_s3_aws_key: ""
    restic_password: ""
    restic_password_file_path: "/root/.restic"


Example Playbook
----------------

Including an example of how to use your role (for instance, with variables passed in as parameters) is always nice for users too:

    - hosts: servers
      roles:
         - restic

