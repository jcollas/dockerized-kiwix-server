FROM ubuntu:focal
RUN apt-get update
RUN apt-get install -y wget
VOLUME /zims
WORKDIR /
COPY ./scripts ./scripts
RUN ./scripts/provision.sh
EXPOSE 8080
ENTRYPOINT ["./scripts/entrypoint.sh"]
