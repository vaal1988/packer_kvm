# packer KVM windows templates

### Drivers from:
* [https://fedorapeople.org/groups/virt/virtio-win/direct-downloads/stable-virtio/](https://fedorapeople.org/groups/virt/virtio-win/direct-downloads/stable-virtio/virtio-win.iso)


### QEMU Guest Agent from:
* [https://fedorapeople.org/groups/virt/virtio-win/direct-downloads/archive-qemu-ga/qemu-ga-win-101.2.0-1.el7ev/](https://fedorapeople.org/groups/virt/virtio-win/direct-downloads/archive-qemu-ga/qemu-ga-win-101.2.0-1.el7ev/qemu-ga-x86_64.msi)

### Puppet Agent from:
* [https://downloads.puppetlabs.com/windows/puppet6/](https://downloads.puppetlabs.com/windows/puppet6/puppet-agent-6.22.1-x64.msi)




build box:
```bash
export TMPDIR="/var/tmp"
export PACKER_IMAGES_OUTPUT_DIR="/var/tmp/"
packer build -only="qemu" windows2019.json
```

add box:
```bash
vagrant box add --name windows-server-2019-standard-x64 /var/tmp/windows-server-2019-standard-x64.box
```