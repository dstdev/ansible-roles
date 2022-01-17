Role Name
=========

This is a resuesable role for creating a cron job and a corresponding health check in 
our managed healthchecks.io instance

Requirements
------------

None


Role Variables
--------------

Default variables:

| Name                        | Default Value                      | Description                             |
|-----------------------------|------------------------------------|-----------------------------------------|
| common_dst_user_password    | None                               | Password whihc must be specified        |
| common_dst_user_id          | 10000                              | uid for dst user                        |
| healthcheck_url             | "https://health.datainscience.com" | Healthchecks server root                |
| healthcheck_project_api_key | Undefined                          | API Key for the project (Required)      |
| healthcheck_cron_name       | Undefined                          | Unique name for the cron job (Required) |
| healthcheck_minute          | '*'                                | Cron minutes field                      |
| healthcheck_hour            | '*'                                | Cron hour field                         |
| healthcheck_day             | '*'                                | Cron hour field                         |
| healthcheck_month           | '*'                                | Cron hour field                         |
| healthcheck_weekday         | '*'                                | Cron hour field                         |
| healthcheck_grace           | "60"                               | Grace period in seconds                 |
| healthcheck_tags            | []                                 | List of tags to apply                   |
| healthcheck_job             | Undefined                          | The cron job to run                     |


Dependencies
------------

The custom community.healthchecksio collection in the dstdev github organization.  This is customized to point to our healthchecksio server instead.

Example Playbook
----------------

Including an example of how to use your role (for instance, with variables passed in as parameters) is always nice for users too:

    - hosts: servers
      roles:
         - { role: username.rolename, x: 42 }

    ---
    - hosts: eng-web-01
      tasks:
        - name: Create a test check
          include_role:
            name: healthcheck
          vars:
            healthcheck_cron_name: Testing 1
            healthcheck_description: Testing 1
            healthcheck_job: ls /
            healthcheck_tags:
              - backup
              - other
    
        - name: Create a test check 2
          include_role:
            name: healthcheck
          vars:
            healthcheck_cron_name: Testing 2
            healthcheck_description: Testing 2
            healthcheck_job: ls /home
            healthcheck_tags:
              - backup

License
-------

BSD
