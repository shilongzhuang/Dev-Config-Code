ps -ef | grep influxdb | grep -v grep | awk '{print $2}' | xargs kill -9
sleep 10
nohup /data/influxdb/influxdb/usr/bin/influxd -config /data/influxdb/influxdb/etc/influxdb/influxdb.conf > /dev/null 2>&1 &
