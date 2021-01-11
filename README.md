# wiki-docker-distribution

A community curated Dockerfile and Docker Compose example to instantiate a [Federated Wiki](http://fed.wiki.org/), combined with a curated blend of plugins.

The plugins that are installed additionally to the core distribution are:

`$ grep wiki- Dockerfile | awk '{ print $1 }' | sed 's/^/- /g'`

- wiki-plugin-cytodemo
- wiki-plugin-fivestar
- wiki-plugin-frame
- wiki-plugin-graph
- wiki-plugin-json
- wiki-plugin-metamodel
- wiki-plugin-print
- wiki-plugin-register
- wiki-plugin-rostermatic
- wiki-plugin-rss
- wiki-plugin-shell
- wiki-plugin-signature
- wiki-plugin-slide
- wiki-plugin-soundcloud
- wiki-plugin-tab
- wiki-plugin-tally
- wiki-plugin-zones

The list of default plugins lives with [the `wiki` `package.json`](https://github.com/fedwiki/wiki/blob/master/package.json#L35-L77).

## Get

To run the image directly, refer to the [Run section](#run) below.

To get a copy for local development, pull the repository to your machine:

```
git clone https://github.com/federated-wiki/wiki-docker-plugins.git
cd wiki-docker-plugins
```

## Build

Build your image from the working directory with:

```
docker build -t federatedwiki/distribution:latest .
```

To build a tagged release run both:

```
docker build -t federatedwiki/distribution:latest .
docker build -t federatedwiki/distribution:$(git describe --tags) .
```

## Publish

The image is automatically built from [published tags to this repository](https://github.com/federated-wiki/wiki-docker-plugins/releases) on Docker Hub.

In case you need to publish a locally tagged version, please use a command similar to the following, depending on the desired tag:

```
docker push federatedwiki/distribution:latest
```

## Run

The federated wiki image can be run with container runtimes that support Docker images.

For example with Docker:

```
docker start -v "./wiki/:/root/.wiki/:z" -p "3000:3000" -e NODE_ENV=production federatedwiki/base wiki
```

Or to launch an example orchestrated with Docker Compose:

```
docker-compose up
```

The example requires a `config.json` for federated wiki to be present in the local `./.wiki/` mount. This is useful to run a farm of sites. 

This is how to configure the `friends` security plugin. Add a long-enough cookieSecret, such as with `pwgen -n 32 1`.

```
{
  "farm": true,
  "autoseed": true,
  "cookieSecret": "",
  "security_type": "friends",
  "session_duration": 365,
  "wikiDomains": {
    "commoning.wiki": {},
    "verbund.wiki": {},
    "wiki.allmende.io": {}
  }
}
```

This example shows how to configure the `passportjs` security plugin for a farm.

```
{
  "farm": true,
  "autoseed": true,
  "cookieSecret": "",
  "security_type": "passportjs",
  "twitter_consumerKey": "",
  "twitter_consumerSecret": "",
  "google_clientID": "",
  "google_clientSecret": "",
  "wikiDomains": {
    "federated.wiki": {},
  }
}
```

## Credits

All credits are due to [the developers of Federated Wiki](https://github.com/fedwiki/wiki/graphs/contributors).

## Authors

- Jon Richter

## License

MIT

Please find the separate LICENSE file for details.
