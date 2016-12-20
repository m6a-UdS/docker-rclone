#!/bin/bash

mkdir /rclone
curl http://downloads.rclone.org/rclone-current-linux-amd64.zip -o /rclone/rclone-current-linux-amd64.zip
unzip /rclone/rclone-current-linux-amd64.zip -d /rclone
rm /rclone/rclone-current-linux-amd64.zip
cd /rclone
RCLONE_FOLDER=(*)
mv /rclone/$RCLONE_FOLDER/* /rclone
ls /rclone