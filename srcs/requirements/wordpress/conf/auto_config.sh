# Install WP
if [ ! -f "${WP_PATH}/wp-config.php" ]; then

  sleep 10

  # # Download Wordpress
   >&2 echo Downloading wordpress
  wp core download --allow-root --path=$WP_PATH \
   || (>&2 echo Error downloading wordpress; exit 1)

  # Config wordpress database
  wp config create --dbname=$SQL_DATABASE_NAME \
              --dbuser=$SQL_USER_NAME \
              --dbpass=$SQL_USER_PASSWORD \
              --dbhost=mariadb:3306 \
              --allow-root \
              --path=$WP_PATH


  # Config wordpress core
  wp core install --url=$WP_URL \
              --title=$WP_TITLE \
              --admin_user=$WP_ADMIN_USERNAME \
              --admin_password=$WP_ADMIN_PASSWORD \
              --admin_email=$WP_ADMIN_EMAIL \
              --allow-root \
              --path=$WP_PATH


  wp user create $WP_USER_NAME $WP_USER_EMAIL \
              --allow-root \
              --path=$WP_PATH


fi

# Run PHP
mkdir -p /run/php
php-fpm7.4 -F