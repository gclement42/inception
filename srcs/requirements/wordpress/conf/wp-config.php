<?php
/**
 * Custom WordPress configurations on "wp-config.php" file.
 *
 * This file has the following configurations: MySQL settings, Table Prefix, Secret Keys, WordPress Language, ABSPATH and more.
 * For more information visit {@link https://codex.wordpress.org/Editing_wp-config.php Editing wp-config.php} Codex page.
 * Created using {@link http://generatewp.com/wp-config/ wp-config.php File Generator} on GenerateWP.com.
 *
 * @package WordPress
 * @generator GenerateWP.com
 */


/* MySQL settings */
define( 'DB_NAME',     'database_name_here' );
define( 'DB_USER',     'username_here' );
define( 'DB_PASSWORD', 'password_here' );
define( 'DB_HOST',     'localhost' );
define( 'DB_CHARSET',  'utf8mb4' );


/* MySQL database table prefix. */
$table_prefix = 'wp_';


/* Authentication Unique Keys and Salts. */
/* https://api.wordpress.org/secret-key/1.1/salt/ */
define('AUTH_KEY',         '$|%|)qOx>kVB|{C[=se> >(>|6LG[3-*++Tjh+GaHygUDz>}jC<qjoG],`x9me}X');
define('SECURE_AUTH_KEY',  'QAol1ovK$-)3+D*DG r|DCn|$|IzjO*[%i*+KWs,`8b~6|bz[a+CzNadH)Ajda+1');
define('LOGGED_IN_KEY',    'x.dBLKvga-oi/P`ZP!_.K?9m;fE%9<[L@Khi@jnj|=-TQsw$,x]2.YGE{@sT=-M3');
define('NONCE_KEY',        'qc*H8<1H/E4%[>Q6Fp$f?m,4xDG^17rb7#e^w%2]MZSr6W(I!OrDWX)Ek[|zh d2');
define('AUTH_SALT',        'R8kux}+KE -;$sT4;X6LQrQ0w/;d@uT%Dg+XQ,mRBpnysEGe)+~09DG&A;8&>`p^');
define('SECURE_AUTH_SALT', ']!gbE*97R;@R6606]G*~Z{^B-avk_7>3Vjd+JG;v~!cn  Ur6fXD|+K2ycS=KPzG');
define('LOGGED_IN_SALT',   '+|Y&rA@Z6_m+}T{fnrCt+XnEhWueSe=bSO>S$_}f93rOHb8+`cgEI_35<WJ1-3lA');
define('NONCE_SALT',       '+eO-^C@|mu36=XOCkKNqf+A2{N~w;C6m+7#)?ilK1wRI#^ z({nb&x/qOUZKpHpJ');


/* Absolute path to the WordPress directory. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/* Sets up WordPress vars and included files. */
require_once(ABSPATH . 'wp-settings.php');

?>