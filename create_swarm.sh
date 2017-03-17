#!/bin/bash
MC=$(docker-machine config swmaster)
WC=$(docker-machine config swnode)
MIP=$(docker-machine ip swmaster)
WIP=$(docker-machine ip swnode)

docker $MC swarm init --advertise-addr $MIP:2377

TK=$(docker $MC swarm join-token -q worker)

docker $WC swarm join --token $TK $MIP:2377

