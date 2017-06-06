rsync -auHxv \
    –numeric-ids \
    –exclude=/etc/fstab \
    –exclude=/etc/network/* \
    –exclude=/proc/* \
    –exclude=/tmp/* \
    –exclude=/sys/* \
    –exclude=/dev/* \
    –exclude=/mnt/* \
    –exclude=/boot/* \
    –exclude=/root/* \
    root@SRC-IP:/* /

