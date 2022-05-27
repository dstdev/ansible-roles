VirtualGL
=========

This role installs VirtualGL v3.0 and configures it to use the new EGL backend for virtual rendering.

[VirtualGL](https://virtualgl.org/)

Requirements
------------

GPU Node

Role Variables
--------------

| Name                  | Default                                                                         | Description                                    |
| --------------------- | ------------------------------------------------------------------------------- | ---------------------------------------------- |
| download              | "https://iweb.dl.sourceforge.net/project/virtualgl/3.0/VirtualGL-3.0.x86_64.rpm" | Download link to the rpm package provided by VirtualGL | 

Tags
--------------

None

Testing
--------------

`molecule test`

Example Playbook
----------------

Including an example of how to use your role (for instance, with variables passed in as parameters) is always nice for users too:

```
  - hosts: gpu_servers
    roles:
      - virtualgl
```
