FROM harbor.elevenpaths.com/dockerhub-proxy/library/alpine:3.15

LABEL \
  "name"="GitHub Pull Request Action edited for MagNET-Telefonica" \
  "homepage"="https://github.com/marketplace/actions/github-pull-request" \
  "repository"="https://github.com/repo-sync/pull-request" \
  "maintainer"="Wei He <github@weispot.com>"

RUN echo http://dl-cdn.alpinelinux.org/alpine/edge/testing >> /etc/apk/repositories && \
  apk add --no-cache git hub bash

ADD *.sh /

ENTRYPOINT ["/entrypoint.sh"]
