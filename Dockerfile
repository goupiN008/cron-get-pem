FROM ubuntu

# install cron
RUN apt-get update && apt-get install cron openssl -y -qq

WORKDIR /app

RUN 

ADD get_certificate.sh .
ADD start.sh .
# start cron in foreground (don't fork)
CMD [ "bash", "-c", "/app/start.sh" ]
