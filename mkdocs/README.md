mkdocs
=========

Role in order to update our user facing documentation built around MkDocs

Requirements
------------

Must have MkDocs installed, as well as an apache web server set up.

Example Playbook
----------------

---
- name: "docs builder"
  hosts: localhost
  connection: local
  tasks:
  
    - name: "docs git update"
      git:
        repo: git@github.com:dstdev/slu-cluster-docs.git
        dest: ../files

    - name: "docs build command"
      ansible.builtin.shell: mkdocs build -f ../files/mkdocs.yml

    - name: "move new site dir to apache"
      ansible.builtin.shell: mv -f ../files/site var/www/html/www.docs 