# Install WP
echo "----------------- before if -----------------"
if [ ! -f "${WP_PATH}/wp-config.php" ]; then

  echo "----------------- if -----------------"
  # # Download Wordpress
  wp core download --path=$WP_PATH --allow-root

  # Config wordpress database
  wp config create --dbname=$SQL_DATABASE \
              --dbuser=$SQL_USER \
              --dbpass=$SQL_PASSWORD \
              --dbhost=mariadb:3306 \
              --allow-root \
              --path=$WP_PATH

  echo "config create"

  # Config wordpress core
  wp core install --url=$WP_URL \
              --title=$WP_TITLE \
              --admin_user=$WP_ADMIN_USER \
              --admin_password=$WP_ADMIN_PASS \
              --admin_email=$WP_ADMIN_EMAIL \
              --allow-root \
              --path=$WP_PATH

  echo "wp core install"

  wp user create $WP_USER $WP_USER_EMAIL \
              --allow-root \
              --path=$WP_PATH

  echo "wp user create"

fi

echo "end if"
# Run PHP
mkdir -p /run/php

echo "RUN php"

php-fpm7.4 -F