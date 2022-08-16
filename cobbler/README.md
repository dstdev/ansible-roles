Role Name
=========

This role will do a base install and configuration of Cobbler, a provisioning tool.  It will only handle
the installation of cobbler, its dependencies, and configuration files. This will not handle the deeper configuration of adding distro and devices.

Requirements
------------

Rocky 8 Linux installations only

Role Variables
--------------
| Name                             | Devault Value  | Description                             |
| cobbler_root_password            | Required       | Unsalted root password                  |
| cobbler_server                   | 127.0.0.1      | External ip                             |
| cobbler_next_server_v4           | 127.0.0.1      | External ip                             |
| cobbler_dhcp_subnet              | 192.168.1.0    | DHCP Network subnet                     |
| cobbler_dhcp_netmask             | 255.255.255.0  | Netmask for dhcp                        |
| cobbler_dhcp_routers             | 192.168.1.5    | DHCP Gateway                            |
| cobbler_dhcp_dns                 | 192.168.1.1    | Default DNS Server                      |
| cobbler_dhcp_dynamic_bootp_start | 192.168.1.100  | Dynamic IP range start                  |
| cobbler_dhcp_dynamic_bootp_end   | 192.168.1.254  | Dynamic IP range end                    |
| cobbler_webroot                  | "/opt/cobbler" | Location of webroot data (for symlink)  |
| cobbler_manage_dhcp              | "true"         | Whether to manage dhcp here (dangerous) |

Dependencies
------------

None

Example Playbook
----------------

Including an example of how to use your role (for instance, with variables passed in as parameters) is always nice for users too:

    - name: Converge
      hosts: all
      gather_facts: True
      vars:
        cobbler_root_password: testing
        cobbler_dhcp_netmask: 255.255.0.0
        cobbler_dhcp_subnet: "192.168.1.0"
        cobbler_dhcp_routers: "192.168.1.1"
        cobbler_dhcp_dns: "192.168.1.1"
        cobbler_dhcp_dynamic_bootp_start: "192.168.1.100"
        cobbler_dhcp_dynamic_bootp_end: "192.168.1.254"
        cobbler_server: "192.168.1.20"
        cobbler_next_server_v4: "192.168.1.20"
      roles:
        - cobbler
