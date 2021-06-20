### Clean and minimal Windows Server CORE 2019 Standard base box for libvirt with :
- chocolatey
- updates
- drivers (viostor, netkvm, viorng, vioserial, qxldod, balloon)
- qemu guest agent
- wget
- winrm enabled

### Login Credentials
Username: Admin

Password: password

### Vagrantfile example :
```
# -*- mode: ruby -*-
# vi: set ft=ruby :

ENV['VAGRANT_DEFAULT_PROVIDER'] = 'libvirt'

Vagrant.configure("2") do |config|

  ##### DEFINE win01 VM #####
  config.vm.define "win01" do |config|
  config.vm.hostname         = "win01"
  config.vm.box              = "vgusachenko/windows-servercore-2019"
  config.vm.box_check_update = false
    config.vm.provider :libvirt do |v|
      v.qemu_use_session = false
      v.cpus             = 2
      v.memory           = 4086
    end
  end
  
end
```
