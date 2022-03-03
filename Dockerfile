FROM node:16

WORKDIR /usr/src/app

COPY index.js ./

RUN npm install -g miniflare --registry=https://registry.npmmirror.com

EXPOSE 8789

CMD [ "miniflare", "index.js", "-p", "8789" ]