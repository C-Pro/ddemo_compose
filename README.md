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

If you wish to compile frontend part, you'll need:

* nodejs
* npm
* browserify

To run:

    git clone git@github.com:C-Pro/ddemo_compose.git
    cd ddemo_compose
    ./run.sh

Once everything is up you can point your browser to returned URL and access dashboard.

