FROM node:12-alpine

WORKDIR /workdir
RUN apk add --no-cache git \
    && npm install -g @abaplint/cli

COPY docker-entrypoint.sh /usr/local/bin/
ENTRYPOINT ["docker-entrypoint.sh"]

CMD ["abaplint"]
