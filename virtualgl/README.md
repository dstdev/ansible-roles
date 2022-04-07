VirtualGL
=========

This role installs and configures X11 to work with VirtualGL

[VirtualGL](https://virtualgl.org/)

Requirements
------------

This will only work on a node with a GPU of some sort

Role Variables
--------------

busid: The PCI bus id found from nvidia-xconfig --query-gpu
download: The full path to the latest published rpm file by VirtualGL team. Update as needed.

Example Playbook
----------------

Including an example of how to use your role (for instance, with variables passed in as parameters) is always nice for users too:

---
  - hosts: gpu_servers
    roles:
      - virtualgl
