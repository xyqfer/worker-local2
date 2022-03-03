FROM node:16

WORKDIR /usr/src/app

RUN npm install -g miniflare --registry=https://registry.npmmirror.com

COPY index.js ./

EXPOSE 8787

CMD [ "miniflare", "index.js" ]