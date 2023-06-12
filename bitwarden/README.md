Role Name
=========

Installs Bitwarden server

Requirements
------------

None

Role Variables
--------------
| Name                      | Default Value          | Description                         |
| ----                      | -------------          | -----------                         |
| bitwarden_data_dir        | /data/apps/vaultwarden | Data directory                      |
| bitwarden_site_root       | bw.datainscience.com   | URL Hostname                        |
| bitwarden_traefik_enable  | no                     | Enable traefik proxy service?       |
| bitwarden_traefik_network | traefik_proxy          | Which docker network is traefik on? |
| bitwarden_image_version   | latest                 | Which docker image to use           |
| bitwarden_admin_token     |                        | Defined admin token                 |


Dependencies
------------

Optionally can use Traefik for proxy.

Example Playbook
----------------

Including an example of how to use your role (for instance, with variables passed in as parameters) is always nice for users too:

    - hosts: eng-web-01
      vars:
        bitwarden_admin_token: "Something large"
        bitwarden_traefik_enable: false
        bitwarden_image_version: "1.28.1"
      roles:
        - bitwarden
