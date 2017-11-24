FROM federatedwiki/base:0.12

WORKDIR /usr/local/lib/node_modules/wiki/
ADD package.json package-lock.json
RUN npm i

WORKDIR /root/.wiki/
