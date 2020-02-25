FROM alpine

LABEL maintainer="Simon Scholl"

RUN apk add --no-cache git docker python py2-pip bash \
    && pip install --no-cache-dir docker-compose \
    && docker-compose -v > /VERSION-DOCKERCOMPOSE

CMD echo /VERSION-DOCKERCOMPOSE
