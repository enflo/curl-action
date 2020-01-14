FROM alpine:3.11

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

ENTRYPOINT ["/usr/bin/curl"]
