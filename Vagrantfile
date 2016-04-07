# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.

load "./Vagrantfile.local" if File.exists?("./Vagrantfile.local")

Vagrant.configure(2) do |config|
  config.vm.define "local" do |server|
    server.vm.box = "centos6"
    server.chef_zero.chef_repo_path = "."
    server.omnibus.chef_version = :latest
  end
end
