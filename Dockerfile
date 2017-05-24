FROM federatedwiki/core:0.11.3

WORKDIR /usr/local/lib/node_modules/wiki/
RUN npm i \
    wiki-plugin-graph@1.0.0 \
    wiki-plugin-cytodemo@0.0.3 \
    wiki-plugin-plugmatic@1.1.0 \
    wiki-plugin-rostermatic@1.0.9 \
    wiki-plugin-tab@0.1.1 \
    wiki-plugin-fivestar@0.2.6 \
    wiki-plugin-json@0.1.9 \
    wiki-plugin-rss@0.1.9 \
    wiki-plugin-tally@0.1.4 \
    wiki-plugin-shell@0.1.3 \
    wiki-plugin-slide@0.1.2

WORKDIR /root/.wiki/
