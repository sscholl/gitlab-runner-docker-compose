FROM alpine

LABEL maintainer="Simon Scholl"

RUN apk add --no-cache git docker python py-pip bash python-dev libffi-dev openssl-dev gcc libc-dev make \
    && pip install --no-cache-dir docker-compose \
    && docker-compose -v > /VERSION-DOCKERCOMPOSE

CMD echo /VERSION-DOCKERCOMPOSE
