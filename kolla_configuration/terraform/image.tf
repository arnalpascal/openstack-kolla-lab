resource "openstack_images_image_v2" "cirros" {
  name             = "cirros-0.5.1-x86_64"
  image_source_url = "https://github.com/cirros-dev/cirros/releases/download/0.5.1/cirros-0.5.1-x86_64-disk.img"
  container_format = "bare"
  disk_format      = "qcow2"
  visibility       = "public"

  properties = {
    os_type    = "linux"
    os_distro  = "cirros"
    os_version = "0.5.1"
  }
}

resource "openstack_images_image_v2" "centos" {
  name             = "centos-8.3"
  image_source_url = "https://cloud.centos.org/centos/8/x86_64/images/CentOS-8-GenericCloud-8.3.2011-20201204.2.x86_64.qcow2"
  container_format = "bare"
  disk_format      = "qcow2"
  visibility       = "public"

  properties = {
    os_type    = "linux"
    os_distro  = "centos"
    os_version = "8.3"
  }
}
