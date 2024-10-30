FROM node:18-slim

RUN apt-get update && apt-get install -y ca-certificates python yarn ssh-agent

RUN mkdir /app
WORKDIR /app

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["sh", "/entrypoint.sh"]

CMD ["yarn", "start"]

