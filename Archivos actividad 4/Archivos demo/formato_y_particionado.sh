#!/bin/bash
lsblk
/sbin/parted /dev/sdb --script -- mklabel msdos
/sbin/parted /dev/sdb --script -- mkpart primary 0 -1
parted --script /dev/sdb "mkpart primary 0% 100%"
mkfs.ext4 /dev/sdb1
lsblk
