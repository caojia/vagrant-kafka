#!/bin/bash
VERSION=0.8.1.1
yum groupinstall -y "Development Tools"
yum install -y git
yum install -y java-1.7.0-openjdk

#download rpm if not present
if [ ! -f "/vagrant/kafka-build/kafka_2.9.2-$VERSION.tgz" ]; then
    echo Downloading kafak
    mkdir -p /vagrant/kafka-build
    wget http://apache.fayea.com/apache-mirror/kafka/$VERSION/kafka_2.9.2-$VERSION.tgz -P /vagrant/kafka-build/ -o /tmp/wget.log
fi

echo Installing kafka
tar xvfz /vagrant/kafka-build/kafka_2.9.2-$VERSION.tgz -C /tmp/
mkdir -p /opt/kafka
cp -rf /tmp/kafka_2.9.2-$VERSION/* /opt/kafka/ && rm -rf /tmp/kafka_2.9.2-$VERSION

#disabling iptables
/etc/init.d/iptables stop
# chmod scripts
chmod u+x /vagrant/scripts/*.sh
