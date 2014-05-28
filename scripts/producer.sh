#!/bin/bash

source `dirname $0`/env.sh
if [ $# -gt 0 ]; then
    $KAFKA_HOME/bin/kafka-console-producer.sh --broker-list 10.30.3.2:9092,10.30.3.3:9092,10.30.3.4:9092 --topic $1
else
    echo "Usage: producer.sh <topic_name>"
fi

