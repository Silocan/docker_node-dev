FROM node:14.17.0-alpine

RUN mkdir /app
WORKDIR /app

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["sh", "/entrypoint.sh"]

CMD ["yarn", "start"]

