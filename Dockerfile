FROM mogria/3source-phpcli:latest

MAINTAINER "Mogria" <m0gr14@gmail.com>

WORKDIR /tmp

RUN apt-get update -y && \
    apt-get install -y php5-mysql

RUN mkdir -p /data/www
VOLUME ["/data"]
WORKDIR /data/www

USER www-data
ENTRYPOINT ["umask-wrapper.sh", "php", "artisan"]
CMD ["--help"]
