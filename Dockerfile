FROM alpine:3.16

LABEL name="docker-iceast"\
      description="This a docker image for Icecast server"\
      maintener="Jaime Mejía" \
      documentation="https://github.com/jaimemejia"

# Installing icecast2 server

RUN apk update && \
    apk upgrade && \
    apk add --no-cache icecast=2.4.4-r7

# This user is already created by the package installation.
USER icecast

# Icecast default port.

EXPOSE 8000

CMD ["icecast", "-c", "/etc/icecast.xml"]
