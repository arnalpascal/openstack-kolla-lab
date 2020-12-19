resource "openstack_compute_instance_v2" "openstack_lab_webserver" {
  depends_on      = [ 
    openstack_networking_secgroup_rule_v2.secgroup_rule_ssh,
    openstack_networking_secgroup_rule_v2.secgroup_rule_icmp,
    openstack_networking_secgroup_rule_v2.secgroup_rule_web,
    openstack_networking_secgroup_rule_v2.secgroup_rule_web_tls,
    openstack_networking_subnet_v2.openstack_lab_subnet
    ]
  
  name            = "openstack-lab-webserver"
  image_id        = openstack_images_image_v2.centos.id
  flavor_id       = openstack_compute_flavor_v2.m1_small.id
  key_pair        = openstack_compute_keypair_v2.vagrant_keypair.id
  security_groups = [ 
    openstack_networking_secgroup_v2.secgroup_server.id,
    openstack_networking_secgroup_v2.secgroup_web_server.id
    ]

  user_data       = file("cloudinit/web_server.yaml") 

  network {
    uuid = openstack_networking_network_v2.openstack_lab_network.id
  }
}
