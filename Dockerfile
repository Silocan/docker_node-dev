FROM node:18-bookworm

RUN mkdir -p node_modules/node-sass/vendor/linux-x64-51
RUN curl -L https://github.com/sass/node-sass/releases/download/v4.5.0/linux-x64-51_binding.node -o node_modules/node-sass/vendor/linux-x64-51/binding.node

RUN mkdir /app
WORKDIR /app

COPY entrypoint.sh /entrypoint.sh

ENV PYTHON /usr/bin/python3

ENTRYPOINT ["sh", "/entrypoint.sh"]

CMD ["yarn", "start"]

