#!/bin/sh -eu
cd /docker-entrypoint-initdb.d/
if [ -z "${IS_CI}" ]; then
  echo "import sql"
  for file in `\find sql -name '*.sql' | sort`; do
    echo ${file}
    MYSQL_PWD=${MYSQL_PASSWORD} mysql -h localhost -u $MYSQL_USER -P 3306 $MYSQL_DATABASE < ${file}
  done
  echo "end"
fi
