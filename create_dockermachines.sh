#!/bin/bash
docker-machine rm swmaster 2>/dev/null || true
docker-machine rm swnode 2>/dev/null || true
docker-machine create --driver virtualbox --virtualbox-host-dns-resolver=false swmaster
docker-machine create --driver virtualbox --virtualbox-host-dns-resolver=false swnode
