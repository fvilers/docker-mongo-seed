FROM alpine
LABEL maintainer="Fabian Vilers <fabian.vilers@dev-one.com>"

RUN apk add --update mongodb-tools netcat-openbsd
COPY ./wait-for-mongo.sh /root
RUN chmod 700 /root/wait-for-mongo.sh

CMD [ "/bin/sh", "/root/wait-for-mongo.sh" ]
