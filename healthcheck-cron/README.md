Role Name
=========

This role is used for creating cron jobs which update a [healthchecks.io](healthchecks.io) checks which can be used
for a hearbeat system.

Requirements
------------

An existing healthchecks server with existing checks and preferaably an integration to notify of alerts.

Role Variables
--------------

    # defaults file for healtcheck-cron
    health_check_base_url: https://health.datainscience.com
    health_check_cron: []

`health_check_cron` variable is a list of dictionaries describing the cron job

Full Example

    health_check_cron:
      - name: command ot run
        minute: 0
        hour: 5
        day: 0
        weekday: 0
        command: docker image prune -f -a
        id: a7e6e69a-d8e2-4e9d-9d08-2a0c17322f2e


* minute: default '0'
* hour: default '*'
* day: default '*'
* weekday: default '*'
* id: healtcheck uuid

Example Playbook
----------------

Including an example of how to use your role (for instance, with variables passed in as parameters) is always nice for users too:

    - hosts: servers
      roles:
         - healthchecks_cron

License
-------

BSD

Author Information
------------------

An optional section for the role authors to include contact information, or a website (HTML is not allowed).
