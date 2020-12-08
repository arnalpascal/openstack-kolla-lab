Role Name
=========

Install kolla- ansible and its dependencies.

Requirements
------------

Deploy kolla-ansible on Centos 8.

Role Variables
--------------

No variables needed, but you can override kolla version with {{ kolla_ansible_version }}, the user of kolla-ansible {{ kolla_ansible_user }}

Dependencies
------------

No dependency.

Example Playbook
----------------

    - hosts: openstack-kolla
      roles:
         - install-kolla

