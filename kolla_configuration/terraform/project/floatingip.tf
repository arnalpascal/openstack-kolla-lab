resource "openstack_networking_floatingip_v2" "openstack_lab_floatip_1" {
  depends_on = [ openstack_networking_subnet_v2.openstack_lab_subnet_external ]

  pool      = openstack_networking_network_v2.openstack_lab_external_network.name
#  tenant_id = data.openstack_identity_project_v3.openstack_lab.id
}

resource "openstack_compute_floatingip_associate_v2" "openstack_lab_webserver_floatip" {
  floating_ip = openstack_networking_floatingip_v2.openstack_lab_floatip_1.address
  instance_id = openstack_compute_instance_v2.openstack_lab_webserver.id
}

resource "openstack_networking_floatingip_v2" "openstack_lab_floatip_2" {
  depends_on = [ openstack_networking_subnet_v2.openstack_lab_subnet_external ]

  pool      = openstack_networking_network_v2.openstack_lab_external_network.name
#  tenant_id = data.openstack_identity_project_v3.openstack_lab.id
}

resource "openstack_compute_floatingip_associate_v2" "openstack_lab_cirros_floatip" {
  floating_ip = openstack_networking_floatingip_v2.openstack_lab_floatip_2.address
  instance_id = openstack_compute_instance_v2.openstack_lab_cirros.id
}
