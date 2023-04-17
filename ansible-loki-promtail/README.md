# Loki and Promtail Ansible Role
This Ansible role installs and configures Loki and Promtail on Linux systems. It is designed to work on Ubuntu, CentOS, and Rocky 8.6 platforms, and can also be used in a Molecule testing environment that uses containers to deploy roles against.

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
The following variables can be defined to customize the installation and configuration of Loki and Promtail:

## Loki Variables
- loki_version: Version of Loki to install (default: 2.7.4)
- loki_os: Operating system for Loki binary (default: linux)
- loki_arch: Architecture for Loki binary (default: amd64)
- loki_install_dir: Directory to install Loki binary (default: /usr/local/bin)
- loki_binary_name: Name of Loki binary file (default: loki-{{loki_version }}.{{ loki_os }}-{{ loki_arch }}.tar.gz)
- loki_config: Loki configuration settings (default: see defaults/main.yml)

## Promtail Variables
- promtail_version: Version of Promtail to install (default: 2.7.4)
- promtail_os: Operating system for Promtail binary (default: linux)
- promtail_arch: Architecture for Promtail binary (default: amd64)
- promtail_install_dir: Directory to install Promtail binary (default: /usr/local/bin)
- promtail_binary_name: Name of Promtail binary file (default: promtail-{{ - promtail_version }}.{{ promtail_os }}-{{ promtail_arch }}.tar.gz)
- promtail_config: Promtail configuration settings (default: see defaults/main.yml)

## Dependencies
This role has no external dependencies.

## Example Playbook
Here's an example playbook for using this role:
```
- hosts: all
  become: true
  vars:
    loki_config:
      auth_enabled: true
      server:
        http_listen_port: 3100
        grpc_listen_port: 9095
      storage_config:
        boltdb_shipper:
          active_index_directory: /var/lib/loki/index
          cache_location: /var/lib/loki/cache
          cache_ttl: 24h
          shared_store: filesystem
        filesystem:
          directory: /var/lib/loki/chunks
      ingester:
        lifecycler:
          address: 127.0.0.1
          ring:
            kvstore:
              store: inmemory
            replication_factor: 1
          final_sleep: 0s
        chunk_idle_period: 5m
        max_chunk_age: 1h
        chunk_retain_period: 30m
        max_transfer_retries: 0
      schema_config:
        configs:
          - from: 2022-01-01
            store: boltdb-shipper
            object_store: filesystem
            schema: v11
            index:
              prefix: index_
              period: 24h
      server:
        http_listen_port: 3100
    promtail_config:
      server:
        http_listen_port: 9080
      positions:
        filename: /tmp/positions.yaml
      clients:
        - url: http://localhost:3100/loki/api/v1/push
          backoff
```

## Installation
To install this role, run the following command:

```
ansible-galaxy install your_username.loki-promtail-role
```
Replace your_username with your Ansible Galaxy username.

## Usage
To use this role in your Ansible playbooks, add the following to your playbook:

```
- name: Install and configure Loki
  hosts: loki_servers
  roles:
    - role: your_username.loki-promtail-role
      tags:
        - loki

- name: Install and configure Promtail
  hosts: promtail_servers
  roles:
    - role: your_username.loki-promtail-role
      tags:
        - promtail
```
Replace loki_servers and promtail_servers with the appropriate groups or hosts in your inventory.

## Configuration
This role includes default configurations for Loki and Promtail. You can customize the configurations by editing the variables in roles/loki/vars/main.yml and roles/promtail/vars/main.yml, respectively.

For more information on Loki and Promtail configurations, please refer to the official documentation.

## License
This role is licensed under the MIT License. See the LICENSE file for details.

## Author Information
This role was created by Juliet Meza.
