FROM alpine:3.11

ENV VERSION=0.0.3
ENV GITHUB_HEAD_REF = ""

ARG VERSION

# Github labels
LABEL "com.github.actions.name"="CURL ACTION"
LABEL "com.github.actions.description"="Triggering CURL"
LABEL "com.github.actions.icon"="command"
LABEL "com.github.actions.color"="black"

LABEL "repository"="https://github.com/appleboy/curl-action"
LABEL "homepage"="https://github.com/enflo"
LABEL "maintainer"="Antoni Florit Homar <toniflorithomar@gmail.com>"
LABEL "version"=$VERSION

RUN apk add --update --no-cache bash curl

# Copies your code file from your action repository to the filesystem path `/` of the container
COPY entrypoint.sh /entrypoint.sh

# Code file to execute when the docker container starts up (`entrypoint.sh`)
ENTRYPOINT ["/entrypoint.sh"]
