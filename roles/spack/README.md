Role Name
=========

A brief description of the role goes here.

Requirements
------------

Any pre-requisites that may not be covered by Ansible itself or the role should be mentioned here. For instance, if the role uses the EC2 module, it may be a good idea to mention in this section that the boto package is required.

Role Variables
--------------

A description of the settable variables for this role should go here, including any variables that are in defaults/main.yml, vars/main.yml, and any variables that can/should be set via parameters to the role. Any variables that are read from other roles and/or the global scope (ie. hostvars, group vars, etc.) should be mentioned here as well.

Dependencies
------------

A list of other roles hosted on Galaxy should go here, plus any details in regards to parameters that may need to be set for other roles, or variables that are used from other roles.

Example Playbook
----------------


Including an example of how to use your role (for instance, with variables passed in as parameters) is always nice for users too:

    - hosts: bright
      vars:
        spack_prefix_lines:
          - module unload DefaultModules
        spack_root: /edgehpc/apps/gb/spack
        spack_default_module_paths:
          - /edgehpc/modulefiles/sp/linux-centos7-x86_64/
          - /edgehpc/modulefiles/gb
        spack_app_root: /edgehpc/apps/sp
        spack_module_root: /edgehpc/modulesfiles/sp
        spack_scratch_dir: /local
        spack_root_only_module_paths:
          - /cm/local/modulefiles
          - /cm/shared/modulefiles
          - /usr/share/modulefiles
      roles:
        - role: spack

A headnode where a single install can be defined using the spack_headnode variable in an inventory file

    [headnode]
    edge-hpc-mgt-101 spack_headnode=true


License
-------

BSD

Author Information
------------------

An optional section for the role authors to include contact information, or a website (HTML is not allowed).

