FROM alpine:latest

RUN apk add --update curl && \
    rm -rf /var/cache/apk/*

ADD test.sh ./test.sh
RUN chmod +x test.sh

ENTRYPOINT [ "/bin/sh" ]