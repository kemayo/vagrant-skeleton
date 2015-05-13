# -*- mode: ruby -*-
# vi: set ft=ruby :

# very much based on https://github.com/BetterBrief/vagrant-skeleton

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "chef/centos-6.5"

  # Port forward 80 to 8080
  config.vm.network :forwarded_port, guest: 80, host: 8081, auto_correct: true
  #config.vm.network :forwarded_port, guest: 443, host: 443, auto_correct: true
  config.vm.network :forwarded_port, guest: 3306, host: 3307, auto_correct: true

  #Uncomment this if you want bridged network functionality
  #config.vm.network :public_network

  #Install lamp and so on
  #In future will probably swap this out with something like Puppet
  config.vm.provision :shell, :path => "environment/scripts/iptables.sh"
  config.vm.provision :shell, :path => "environment/scripts/php.sh"
  config.vm.provision :shell, :path => "environment/scripts/apache.sh"
  config.vm.provision :shell, :path => "environment/scripts/mysql.sh"
  config.vm.provision :shell, :path => "environment/scripts/custom-yum-epel-repo.sh" # needed for phpmyadmin
  config.vm.provision :shell, :path => "environment/scripts/phpmyadmin.sh" # needed for phpmyadmin
  config.vm.provision :shell, :path => "environment/scripts/always.sh", run: "always"
end
