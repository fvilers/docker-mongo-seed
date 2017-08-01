FROM alpine
LABEL maintainer="Fabian Vilers <fabian.vilers@dev-one.com>"

RUN apk add --update mongodb-tools
