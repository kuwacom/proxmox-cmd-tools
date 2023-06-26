if [ $# -ne 3 ]; then
    echo not enough arguments.
    echo "args... [vmID] [imagePath] [targetPool]"
    exit 1
fi
echo qm import Disk...
qm importdisk $1 $2 $3
echo set Disk...
qm set $1 --scsihw virtio-scsi-pci --scsi0 $3:vm-$1-disk-0