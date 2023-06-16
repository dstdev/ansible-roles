Role Name
=========

Postgresql server install that includes optional point-in-time-recovery settings

Requirements
------------

None

Role Variables
--------------

| Name                                | Default Value                     | Description                               |
|-------------------------------------|-----------------------------------|-------------------------------------------|
| common_dst_user_password            | None                              | Password whihc must be specified          |
| common_dst_user_id                  | 10000                             | uid for dst user                          |
| postgres_data_dir                   | /data/apps/postgres               | Main data directory                       |
| postgres_archive_dir                | /data/apps/archive                | Directory to put WAL and backups          |
| postgres_user_id                    | 999                               | Owner of directories                      |
| postgres_group_id                   | 999                               | Owner of directories                      |
| postgres_version                    | 14                                | Postgres container version                |
| postgres_user                       | postgres                          | Main postgres user                        |
| postgres_password                   |                                   | Password for main user                    |
| postgres_database                   | postgres                          | Default database                          |
| postgres_databases                  | []                                | List of dictionary for extra databases    |
| postgres_enable_pitr                | false                             | Enable point in time recovery             |
| postgres_container_name             | postgres                          | Docker container name                     |
| postgres_pitr_cron_rotation         | weekly                            | Special crontab name for rotating backups |
| postgres_pitr_cron_healthcheck_uuid | false                             | UUID from healthchecks.io                 |
| health_check_base_url               | https://health.datainscience.com' | Base URL if not already defined           |

Example extra databases:

```
postgres_databases:
  - name: dst_data
    user: dst
    password: "{{vault_datalake_dst_data_password}}"
```

Dependencies
------------

None

Example Playbook
----------------

    - hosts: servers
      roles:
         - common

