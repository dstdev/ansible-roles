TurboVNC
=========

This role installs TurboVNC v3.0

[TurboVNC](https://turbovnc.org/)

Requirements
------------

GPU Node

Role Variables
--------------

| Name                  | Default                                                                         | Description                                    |
| --------------------- | ------------------------------------------------------------------------------- | ---------------------------------------------- |
| download              | "https://cfhcable.dl.sourceforge.net/project/turbovnc/3.0/turbovnc-3.0.x86_64.rpm" | Download link to the rpm package provided by TurboVNC | 

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
      - turbovnc
```
