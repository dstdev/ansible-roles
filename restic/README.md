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

| Name | Default Value | Description |
| ---- | ----- | ----------- |
| restic_s3_bucket| Required | s3 bucket name |
| restic_s3_aws_id| Required | AWS Credential ID |
| restic_s3_aws_key| Required |  AWS Credential Key |
| restic_password| Required | Password to encrypt restic snapshots |
| restic_password_file_path | "/root/.restic" | Default location to install restic password file|


Example Playbook
----------------

Including an example of how to use your role (for instance, with variables passed in as parameters) is always nice for users too:

    - hosts: servers
      roles:
         - restic

