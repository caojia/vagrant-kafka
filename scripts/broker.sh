#!/bin/bash

ENV_PATH=`dirname $0`/env.sh

if [ -f $ENV_PATH ]; then
  source $ENV_PATH
else
  KAFKA_HOME=/opt/kafka
fi
#bootstrap server
$KAFKA_HOME/bin/kafka-server-start.sh /vagrant/config/server$1.properties &
