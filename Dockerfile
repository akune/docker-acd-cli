FROM ubuntu:16.10

RUN apt-get update && apt-get install -y python3 python3-appdirs python3-dateutil python3-requests python3-sqlalchemy python3-pip
RUN apt-get install -y git
RUN apt-get install -y fuse
RUN cd ~ && pip3 install --upgrade pip
RUN cd  ~ && pip3 install --upgrade git+https://github.com/yadayada/acd_cli.git

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT /entrypoint.sh

#VOLUME /root/.cache/acd_cli:acd_cli
