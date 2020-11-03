#!/bin/bash
apt-get -y install tgt
echo 'ISCSITARGET_ENABLE=true' >>/etc/default/tgt
#configuracion '/etc/tgt/conf.d/iscsi.conf'
service tgt restart
tgtadm --mode target --op show

