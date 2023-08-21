# Promtail Ansible Role
This Ansible role installs and configures Promtail on Linux systems. It is designed to work on Ubuntu, CentOS, and Rocky 8.6 platforms, and can also be used in a Molecule testing environment that uses containers to deploy roles against.

## Prerequisites
To use this role, you'll need:
- Ansible 2.9 or later
- Access to the target systems via SSH.

## Supported Platforms
This role has been tested on the following platforms:
- Ubuntu 18.04 (bionic)
- Ubuntu 20.04 (focal)
- CentOS 7
- CentOS 8
- Rocky 8.6

## Role Variables
The following variables can be defined to customize the installation and configuration of Promtail:

## Promtail Variables
- promtail_version: Version of Promtail to install (default: 2.7.4)
- promtail_os: Operating system for Promtail binary (default: linux)
- promtail_arch: Architecture for Promtail binary (default: amd64)
- promtail_install_dir: Directory to install Promtail binary (default: /usr/local/bin)
- promtail_binary_name: Name of Promtail binary file (default: promtail-{{ - promtail_version }}.{{ promtail_os }}-{{ promtail_arch }}.tar.gz)
- promtail_config: Promtail configuration settings (default: see defaults/main.yml)


## Dependencies
This role has no external dependencies.


## Configuration
This role includes default configurations for Promtail. You can customize the configurations by editing the variables in roles/promtail/defaults/main.yml.

For more information on Promtail configurations, please refer to the official documentation.

## License
This role is licensed under the MIT License. See the LICENSE file for details.

## Author Information
This role was created by Juliet Meza.