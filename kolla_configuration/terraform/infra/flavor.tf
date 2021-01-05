resource "openstack_compute_flavor_v2" "m1_micro" {
  name  = "m1.micro"
  ram   = "256"
  vcpus = "1"
  disk  = "1"
}

resource "openstack_compute_flavor_v2" "m1_tiny" {
  name  = "m1.tiny"
  ram   = "512"
  vcpus = "1"
  disk  = "1"
}

resource "openstack_compute_flavor_v2" "m1_small" {
  name  = "m1.small"
  ram   = "1024"
  vcpus = "1"
  disk  = "10"
}

resource "openstack_compute_flavor_v2" "m1_medium" {
  name  = "m1.medium"
  ram   = "2048"
  vcpus = "2"
  disk  = "40"
}
