FROM ubuntu:16.04

CMD ["/main.sh"]
VOLUME ["/config"]
VOLUME ["/log"]

RUN apt-get update && apt-get -y upgrade
RUN apt-get install -y python-pip python-dev build-essential unzip curl wget

RUN mkdir /rclone
COPY main.sh /main.sh
RUN chmod +x main.sh
