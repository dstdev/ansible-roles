Role Name
=========

This role is used to develop

Requirements
------------

Any pre-requisites that may not be covered by Ansible itself or the role should be mentioned here. For instance, if the role uses the EC2 module, it may be a good idea to mention in this section that the boto package is required.

Role Variables
--------------

Available variables are listed below, along with default values (see `defaults/main.yml`):

| Name | Default Value | Description |
| ---- | ----- | ----------- |
| docker_compose_definitions | Dictionary defining each compose stack |
| docker_compose_networks | Empty List | List of networks to create |


The `docker_compose_networks` variables is a list of all the docker networks that should exist on the system.  Each entry in the list is a dictionary with a single key `name`

    docker_compose_networks:
      - name: traefik_proxy

The `docker_compose_definitions` is also a list of definitions for each set of docker compose files.  It describes the data directories which should be created, an assert to verify the containers have started, and the docker compose definition.

The `data_dirs variable` is a list of dictionaries with the path to the directory, and the owner and group.  These directories will be created and permissions set if they do not exist.  `project_name` is passed to the docker compose ansible module.  `asserts` are used by the role to verify the container has started and takes the form "service_name.container_name". .  The `definitions` variable contains the full nested yaml for the dockercompose file.  It can usually take a 1-2-1 paste from a docker_compose file.

    docker_compose_definitions:
      - name: traefik
        data_dirs:
          - path: /data/apps/traefik2
            owner: root
            group: root
        project_name: traefik
        asserts:
          - "traefik.traefik"
        definitions:
          version: '2'
          services:
            traefik:
              image: 'traefik:v2.2'
              restart: unless-stopped
              container_name: traefik
              volumes:
                - /var/run/docker.sock:/var/run/docker.sock
              networks:
                - traefik_proxy
              ports:
                - "80:80"
                - "443:443"
                - "9180:8080"


Dependencies
------------

- DST Internal docker role

Example Playbook
----------------

Including an example of how to use your role (for instance, with variables passed in as parameters) is always nice for users too:

    - hosts: servers
      roles:
         - docker-compose

