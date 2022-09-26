Security-2FA
=========

Install google authenticator and cofigure local two factor authentication via PAM and SSHD. 

Requirements
------------

Designed for RHEL or Debian based linux distros.
Hosts will need a pkg repo configured that contains google auth.

Role Variables
--------------

There are no configurable variables within the 2FA Role.

Prior to deployment the 'security-2fa/files/access-local.conf.2fasso' file needs to be updated with individual IPs or an IP range of you whitelisted systems.
Whitelisted systems will not be required to complete 2FA for ssh connections.

Dependencies
------------



Example Playbook
----------------

Including an example of how to use your role (for instance, with variables passed in as parameters) is always nice for users too:

    - hosts: servers
      roles:
         - { role: username.rolename, x: 42 }

License
-------

BSD

Author Information
------------------

An optional section for the role authors to include contact information, or a website (HTML is not allowed).
