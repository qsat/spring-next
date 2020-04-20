#!/bin/sh

HOST=${DB_HOST:-127.0.0.1}
PORT=${DB_PORT:-3306}
USERNAME=${DB_USER:-test}
PASSWORD=${DB_PASSWORD:-test}

cd `dirname $0`
mysql -h $HOST --port $PORT -u $USERNAME -p$PASSWORD < 00_schema.sql
mysql -h $HOST --port $PORT -u $USERNAME -p$PASSWORD rmail < 01_initial.sql
