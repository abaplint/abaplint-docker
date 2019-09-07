FROM node:12-alpine

RUN apk add --no-cache git \
    && npm install -g abaplint

COPY docker-entrypoint.sh /usr/local/bin/
ENTRYPOINT ["docker-entrypoint.sh"]

CMD ["abaplint"]
