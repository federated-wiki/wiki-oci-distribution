FROM federatedwiki/node:0.9.3

RUN npm install -g grunt

WORKDIR /usr/local/lib/node_modules/wiki/node_modules
RUN git clone https://github.com/WardCunningham/wiki-plugin-graph.git
WORKDIR /usr/local/lib/node_modules/wiki/node_modules/wiki-plugin-graph
RUN npm install
RUN grunt build

