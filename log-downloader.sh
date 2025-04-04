#!/bin/sh

servername=127.0.0.1
username=max

while :
do

echo "Awaiting connection to $usernam@$servername."

until ssh $username@$servername exit; do
    sleep 5
done

echo "Connected!"

rsync -a $username@$servername:/U/logs/ ./logs

done
