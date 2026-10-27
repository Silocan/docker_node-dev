FROM node:18-alpine

RUN apk update && apk add ca-certificates openssh git curl rsync bash

RUN mkdir /app
WORKDIR /app

COPY entrypoint.sh /entrypoint.sh

RUN chmod +x /entrypoint.sh

ENTRYPOINT ["sh", "/entrypoint.sh"]

CMD ["yarn", "start"]

