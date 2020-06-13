FROM alpine
MAINTAINER martijndl

#Install git, python, cron
RUN apt-get update \
    apt-get install -y git python cron

RUN mkdir /home/Omnik-Data-Logger \
    cd /home/Omnik-Data-Logger \
    git clone https://github.com/martijndl/Omnik-Data-Logger.git

RUN chmod +x /home/Omnik-Data-Logger/entrypoint.sh

ENTRYPOINT /home/Omnik-Data-Logger/entrypoint.sh