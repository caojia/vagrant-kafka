#!/bin/bash

ENV_PATH=`dirname $0`/env.sh

if [ -f $ENV_PATH ]; then
  source $ENV_PATH
else
  KAFKA_HOME=/opt/kafka
fi
# create myid file. see http://zookeeper.apache.org/doc/r3.1.1/zookeeperAdmin.html#sc_zkMulitServerSetup
if [ ! -d /tmp/zookeeper ]; then
    echo creating zookeeper data dir...
    mkdir /tmp/zookeeper
    echo $1 > /tmp/zookeeper/myid
fi
# echo starting zookeeper 
$KAFKA_HOME/bin/zookeeper-server-start.sh /vagrant/config/zookeeper.properties > /tmp/zookeeper.log &
