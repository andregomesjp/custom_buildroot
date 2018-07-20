#!/bin/sh

BOARD_DIR="$(dirname $0)"

# Add a console on tty1
if [ -e ${TARGET_DIR}/etc/inittab ]; then
    grep -qE '^tty1::' ${TARGET_DIR}/etc/inittab || \
        sed -i '/GENERIC_SERIAL/a\
tty1::respawn:/sbin/getty -L  tty1 0 vt100 # HDMI console' ${TARGET_DIR}/etc/inittab
fi

$HOST_DIR/bin/mkimage -A arm -T script -C none -n "Boot script" \
  -d $BOARD_DIR/boot.cmd $BINARIES_DIR/boot.scr

install -m 0644 -D $BINARIES_DIR/boot.scr $TARGET_DIR/boot/boot.scr
