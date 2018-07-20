#!/bin/sh

set -u
set -e

# Add a console on tty1
if [ -e ${TARGET_DIR}/etc/inittab ]; then
    grep -qE '^tty1::' ${TARGET_DIR}/etc/inittab || \
	sed -i '/GENERIC_SERIAL/a\
tty1::respawn:/sbin/getty -L  tty1 0 vt100 # HDMI console' ${TARGET_DIR}/etc/inittab
fi

# enable nucleus services
SYSTEMD_TARGET_DIR="/etc/systemd/system/multi-user.target.wants"
ln -sf ${TARGET_DIR}/etc/systemd/system/natasha.service ${TARGET_DIR}/${SYSTEMD_TARGET_DIR}/natasha.service
ln -sf ${TARGET_DIR}/etc/systemd/system/sentinel.service ${TARGET_DIR}/${SYSTEMD_TARGET_DIR}/sentinel.service
ln -sf ${TARGET_DIR}/etc/systemd/system/aiorosplayer.service ${TARGET_DIR}/${SYSTEMD_TARGET_DIR}/aiorosplayer.service

