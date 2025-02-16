FROM debian:bullseye

RUN apt update && apt upgrade -y && apt install -y redis-server

COPY redis.conf /etc/redis/redis.conf

EXPOSE 6379

CMD ["redis-server", "/etc/redis/redis.conf"]