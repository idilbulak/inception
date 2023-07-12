<?php
define( 'DB_NAME', 'wordpress' );
define( 'DB_USER', 'user' );
define( 'DB_PASSWORD', 'user' );
define( 'DB_HOST', 'mariadb' );
define( 'DB_CHARSET', 'utf8' );
define( 'DB_COLLATE', '' );

define('AUTH_KEY',         'jdlsjdldnfofejsf832540932prijnehdr4012eioqwjdah-923irje39uipoj39');
define('SECURE_AUTH_KEY',  'jdlaln37y28ihdnejfcb-92fjdkndlcbhdv03i29-edjnfcljf-23ioekp2-23ie');
define('LOGGED_IN_KEY',    'jdlaln37y28ihdnejfcb-92fjdkndlcbhdv03i29-edjnfcljf-23ioekp2-23ie');
define('NONCE_KEY',        'jdlaln37y28ihdnejfcb-92fjdkndlcbhdv03i29-edjnfcljf-23ioekp2-23ie');
define('AUTH_SALT',        'jdlaln37y28ihdnejfcb-92fjdkndlcbhdv03i29-edjnfcljf-23ioekp2-23ie');
define('SECURE_AUTH_SALT', 'jdlaln37y28ihdnejfcb-92fjdkndlcbhdv03i29-edjnfcljf-23ioekp2-23ie');
define('LOGGED_IN_SALT',   'jdlaln37y28ihdnejfcb-92fjdkndlcbhdv03i29-edjnfcljf-23ioekp2-23ie');
define('NONCE_SALT',       'jdlaln37y28ihdnejfcb-92fjdkndlcbhdv03i29-edjnfcljf-23ioekp2-23ie');
$table_prefix = 'wp_';
define( 'WP_DEBUG', false );
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', '/var/www/html/wordpress' );
}
require_once ABSPATH . 'wp-settings.php';
