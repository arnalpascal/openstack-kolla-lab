resource "openstack_networking_secgroup_v2" "secgroup_server" {
  name        = "secgroup_server"
#  tenant_id   = openstack_identity_project_v3.openstack_lab.id
  description = "Open ssh port and icmp"
}

resource "openstack_networking_secgroup_rule_v2" "secgroup_rule_ssh" {
#  tenant_id         = openstack_identity_project_v3.openstack_lab.id
  direction         = "ingress"
  ethertype         = "IPv4"
  protocol          = "tcp"
  port_range_min    = 22
  port_range_max    = 22
  remote_ip_prefix  = "0.0.0.0/0"
  security_group_id = openstack_networking_secgroup_v2.secgroup_server.id
}

resource "openstack_networking_secgroup_rule_v2" "secgroup_rule_icmp" {
#  tenant_id         = openstack_identity_project_v3.openstack_lab.id
  direction         = "ingress"
  ethertype         = "IPv4"
  protocol          = "icmp"
  security_group_id = openstack_networking_secgroup_v2.secgroup_server.id
}

resource "openstack_networking_secgroup_v2" "secgroup_web_server" {
  name        = "secgroup_web_server"
#  tenant_id   = openstack_identity_project_v3.openstack_lab.id
  description = "Open http and https default port"
}

resource "openstack_networking_secgroup_rule_v2" "secgroup_rule_web" {
#  tenant_id         = openstack_identity_project_v3.openstack_lab.id
  direction         = "ingress"
  ethertype         = "IPv4"
  protocol          = "tcp"
  port_range_min    = 80
  port_range_max    = 80
  remote_ip_prefix  = "0.0.0.0/0"
  security_group_id = openstack_networking_secgroup_v2.secgroup_web_server.id
}

resource "openstack_networking_secgroup_rule_v2" "secgroup_rule_web_tls" {
#  tenant_id         = openstack_identity_project_v3.openstack_lab.id
  direction         = "ingress"
  ethertype         = "IPv4"
  protocol          = "tcp"
  port_range_min    = 443
  port_range_max    = 443
  remote_ip_prefix  = "0.0.0.0/0"
  security_group_id = openstack_networking_secgroup_v2.secgroup_web_server.id
}
