FROM alpine
MAINTAINER martijndl

#Install git, python, cron
RUN apk update \
    apk add git python dcron

RUN mkdir /home/Omnik-Data-Logger \
    cd /home/Omnik-Data-Logger \
    git clone https://github.com/martijndl/Omnik-Data-Logger.git

RUN chmod +x /home/Omnik-Data-Logger/entrypoint.sh

ENTRYPOINT /home/Omnik-Data-Logger/entrypoint.sh