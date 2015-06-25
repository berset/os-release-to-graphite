FROM alpine

RUN apk update && apk add netcat-openbsd

COPY send.sh /send.sh

CMD ["/send.sh"]

