mysql --user=root --execute="CREATE DATABASE wordpress;"
mysql --user=root --execute="GRAND ALL PRIVILEGES ON wordpress.* TO 'root'@'localhost' WITH GRANT OPTION;"
mysql --user=root --execute="update mysql.user set plugin = 'mysql_native_password' where User='root';"
mysql --user=root --execute="FLUSH PRIVILEGES;"
