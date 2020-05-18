#!/bin/bash
PART=$1
LOOP99=/dev/loop99
LOOP100=/dev/loop100
UUID99=$(/sbin/blkid -s UUID -o value ${LOOP99}p$PART)
UUID100=$(/sbin/blkid -s UUID -o value ${LOOP100}p$PART)

[[ $UUID99 == "" ]] && exit 1

if [[ $UUID99 == $UUID100 ]]
then
        echo "ok"
        exit 0
fi

exit 1

