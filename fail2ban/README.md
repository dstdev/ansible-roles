Role Name
=========

A role for installing fail2ban to manage ban ip's from logging back into 
the system after too many failed login attempts

Role Variables
--------------

| Name | Default Value | Description |
| ---- | ----- | ----------- |
| fail2ban_data_dir | /etc/fail2ban | Directory where configuration files will be installed |
| fail2ban_dest_email | akail@datainscience.com | Email to sent alerts too |
| fail2ban_vaultwarden_log_path | "" | If vaultwarden is installed, point this to log file and it will enable the filter |
| fail2ban_ssh_auth_log_path | "/var/log/auth.log" | ssh log path, should not need to be changed.|


Example Playbook
----------------

Including an example of how to use your role (for instance, with variables passed in as parameters) is always nice for users too:

    - hosts: servers
      roles:
         - fail2ban
