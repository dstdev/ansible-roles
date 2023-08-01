# Loki Ansible Role
This Ansible role installs and configures Loki on Linux systems. It is designed to work on Ubuntu, CentOS, and Rocky 8.6 platforms, and can also be used in a Molecule testing environment that uses containers to deploy roles against.

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
The following variables can be defined to customize the installation and configuration of Loki:

## Loki Variables
- loki_version: Version of Loki to install (default: 2.7.4)
- loki_os: Operating system for Loki binary (default: linux)
- loki_arch: Architecture for Loki binary (default: amd64)
- loki_install_dir: Directory to install Loki binary (default: /usr/local/bin)
- loki_binary_name: Name of Loki binary file (default: loki-{{loki_version }}.{{ loki_os }}-{{ loki_arch }}.tar.gz)
- loki_config: Loki configuration settings (default: see defaults/main.yml)

## Dependencies
This role has no external dependencies.


## Configuration
This role includes default configurations for Loki. You can customize the configurations by editing the variables in roles/loki/defaults/main.yml.

For more information on Loki configurations, please refer to the official documentation.

## License
This role is licensed under the MIT License. See the LICENSE file for details.

## Author Information
This role was created by Juliet Meza.