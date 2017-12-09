#!/usr/bin/env bash

nohup redis-server&

cd /SwarmESB
export NODE_PATH=`pwd`"/node_modules"
export SWARM_PATH=`pwd`
export SWARM_NODE_TYPE="demo"

npm install
cd /

sleep 60
node /SwarmESB/adapters/demoLaunch.js
 

