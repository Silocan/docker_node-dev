FROM node:18.17-alpine

RUN apk update && apk add ca-certificates

RUN mkdir /app
WORKDIR /app

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["sh", "/entrypoint.sh"]

CMD ["yarn", "start"]

