### Influxdb Download

```sh
wget https://dl.influxdata.com/influxdb/releases/influxdb-1.3.1_linux_amd64.tar.gz
tar -xvfz influxdb-1.3.1_linux_amd64.tar.gz
ln -s influxdb-1.3.1-1/ influxdb
```

### Influxdb Common Query

```sql
SHOW DATABASES
CREATE DATABASE "db_name"
DROP DATABASE "db_name"
```

```sql
SHOW MEASUREMENTS
SHOW TAG KEYS FROM "measurement_name"
SHOW TAG VALUES FROM "measurement_name" WITH KEY = "tag_key"
```

```sql
SHOW RETENTION POLICIES ON "db_name"
CREATE RETENTION POLICY "rp_name" ON "db_name" DURATION 30d REPLICATION 1 DEFAULT
DROP RETENTION POLICY "rp_name" ON "db_name"
```

```sql
SHOW CONTINUOUS QUERIES
CREATE CONTINUOUS QUERY "cq_name" ON "db_name" BEGIN SELECT min("field") INTO "target_measurement" FROM "current_measurement" GROUP BY time(30m) END
DROP CONTINUOUS QUERY "cq_name" ON "db_name"
```

```sql
SHOW USERS
CREATE USER "username" WITH PASSWORD 'password'
CREATE USER "username" WITH PASSWORD 'password' WITH ALL PRIVILEGES
DROP USER "username"
```

```sql
SHOW STATS
SHOW DIAGNOSTICS
```
