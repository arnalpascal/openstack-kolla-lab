resource "openstack_compute_keypair_v2" "vagrant_keypair" {
  name       = "vagrant-keypair"
  public_key = file("/home/vagrant/.ssh/id_rsa.pub")
}
