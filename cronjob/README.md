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

| Name                        | Default Value                      | Description                                    |
|-----------------------------|------------------------------------|------------------------------------------------|
| cronjob_healthcheck_url     | "https://health.datainscience.com" | Healthchecks server root                       |
| healthcheck_project_api_key | Undefined                          | API Key for the project (Required)             |
| cronjob_cron_name           | Undefined                          | Unique name for the cron job (Required)        |
| cronjob_description         | Undefined                          | Longer description for the cron job (Required) |
| cronjob_minute              | '*'                                | Cron minutes field                             |
| cronjob_hour                | '*'                                | Cron hour field                                |
| cronjob_day                 | '*'                                | Cron hour field                                |
| cronjob_month               | '*'                                | Cron hour field                                |
| cronjob_weekday             | '*'                                | Cron hour field                                |
| cronjob_grace               | "60"                               | Grace period in seconds                        |
| cronjob_tags                | []                                 | List of tags to apply                          |
| cronjob_job                 | Undefined                          | The cron job to run                            |


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
            name: cronjob
          vars:
            cronjob_cron_name: Testing 1
            cronjob_description: Testing 1
            cronjob_job: ls /
            cronjob_tags:
              - backup
              - other
    
        - name: Create a test check 2
          include_role:
            name: cronjob
          vars:
            cronjob_cron_name: Testing 2
            cronjob_description: Testing 2
            cronjob_job: ls /home
            cronjob_tags:
              - backup

License
-------

BSD
