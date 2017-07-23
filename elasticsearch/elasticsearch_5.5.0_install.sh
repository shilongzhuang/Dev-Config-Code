#!/bin/sh
cd /data
wget https://artifacts.elastic.co/downloads/elasticsearch/elasticsearch-5.5.0.rpm
rpm -i elasticsearch-5.5.0.rpm
rm -rf /data/elasticsearch
rm -rf /data/logs/elasticsearch
mkdir /data/elasticsearch
mkdir /data/logs/elasticsearch
chown elasticsearch:elasticsearch /data/elasticsearch
chown elasticsearch:elasticsearch /data/logs/elasticsearch
chkconfig elasticsearch on
echo "JAVA_HOME=\"/data/jdk\"" >>/etc/sysconfig/elasticsearch
echo "ES_JAVA_OPTS=\"-Xms32g -Xmx32g\"" >>/etc/sysconfig/elasticsearch
echo "cluster.name: Sirius" >> /etc/elasticsearch/elasticsearch.yml
echo "network.host : 0.0.0.0" >> /etc/elasticsearch/elasticsearch.yml
echo "path.data: /data/elasticsearch" >> /etc/elasticsearch/elasticsearch.yml
echo "path.logs: /data/logs/elasticsearch" >> /etc/elasticsearch/elasticsearch.yml
echo "bootstrap.memory_lock: false" >> /etc/elasticsearch/elasticsearch.yml
echo "bootstrap.system_call_filter: false" >> /etc/elasticsearch/elasticsearch.yml
echo "elasticsearch soft nproc 2048"  >> /etc/security/limits.conf
echo "elasticsearch hard nproc 2048" >> /etc/security/limits.conf
echo "elasticsearch  -  nofile  65536" >> /etc/security/limits.conf
