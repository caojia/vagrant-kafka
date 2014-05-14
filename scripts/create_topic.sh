#!/bin/bash

source `dirname $0`/env.sh
if [ $# -gt 0 ]; then
    $KAFKA_HOME/bin/kafka-topics.sh --create --zookeeper 10.30.3.2:2181 --replication-factor 3 --partition 2 --topic
else
    echo "Usage: create_topic.sh <topic_name>"
fi

