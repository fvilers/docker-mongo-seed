FROM alpine
LABEL maintainer="Fabian Vilers <fabian.vilers@dev-one.com>"

RUN apk add --update mongodb-tools netcat-openbsd
COPY ./wait-for-mongo.sh .
RUN chmod 700 ./wait-for-mongo.sh

CMD [ "/bin/sh", "./wait-for-mongo.sh" ]
