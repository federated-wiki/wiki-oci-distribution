FROM federatedwiki/core:0.10.3

WORKDIR /usr/local/lib/node_modules/wiki/
RUN npm i wiki-plugin-graph
RUN npm i wiki-plugin-cytodemo
RUN npm i wiki-plugin-plugmatic
RUN npm i wiki-plugin-rostermatic
RUN npm i wiki-plugin-tab

WORKDIR /root/.wiki/
