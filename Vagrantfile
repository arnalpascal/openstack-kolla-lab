Vagrant.configure("2") do |config|
  config.hostmanager.enabled = true
  config.hostmanager.manage_host = true
  config.hostmanager.manage_guest = true
  config.hostmanager.ignore_private_ip = false
  config.hostmanager.include_offline = true

  config.vm.define "openstack-kolla", primary: true do |o|
    o.vm.box = "centos/8"
    o.vm.box_check_update = true
    o.vm.hostname = "openstack-kolla"

    o.vm.synced_folder "./openstack-kolla", "/vagrant", type: "rsync"
    o.vm.synced_folder "./kolla_configuration", "/kolla_configuration", type: "rsync"

    o.vm.network :private_network,
      :type => "dhcp",
      :libvirt__network_name => "external_network",
      :libvirt__network_address => '10.10.10.0'

    o.vm.provider :libvirt do |p|
      p.cpus = 1 
      p.memory = 512
      p.nested = true
      p.graphics_type = "none"
      p.nested = true
    end

    o.vm.provision :ansible do |ansible|
      ansible.playbook = "provisioning/playbook.yaml"
      ansible.inventory_path= "provisioning/inventory.yaml"
    end
  end

  config.vm.define "openstack-node-1" do |o|
    o.vm.box = "centos/8"
    o.vm.box_check_update = true
    o.vm.hostname = "openstack-node-1"

    o.vm.synced_folder "./openstack-node-1", "/vagrant", type: "rsync"

    o.vm.network :private_network,
      :type => "dhcp",
      :libvirt__network_name => "external_network",
      :libvirt__network_address => '10.10.10.0'

    o.vm.provider :libvirt do |p|
      p.cpus = 4
      p.memory = 4096
      p.nested = true
      p.graphics_type = "none"
      p.machine_virtual_size = 40
      p.nested = true
    end

    o.vm.provision :ansible do |ansible|
      ansible.playbook = "provisioning/playbook.yaml"
      ansible.inventory_path= "provisioning/inventory.yaml"
    end
  end

  config.vm.define "openstack-node-2" do |o|
    o.vm.box = "centos/8"
    o.vm.box_check_update = true
    o.vm.hostname = "openstack-node-2"

    o.vm.synced_folder "./openstack-node-2", "/vagrant", type: "rsync"

    o.vm.network :private_network,
      :type => "dhcp",
      :libvirt__network_name => "external_network",
      :libvirt__network_address => '10.10.10.0'

    o.vm.provider :libvirt do |p|
      p.cpus = 4
      p.memory = 4096
      p.nested = true
      p.graphics_type = "none"
      p.machine_virtual_size = 40
      p.nested = true
    end

    o.vm.provision :ansible do |ansible|
      ansible.playbook = "provisioning/playbook.yaml"
      ansible.inventory_path= "provisioning/inventory.yaml"
    end
  end

  config.vm.define "openstack-node-3" do |o|
    o.vm.box = "centos/8"
    o.vm.box_check_update = true
    o.vm.hostname = "openstack-node-3"

    o.vm.synced_folder "./openstack-node-3", "/vagrant", type: "rsync"

    o.vm.network :private_network,
      :type => "dhcp",
      :libvirt__network_name => "external_network",
      :libvirt__network_address => '10.10.10.0'

    o.vm.provider :libvirt do |p|
      p.cpus = 4
      p.memory = 4096
      p.nested = true
      p.graphics_type = "none"
      p.machine_virtual_size = 40
      p.nested = true
    end

    o.vm.provision :ansible do |ansible|
      ansible.playbook = "provisioning/playbook.yaml"
      ansible.inventory_path= "provisioning/inventory.yaml"
    end
  end
end
