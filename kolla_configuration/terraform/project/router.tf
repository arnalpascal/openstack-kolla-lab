resource "openstack_networking_router_v2" "openstack_lab_router" {
  name                = "openstack-lab-router"
#  tenant_id           = data.openstack_identity_project_v3.openstack_lab.id
  external_network_id = openstack_networking_network_v2.openstack_lab_external_network.id
}

resource "openstack_networking_router_interface_v2" "openstack_lab_router_interface" {
  router_id = openstack_networking_router_v2.openstack_lab_router.id
  subnet_id = openstack_networking_subnet_v2.openstack_lab_subnet.id
}
