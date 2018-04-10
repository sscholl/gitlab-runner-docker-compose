FROM alpine

LABEL maintainer="Simon Scholl"

RUN apk add --no-cache docker \
    && apk add --no-cache python py2-pip \
    && pip install --no-cache-dir docker-compose \
    && docker-compose -v > /VERSION-DOCKERCOMPOSE

CMD echo /VERSION-DOCKERCOMPOSE
