FROM node:23-alpine

RUN apk update && apk add ca-certificates openssh git curl rsync

RUN mkdir /app
WORKDIR /app

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["sh", "/entrypoint.sh"]

CMD ["yarn", "start"]

