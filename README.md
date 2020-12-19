# openstack-kolla-lab

This is a lab of openstack, deploy with kolla-ansible as GitOps.

Start the lab with :
1. Start VMs with `vagrant up --no-parallel`
1. Deploy Openstack with :
   1. `cd /etc/kolla`
   1. check connection `ansible -i inventory.yaml all -m ping`
   1. deploy Openstack `kolla-ansible -i inventory.yaml deploy`
1. Generate ENV with `kolla-ansible post-deploy`
1. Source ENV `. admin-openrc.sh`
1. Deploy Infra with terraform
   1. `terraform init`
   1. `terraform validate`
   1. `terraform plan -out=tfplan`
   1. `terraform apply tfplan`

Enjoy !!!
