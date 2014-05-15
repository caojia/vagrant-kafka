#!/bin/bash

source `dirname $0`/env.sh
if [ $# -gt 0 ]; then
    $KAFKA_HOME/bin/kafka-topics.sh --create --zookeeper 10.30.3.2,10.30.3.3,10.30.3.4 --replication-factor 3 --partition 2 --topic $1
else
    echo "Usage: create_topic.sh <topic_name>"
fi

