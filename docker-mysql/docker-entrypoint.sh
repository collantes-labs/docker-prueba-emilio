#!/bin/bash

mysql -uroot -p"$MYSQLDB_ROOT_PASSWORD" -e "
  GRANT ALL PRIVILEGES ON mysqldb.* TO 'emiliouser'@'%' IDENTIFIED BY '12345678'; 
  FLUSH PRIVILEGES;
"