#!/bin/sh

#DBNAME=dbt3_brin
DBNAME=dbt3

function run_one()
{
    if [ ! -f $1 ]; then
	echo "File \`$1\` not found."
	exit 1
    fi

    echo explain > tmp.sql
    cat $1 >> tmp.sql

    psql -f tmp.sql $DBNAME

    echo 'set statement_timeout to 600000;' >> tmp.sql
    echo '\timing' > tmp.sql
    echo explain analyze >> tmp.sql
    cat $1 >> tmp.sql

    psql -f tmp.sql $DBNAME
    psql -f tmp.sql $DBNAME
    psql -f tmp.sql $DBNAME
    psql -f tmp.sql $DBNAME

    rm -f tmp.sql
}

psql -c analyze $DBNAME

run_one queries/1.sql | tee 1.out
run_one queries/2.sql | tee 2.out
run_one queries/3.sql | tee 3.out
run_one queries/4.sql | tee 4.out
run_one queries/5.sql | tee 5.out
run_one queries/6.sql | tee 6.out
run_one queries/7.sql | tee 7.out
run_one queries/8.sql | tee 8.out
run_one queries/9.sql | tee 9.out
run_one queries/10.sql | tee 10.out
run_one queries/11.sql | tee 11.out
run_one queries/12.sql | tee 12.out
run_one queries/13.sql | tee 13.out
run_one queries/14.sql | tee 14.out
run_one queries/15.sql | tee 15.out
run_one queries/16.sql | tee 16.out
run_one queries/17.sql | tee 17.out
run_one queries/18.sql | tee 18.out
run_one queries/19.sql | tee 19.out
run_one queries/20.sql | tee 20.out
run_one queries/21.sql | tee 21.out
run_one queries/22.sql | tee 22.out
