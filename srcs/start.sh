#!/bin/bash

service nginx start
service php7.3-fpm start
service mysql start

./mysql.sh

sleep infinity & wait
