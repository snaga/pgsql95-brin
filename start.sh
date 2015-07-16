#!/bin/sh

PATH=/usr/pgsql-9.5/bin:$PATH

initdb -D ./data --no-locale -E utf-8 -k

pt-config --apply -D ./data set shared_buffers 4GB
pt-config --apply -D ./data set wal_buffers 32MB
pt-config --apply -D ./data set checkpoint_segments 64
pt-config --apply -D ./data set checkpoint_timeout 60min
pt-config --apply -D ./data set log_line_prefix "'[%t] %p: '"
pt-config --apply -D ./data set maintenance_work_mem 2GB
pt-config --apply -D ./data set work_mem 2GB

pg_ctl -w -D ./data -l postgres.log start
createdb dbt3
