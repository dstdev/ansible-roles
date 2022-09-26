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

Prior to deployment the 'security-2fa/files/access-local.conf.2fasso' file needs to be updated with individual IPs or an IP range of your whitelisted systems.
Whitelisted systems will not be required to complete 2FA for ssh connections.

Description
------------
This role backs up the existing existing ssh configurations, and deployes prewritten configuration files to enable 2FA. 
The prewritten files are located in security-2fa/files/
Below are the config files that are backed up and replaced.

/etc/pam.d/sshd 
/etc/ssh/sshd_config 
/etc/security/access-local.conf 

Additionally is the files below do not exist, a default copy will be deployed by this role.
/etc/pam.d/password-auth 
/etc/pam.d/postlogin 
	
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
Kalil Hasney
HPC Cyber Security Engineer