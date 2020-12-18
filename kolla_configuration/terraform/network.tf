resource "openstack_networking_network_v2" "openstack_lab_external_network" {
  name      = "openstack-lab-external-network"
#  tenant_id = openstack_identity_project_v3.openstack_lab.id
  external  = true
  
  segments {
    physical_network = "physnet1"
    network_type     = "flat"
  }
}

resource "openstack_networking_subnet_v2" "openstack_lab_subnet_external" {
  name            = "openstack-lab_external-subnet"
#  tenant_id       = openstack_identity_project_v3.openstack_lab.id
  network_id      = openstack_networking_network_v2.openstack_lab_external_network.id
  enable_dhcp     = false
  
  allocation_pool {
    start = "192.168.121.5"
    end   = "192.168.121.10"
  } 
  cidr            = "192.168.121.0/24"
  gateway_ip      = "192.168.121.1"
  ip_version      = 4
}

resource "openstack_networking_network_v2" "openstack_lab_network" {
  name      = "openstack-lab-network"
#  tenant_id = openstack_identity_project_v3.openstack_lab.id
}

resource "openstack_networking_subnet_v2" "openstack_lab_subnet" {
  name            = "openstack-lab-subnet"
#  tenant_id       = openstack_identity_project_v3.openstack_lab.id
  network_id      = openstack_networking_network_v2.openstack_lab_network.id
  cidr            = "10.10.10.0/24"
  ip_version      = 4
}
