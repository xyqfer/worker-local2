FROM node:16

WORKDIR /usr/src/app

COPY index.js ./

RUN npm install -g miniflare

EXPOSE 8787

CMD [ "miniflare", "index.js" ]