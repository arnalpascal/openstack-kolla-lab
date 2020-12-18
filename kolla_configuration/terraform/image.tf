resource "openstack_images_image_v2" "cirros" {
  name             = "cirros-0.5.1-x86_64"
  image_source_url = "https://github.com/cirros-dev/cirros/releases/download/0.5.1/cirros-0.5.1-x86_64-disk.img"
  container_format = "bare"
  disk_format      = "qcow2"
  visibility       = "public"

  properties = {
    os_type = "linux"
  }
}
