service mariadb start;

sleep 10


mysql -u root -p$SQL_ROOT_PASSWORD -e "CREATE DATABASE IF NOT EXISTS \`${SQL_DATABASE_NAME}\`;" # Create SQL database with env variable name SQL_DATABASE
mysql -u root -p$SQL_ROOT_PASSWORD -e "CREATE USER IF NOT EXISTS \`${SQL_USER_NAME}\`@'localhost' IDENTIFIED BY '${SQL_USER_PASSWORD}';" # Create user SQL_USER with password SQL_PASSWORD
mysql -u root -p$SQL_ROOT_PASSWORD -e "GRANT ALL PRIVILEGES ON \`${SQL_DATABASE_NAME}\`.* TO \`${SQL_USER_NAME}\`@'%' IDENTIFIED BY '${SQL_USER_PASSWORD}';" # Grant full rights to the user
mysql -u root -p$SQL_ROOT_PASSWORD -e "FLUSH PRIVILEGES;" # Refresh

mysqladmin -u root -p$SQL_ROOT_PASSWORD shutdown

 exec mysqld_safe