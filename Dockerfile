FROM federatedwiki/base

WORKDIR /usr/local/lib/node_modules/wiki/
# no need to repeat https://github.com/fedwiki/wiki/blob/master/package.json
RUN npm i \
    wiki-plugin-cytodemo \
    wiki-plugin-fivestar \
    wiki-plugin-frame \
    wiki-plugin-graph \
    wiki-plugin-json \
    wiki-plugin-metamodel \
    wiki-plugin-print \
    wiki-plugin-register \
    wiki-plugin-rostermatic \
    wiki-plugin-rss \
    wiki-plugin-shell \
    wiki-plugin-signature \
    wiki-plugin-slide \
    wiki-plugin-soundcloud \
    wiki-plugin-tab \
    wiki-plugin-tally \
    wiki-plugin-zones

WORKDIR /root/.wiki/
