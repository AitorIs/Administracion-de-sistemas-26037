#!/bin/bash
PACKAGE_NAME="tgt"
DEFAULT_PATH="/etc/default/iscsitarget"
apt-get -y install $PACKAGE_NAME

if [ $(systemctl is-enabled $PACKAGE_NAME) = "disabled" ]; then
    systemctl enable $PACKAGE_NAME
fi

if [ -f $DEFAULT_PATH ]; then
    if [ $(cat $DEFAULT_PATH | wc -l) -eq 0 ]; then
        echo 'ISCSITARGET_ENABLE=true' >>/etc/default/iscsitarget
    fi
else
    echo 'ISCSITARGET_ENABLE=true' >>/etc/default/iscsitarget
fi
