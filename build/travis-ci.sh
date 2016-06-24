#!/bin/bash

MYSQL_USER="root"
MYSQL_DATABASE="phpunit_tests"

composer install --no-interaction --prefer-source --dev

mysql -u ${MYSQL_USER} -e "CREATE DATABASE IF NOT EXISTS $MYSQL_DATABASE;"

sed -i 's/<!--//g' build/phpunit.xml
sed -i 's/-->//g' build/phpunit.xml
