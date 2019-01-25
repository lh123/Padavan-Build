#!/bin/sh
SRC_DIR=/opt/rt-n56u
echo "开始适配newifi-mini"
if [ ! -d "${SRC_DIR}/" ] ; then
    echo "Dest dir is not exists!"
    exit 1
fi

echo "----------开始复制适配文件----------"
if [ -d "${SRC_DIR}/trunk/configs/" ] ; then
    cp -fRv "./newifi-mini/configs/boards/" "${SRC_DIR}/trunk/configs/"
    cp -fRv "./newifi-mini/configs/templates/newifi-mini" "${SRC_DIR}/trunk/.config"
fi
echo "----------复制适配文件结束----------"
echo "----------开始复制汉化文件----------"
if [ -d "${SRC_DIR}/trunk/user/" ] ; then
    cp -fRv "./newifi-mini/user/" "${SRC_DIR}/trunk/"
fi
echo "----------复制汉化文件结束----------"