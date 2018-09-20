#!/bin/bash
echo "flumetohdfs_agent.sources.source_from_kafka.zookeeperConnect = $FLUME_ZOOKEEPER_CONNECT" >> /config/$KAFKA_TOPIC.conf
/app/bin/flume-ng agent --conf /config/ -n flumetohdfs_agent -f /config/$KAFKA_TOPIC.conf
