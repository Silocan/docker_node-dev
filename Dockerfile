FROM node:14.20.0-alpine

RUN mkdir /app
WORKDIR /app

RUN yarn --pure-lockfile
CMD ["yarn", "start"]

