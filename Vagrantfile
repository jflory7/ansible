# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "centos/7"
  config.vm.provider :libvirt do |libvirt|
    libvirt.memory = 4096
  end
  # Provisioning configuration for Ansible.
  config.vm.provision :ansible do |ansible|
    ansible.playbook = "playbooks/setup_centos7_server.yml"
  end
end
