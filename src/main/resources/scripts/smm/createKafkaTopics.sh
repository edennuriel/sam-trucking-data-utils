#!/bin/bash
if [ $# -ne 1 ]; then
        echo "Please pass ZK:Port to run as the first argument."
else
	/usr/hdp/current/kafka-broker/bin/kafka-topics.sh \
	--create \
	--zookeeper $1 \
	--replication-factor 2 \
	--partitions 4 \
	--topic gateway-west-raw-sensors;

	/usr/hdp/current/kafka-broker/bin/kafka-topics.sh \
	--create \
	--zookeeper $1 \
	--replication-factor 2 \
	--partitions 4 \
	--topic gateway-central-raw-sensors;

	/usr/hdp/current/kafka-broker/bin/kafka-topics.sh \
	--create \
	--zookeeper $1 \
	--replication-factor 2 \
	--partitions 4 \
	--topic gateway-east-raw-sensors;
	
	/usr/hdp/current/kafka-broker/bin/kafka-topics.sh \
	--create \
	--zookeeper $1 \
	--replication-factor 2 \
	--partitions 5 \
	--topic gateway-europe-raw-sensors;	

	/usr/hdp/current/kafka-broker/bin/kafka-topics.sh \
	--create \
	--zookeeper $1 \
	--replication-factor 2 \
	--partitions 3 \
	--topic syndicate-geo-event-avro;

	/usr/hdp/current/kafka-broker/bin/kafka-topics.sh \
	--create \
	--zookeeper $1 \
	--replication-factor 2 \
	--partitions 3 \
	--topic syndicate-speed-event-avro;

	/usr/hdp/current/kafka-broker/bin/kafka-topics.sh \
	--create \
	--zookeeper $1 \
	--replication-factor 2 \
	--partitions 3 \
	--topic syndicate-geo-event-json;

	/usr/hdp/current/kafka-broker/bin/kafka-topics.sh \
	--create \
	--zookeeper $1 \
	--replication-factor 2 \
	--partitions 3 \
	--topic syndicate-speed-event-json;

	/usr/hdp/current/kafka-broker/bin/kafka-topics.sh \
	--create \
	--zookeeper $1 \
	--replication-factor 2 \
	--partitions 3 \
	--topic alerts-speeding-drivers;
	
	/usr/hdp/current/kafka-broker/bin/kafka-topics.sh \
	--create \
	--zookeeper $1 \
	--replication-factor 2 \
	--partitions 3 \
	--topic syndicate-oil;	
	
	/usr/hdp/current/kafka-broker/bin/kafka-topics.sh \
	--create \
	--zookeeper $1 \
	--replication-factor 2 \
	--partitions 3 \
	--topic syndicate-battery;
	
	/usr/hdp/current/kafka-broker/bin/kafka-topics.sh \
	--create \
	--zookeeper $1 \
	--replication-factor 2 \
	--partitions 3 \
	--topic syndicate-transmission;
	
	/usr/hdp/current/kafka-broker/bin/kafka-topics.sh \
	--create \
	--zookeeper $1 \
	--replication-factor 2 \
	--partitions 5 \
	--topic syndicate-all-geo-critical-events;
				
fi