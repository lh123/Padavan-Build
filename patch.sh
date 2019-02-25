#!/bin/sh
SRC_DIR=/opt/rt-n56u
if [ ! -d "${SRC_DIR}/" ] ; then
    echo "Dest dir is not exists!"
    exit 1
fi
if [ -d "${SRC_DIR}/trunk/configs/" ] ; then
    cp -frv "./newifi-mini/configs/boards/" "${SRC_DIR}/trunk/configs/"
    cp -fv "./newifi-mini/configs/templates/newifi-mini" "${SRC_DIR}/trunk/.config"
fi
if [ -d "${SRC_DIR}/trunk/user/" ] ; then
    cp -frv "./newifi-mini/user/" "${SRC_DIR}/trunk/"
fi

awk '{sub(/--short /, "--short=8 "); print $0 > "/opt/rt-n56u/trunk/versions.inc"}' /opt/rt-n56u/trunk/versions.inc