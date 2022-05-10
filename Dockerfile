FROM alpine:3.15.4

RUN wget https://github.com/docker/compose/releases/download/v2.5.0/docker-compose-linux-$(uname -m) -O /usr/local/bin/docker-compose &&\
    chmod +x /usr/local/bin/docker-compose &&\
    docker-compose version

ENTRYPOINT [ "docker-compose" ]