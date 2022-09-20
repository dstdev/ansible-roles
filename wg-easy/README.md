Role Name
=========

This role installs and configures wg-easy docker container for managing a VPN

Requirements
------------

Must run on a linux host with kernel 5.6+ as that includes the Wireguard kernel modules

Role Variables
--------------
| Variable                      | Default               | Description                               |
| ---                           | ---                   | ---                                       |
| wg_easy_data_dir              | /data/apps/wg_easy    | Data directory for config files           |
| wg_easy_image_version         | latest                | Docker image to use                       |
| wg_easy_host_ip               | 127.0.0.1             | External host ip                          |
| wg_easy_password              | "testing"             | Admin interface password                  |
| wg_easy_default_dns           | 8.8.8.8               | Default DNS to use                        |
| wg_easy_allowed_ips           | 0.0.0.0/0             | IP's the host is allowed to connect to    |
| wg_easy_default_address       | 10.3.2.x              | Default address range                     |
| wg_easy_traefik_enable        | true                  | Run behind traefik reverse proxy          |
| wg_easy_site_root             | vpn.datainscience.com | External DNS name                         |
| wg_easy_traefik_cert_resolver | letsencrypt           | Which traefik certificate resolver to use |

Dependencies
------------

Our traefik role to route the admin interface over a proper https connection.

Example Playbook
----------------

Including an example of how to use your role (for instance, with variables passed in as parameters) is always nice for users too:

    - hosts: servers
      roles:
        - wg-easy

License
-------

BSD

Author Information
------------------

An optional section for the role authors to include contact information, or a website (HTML is not allowed).
