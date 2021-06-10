# packer template windows-server-2019-standard

drivers from:
https://fedorapeople.org/groups/virt/virtio-win/direct-downloads/stable-virtio/virtio-win.iso

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