Role Name
=========

A role for installing fail2ban to manage ban ip's from logging back into 
the system after too many failed login attempts

Role Variables
--------------

    # defaults file for fail2ban
    fail2ban_data_dir: /etc/fail2ban
    fail2ban_dest_email: akail@datainscience.com
    # vault warden specific
    fail2ban_vaultwarden_log_path: ""
    # ssh path
    fail2ban_ssh_auth_log_path: "/var/log/auth.log"

The default variables should be left along for `fail2ban_data_dir` and `fail2ban_ssh_auth_log_path` as
those are normal for the system.  

If vaultwarden is needed, set the vaultwarden log path to wherever it is stored on the host


Example Playbook
----------------

Including an example of how to use your role (for instance, with variables passed in as parameters) is always nice for users too:

    - hosts: servers
      roles:
         - fail2ban
