boxes = [
    {
        :name           => "openstack-kolla",
        :hostname       => "openstack-kolla",
        :ips            => ['172.28.128.100', '10.10.20.100'],
        :synced_folders => [
          { :src => "./openstack-kolla", :dest => "/vagrant" },
          { :src => "./kolla_configuration", :dest => "/kolla_configuration" },
        ],
        :cpus                 => 2,
        :memory               => 512,
        :machine_virtual_size => 20
    },
    {
        :name           => "openstack-node-1",
        :hostname       => "openstack-node-1",
        :ips            => ['172.28.128.101', '10.10.20.101'],
        :synced_folders => [
          { :src => "./openstack-node-1", :dest => "/vagrant" },
        ],
        :cpus                 => 8,
        :memory               => 8192,
        :machine_virtual_size => 40
    },
    {
        :name           => "openstack-node-2",
        :hostname       => "openstack-node-2",
        :ips            => ['172.28.128.102', '10.10.20.102'],
        :synced_folders => [
          { :src => "./openstack-node-2", :dest => "/vagrant" },
        ],
        :cpus                 => 8,
        :memory               => 8192,
        :machine_virtual_size => 40
    },
    {
        :name           => "openstack-node-3",
        :hostname       => "openstack-node-3",
        :ips            => ['172.28.128.103', '10.10.20.103'],
        :synced_folders => [
          { :src => "./openstack-node-3", :dest => "/vagrant" },
        ],
        :cpus                 => 8,
        :memory               => 8192,
        :machine_virtual_size => 40
    },
]
Vagrant.configure("2") do |config|
  config.vm.box = "centos/8"
  config.vm.box_check_update = true

  config.hostmanager.enabled = true
  config.hostmanager.manage_host = true
  config.hostmanager.manage_guest = true
  config.hostmanager.ignore_private_ip = false
  config.hostmanager.include_offline = true

  boxes.each_with_index do |box, index|
    config.vm.define box[:name] do |box_config|
      box_config.vm.hostname = box[:hostname]

      box[:ips].each do |ip|
        box_config.vm.network :private_network, :ip => ip
      end

      box[:synced_folders].each do |folder|
        box_config.vm.synced_folder folder[:src], folder[:dest], type: "rsync"
      end

      box_config.vm.provider :libvirt do |p|
        p.cpus = box[:cpus]
        p.memory = box[:memory]
        p.nested = true
        p.graphics_type = "none"
        p.machine_virtual_size = box[:machine_virtual_size]
        p.qemu_use_session = false
      end

      box_config.vm.provision "ansible" do |ansible|
        ansible.playbook = "provisioning/playbook.yaml"
        ansible.inventory_path= "provisioning/inventory.yaml"
      end
    end
  end  
end
