# VLDC Dash Docker demo #

This is a project for live docker demo at [VLDC Lite 2017](https://vldc.org/vldc-lite-2017/) event

It provides simple dashboard displaying 10 most recent tweets with hashtags #vldc and #gdgvl.
It runs 3 docker containers:

1. memcache - stores tweets
2. get_tweets - gets tweets with #vldc and #gdgvl tags in realtime using Twitter streaming API and stores them in memcached
3. web_app - serves static (bootstrap + react) page and exposes GET /tweets JSON endpoint with 10 recent tweets

To build and run it you'll need:

* git
* docker
* docker-machine
* virtualbox

If you wish to compile frontend part, you'll need:

* nodejs
* npm
* browserify

Also you'll need Twitter API keys. Get yours on https://apps.twitter.com/

To run:

    git clone --recursive git@github.com:C-Pro/ddemo_compose.git
    cd ddemo_compose
    cp api_keys.env.example api_keys.env
    vim api_keys.env # enter your Twitter API secrets.
    ./run.sh

Once everything is up you can point your browser to returned URL and access dashboard.

