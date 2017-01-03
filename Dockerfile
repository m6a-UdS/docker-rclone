FROM ubuntu:16.04

CMD ["/entrypoint.sh"]
VOLUME ["/config"]
VOLUME ["/log"]

RUN apt-get update && apt-get -y upgrade
RUN apt-get install -y python-pip python-dev build-essential unzip curl

RUN mkdir /rclone
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x entrypoint.sh
