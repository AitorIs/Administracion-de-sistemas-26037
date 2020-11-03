#!/bin/bash
config_file="/etc/iscsi/iscsid.conf"
apt-get -y install open-iscsi
echo 'ISCSITARGET_ENABLE=true' >>/etc/default/iscsitarget
iscsiadm -m discovery -t sendtargets -p 192.168.0.22
iscsiadm -m node -o show
iscsiadm -m node --login
iscsiadm -m session -o show

