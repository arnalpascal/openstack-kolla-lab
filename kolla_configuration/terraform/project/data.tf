data "openstack_identity_project_v3" "openstack_lab" {
  name = "openstack-lab"
}

data "openstack_compute_flavor_v2" "m1_micro" {
  name = "m1.micro"
}

data "openstack_compute_flavor_v2" "m1_tiny" {
  name = "m1.tiny"
}

data "openstack_compute_flavor_v2" "m1_small" {
  name = "m1.small"
}

data "openstack_compute_flavor_v2" "m1_medium" {
  name = "m1.medium"
}

data "openstack_images_image_v2" "cirros" {
  name        = "cirros-0.5.1-x86_64"
  most_recent = true
}

data "openstack_images_image_v2" "centos" {
  name        = "centos-8.3"
  most_recent = true
}
