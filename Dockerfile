FROM alpine
MAINTAINER martijndl

#Install git, python, cron
RUN apk add --update-cache bash git python3 dcron

RUN cd /home && \
    git clone https://github.com/martijndl/Omnik-Data-Logger.git

RUN touch /home/Omnik-Data-Logger/config.cfg

RUN chmod 755 /home/Omnik-Data-Logger/entrypoint.sh

ENTRYPOINT ["/home/Omnik-Data-Logger/entrypoint.sh"]