Role Name
=========

This role is used to install and configure [spack](spack.io).

Requirements
------------

Existing Lmod install configured by Bright Cluster Manager.

Role Variables
--------------

| Name                         | Default Value                        | Description                                                                                             |
| ----                         | -----                                | -----------                                                                                             |
| spack_repo                   | https://github.com/spack/spack.git   | Spack github repo                                                                                       |
| spack_root                   | /opt/spack                           | Location to install spack repository                                                                    |
| spack_version                | HEAD                                 | Git reference to pin to                                                                                 |
| spack_default_module_paths   | {{spack_root}}/share/spack/modules/  | List of default module paths                                                                            |
| spack_app_root               | "{{spack_root}}/opt/"                | Root directory to install applications                                                                  |
| spack_module_root            | "{{spack_root}}/share/spack/modules" | Module file root directory                                                                              |
| spack_scratch_dir            | /tmp                                 | Scratch directory use during compilation                                                                |
| spack_root_host              | false                                | If system is the root host (i.e. headnode) to install to images.  If true/yes, git repo is install here |
| spack_unuse_module_paths     | []                                   | Module paths to unuse, such as defaults from lmod install                                               |
| spack_default_modules        | ""                                   | Default modules to load                                                                                 |
| spack_prefix_lines           | []                                   | Line to add to top of profile scripts                                                                   |

Dependencies
------------

None

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
    edge-hpc-mgt-101 spack_root_host=true
