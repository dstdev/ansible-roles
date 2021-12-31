Role Name
=========

Role to install and congure [traefik](traefik.io) docker container.

Requirements
------------

None

Role Variables
--------------

| Name | Default Value | Description |
| ---- | ----- | ----------- |
| traefik_data_dir | /etc/traefik | Data directory to install traefik configuration files and acme |
| traefik_admin_email | "akail@datainscience.com" | Admin email for service |
| traefik_enable_dashboard | no | To enable the dashboard at port 9180 |
| traefik_debug_level | "INFO" | Debug level for server|

Dependencies
------------

None

Example Playbook
----------------

    - hosts: servers
      roles:
         - traefik
