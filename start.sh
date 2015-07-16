#!/bin/sh

PATH=/usr/pgsql-9.5/bin:$PATH

initdb -D ./data --no-locale -E utf-8 -k
pg_ctl -w -D ./data -l postgres.log start
createdb dbt3
