resource "openstack_identity_project_v3" "openstack_lab" {
  name        = "openstack-lab"
  description = "Openstack lab"
}

resource "openstack_compute_flavor_access_v2" "m1_micro_openstack_lab" {
  tenant_id = openstack_identity_project_v3.openstack_lab.id
  flavor_id = openstack_compute_flavor_v2.m1_micro.id
}

resource "openstack_compute_flavor_access_v2" "m1_tiny_openstack_lab" {
  tenant_id = openstack_identity_project_v3.openstack_lab.id
  flavor_id = openstack_compute_flavor_v2.m1_tiny.id
}

resource "openstack_compute_flavor_access_v2" "m1_small_openstack_lab" {
  tenant_id = openstack_identity_project_v3.openstack_lab.id
  flavor_id = openstack_compute_flavor_v2.m1_small.id
}

resource "openstack_compute_flavor_access_v2" "m1_medium_openstack_lab" {
  tenant_id = openstack_identity_project_v3.openstack_lab.id
  flavor_id = openstack_compute_flavor_v2.m1_medium.id
}

