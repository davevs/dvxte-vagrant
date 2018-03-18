# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|

  # Optimized for virtualbox with latest patches and extensions
  if ENV['ENV'] != 'other'
  config.vm.box = "ubuntu/xenial64"

  config.vm.provider :virtualbox do |v|
     v.gui = true
     v.memory = 4096
     v.cpus = 2
     v.name = "DVXTE virtualbox optimized trainerbox"
     v.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
     v.customize ["modifyvm", :id, "--ioapic", "on"]
     v.customize ["modifyvm", :id, "--vram", "64"]
   end

   config.vm.provision 'shell' do |s|
     s.path = 'scripts/guest-additions-vbox.sh'
     s.privileged = true
   end

 else
   # Optimized for compatibility
   config.vm.box = "generic/ubuntu1604"

   config.vm.provider :virtualbox do |v|
      v.gui = true
      v.memory = 4096
      v.cpus = 2
      v.name = "DVXTE vmware/virtualbox/parallels compatible trainerbox"
      v.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
      v.customize ["modifyvm", :id, "--ioapic", "on"]
      v.customize ["modifyvm", :id, "--vram", "64"]
    end
 end

   config.vm.provision 'shell' do |s|
     s.path = 'scripts/initialise-privileged.sh'
     s.privileged = true
   end

   config.vm.provision 'shell' do |s|
     s.path = 'scripts/initialise-unprivileged.sh'
     s.privileged = false
   end  
   
   # ZSH
     config.vm.provision 'shell' do |s|
     s.path = 'scripts/provision-zsh.sh'
     s.privileged = true
   end 
  
   config.vm.provision 'file' do |s|
      s.source = 'generics/zshrc.template'
      s.destination = '~/.zshrc'
    end

   # MATE desktop
   config.vm.provision 'shell' do |s|
     s.path = 'scripts/provision-desktop-gnome.sh'
     s.privileged = true
   end	
	
   # JDK
   config.vm.provision 'shell' do |s|
     s.path = 'scripts/provision-jdk.sh'
     s.privileged = true
   end

   # Docker
   config.vm.provision 'shell' do |s|
     s.path = 'scripts/provision-docker.sh'
     s.privileged = true
   end

   # Atom
   config.vm.provision 'shell' do |s|
     s.path = 'scripts/provision-atom.sh'
     s.privileged = true
   end

   # # Chrome
   # config.vm.provision 'shell' do |s|
     # s.path = 'scripts/provision-chrome.sh'
     # s.privileged = true
   # end

  # provision ZAP
  config.vm.provision 'shell' do |s|
    s.path = 'scripts/provision-zap.sh'
    s.privileged = true
  end

  # provision Burp
  config.vm.provision 'shell' do |s|
    s.path = 'scripts/provision-burp.sh'
    s.privileged = false
  end

  # provision Nmap
  config.vm.provision 'shell' do |s|
    s.path = 'scripts/provision_nmap.sh'
    s.privileged = true
  end

  # provision nikto
  config.vm.provision 'shell' do |s|
    s.path = 'scripts/provision-nikto.sh'
    s.privileged = true
  end

  # provision sqlmap
  config.vm.provision 'shell' do |s|
    s.path = 'scripts/provision-sqlmap.sh'
    s.privileged = true
  end

  # provision dvxte container
  config.vm.provision 'shell' do |s|
    s.path = 'scripts/provision-dvxte-container.sh'
    s.privileged = true
  end

  # trigger reload
  config.vm.provision :reload  
  
end
