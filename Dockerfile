FROM alpine
MAINTAINER martijndl

#Install git, python, cron
RUN apk update \
    apk add git python dcron

RUN cd /home && \
    git clone https://github.com/martijndl/Omnik-Data-Logger.git

RUN chmod +x /home/Omnik-Data-Logger/entrypoint.sh

ENTRYPOINT /home/Omnik-Data-Logger/entrypoint.sh