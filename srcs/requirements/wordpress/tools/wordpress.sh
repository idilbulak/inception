#!/bin/bash

	set -e

	chown -R www-data:www-data /var/www/*;
	chown -R 755 /var/www/*;
	mkdir -p /run/php/;
	touch /run/php/php7.3-fpm.pid;

if [ ! -f /var/www/html/wp-config.php ]; then
	mkdir -p /var/www/html
	wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar;
	chmod +x wp-cli.phar; 
	mv wp-cli.phar /usr/local/bin/wp;
	cd /var/www/html;
	wp core download --allow-root;
	echo "wp core ok"
	mv /var/www/wp-config.php /var/www/html/
	wp core install --allow-root --url='ibulak.42.fr' --title='wordpress' --admin_user=${SUPERUSER} --admin_password=${SUPERUSER_PASSWORD} --admin_email=${SUPERUSER_EMAIL}
	echo "wp install with admin ok"
	wp user create --allow-root ${USER} ${USER_EMAIL} --user_pass=${USER_PASSWORD};
	echo "wp user create ok"
fi

exec "$@"
