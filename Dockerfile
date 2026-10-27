FROM node:22-alpine

RUN apk add --no-cache \
    ca-certificates \
    openssh-client \
    git \
    curl \
    rsync

WORKDIR /app

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["sh", "/entrypoint.sh"]

CMD ["yarn", "start"]
