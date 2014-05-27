#!/bin/bash

source `dirname $0`/env.sh
if [ $# -gt 0 ]; then
    $KAFKA_HOME/bin/kafka-console-consumer.sh --from-beginning --topic $1 --zookeeper 10.30.3.2,10.30.3.3,10.30.3.4
else
    echo "Usage: consumer.sh <topic_name>"
fi

