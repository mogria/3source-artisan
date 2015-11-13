FROM dylanlindgren/docker-laravel-artisan:latest

MAINTAINER "Mogria" <m0gr14@gmail.com>

WORKDIR /tmp

RUN apt-get update -y && \
    apt-get install -y

RUN mkdir -p /data/www
VOLUME ["/data"]
WORKDIR /data/www

USER www-data
ENTRYPOINT ["php", "artisan"]
CMD ["--help"]
