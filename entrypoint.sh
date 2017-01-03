#!/bin/bash

curl http://downloads.rclone.org/rclone-current-linux-amd64.zip -o /rclone/rclone-current-linux-amd64.zip
unzip /rclone/rclone-current-linux-amd64.zip -d /rclone
rm /rclone/rclone-current-linux-amd64.zip
cd /rclone
RCLONE_FOLDER=(*)
echo "/rclone/$RCLONE_FOLDER"
/rclone/$RCLONE_FOLDER/rclone --config=/config/rclone.conf --log-file=/log/rclone.log $EXTRAPARAMS copy $SOURCE:/ $DESTINATION:$BUCKET/
