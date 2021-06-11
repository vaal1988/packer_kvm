# packer template windows-server-2019-standard

drivers from:
https://fedorapeople.org/groups/virt/virtio-win/direct-downloads/stable-virtio/virtio-win.iso

QEMU Guest Agent from:
https://fedorapeople.org/groups/virt/virtio-win/direct-downloads/archive-qemu-ga/qemu-ga-win-101.2.0-1.el7ev/

puppet agent from:
https://downloads.puppetlabs.com/windows/puppet6/

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

get md5 checksum
```bash
md5sum /var/tmp/windows-server-2019-standard-x64.box
```