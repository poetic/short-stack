# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
  # Disable a few things to make Vagrant work with an OS X guest
  config.vm.synced_folder '.', '/vagrant', disabled: true
  config.ssh.insert_key = false

  # You'll need to build your own box:
  # https://github.com/timsutton/osx-vm-templates
  config.vm.box = "poetic/yosemite"

  config.vm.provider "virtualbox" do |vb|
    # Display the VirtualBox GUI when booting the machine
    vb.gui = true

    # Customize the amount of memory on the VM:
    vb.memory = "2048"
  end
end
