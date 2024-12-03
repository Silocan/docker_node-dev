FROM node:23-slim

RUN apt-get update && apt-get install -y ca-certificates python3 yarn ssh rsync

RUN mkdir /app
WORKDIR /app

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["sh", "/entrypoint.sh"]

CMD ["yarn", "start"]

