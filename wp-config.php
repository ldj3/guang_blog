<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the
 * installation. You don't have to use the web site, you can
 * copy this file to "wp-config.php" and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * MySQL settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://codex.wordpress.org/Editing_wp-config.php
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define('DB_NAME', 'guangjian');

/** MySQL database username */
define('DB_USER', 'root');

/** MySQL database password */
define('DB_PASSWORD', 'root');

/** MySQL hostname */
define('DB_HOST', 'localhost');

/** Database Charset to use in creating database tables. */
define('DB_CHARSET', 'utf8mb4');

/** The Database Collate type. Don't change this if in doubt. */
define('DB_COLLATE', '');

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         'T*#,R0Q}/3/h,exVSWS/RoxcU^|OC6bWrq0v>l+-3yR,B.k]`oi1.(ZaVJ>0i;jq');
define('SECURE_AUTH_KEY',  '|!tCM{vMWUrZq^Y78L5YVhWtCAvI)6~1>D+e:t>WNi5hK_@@@V7!_iFPnm^P^UAE');
define('LOGGED_IN_KEY',    'mQl8jl`Ked<_s4stl|o/tz=n6&iIxTZr/I]j#N|Z~^#5x|`( U|J^4dapvG9tWI7');
define('NONCE_KEY',        '.w.8jLKcKaemOmeo:7cZ]ab)UH5a In4H8_/3*eQx7K  7*?9E^^+HwN<d0JRv}<');
define('AUTH_SALT',        'N2ui9Q*)cV.bLM]2wH1$jvJ(c16D/,fE(brLn!%bY}QqxfK3tG!.pFs@~o(*@kI%');
define('SECURE_AUTH_SALT', '1@*+4VJD9{4-$q3nX4mAmyOsCQ967BuDv2M]g.*JYGunf>!d~~41,h[6o|dvnpA3');
define('LOGGED_IN_SALT',   'URa*_z6xA^U*t?Qiz.h:X1zVXMINC9Rjo9=/{,lS[ZNnt}P3`it$gzr4CO{3Vx;7');
define('NONCE_SALT',       'zIn7&>~Psl3~NHt;*GZO?y4[EfXpHd593<*i+f@ln&0ujE_;~`bNs`KmJ}$[5wnU');

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix  = 'phome_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the Codex.
 *
 * @link https://codex.wordpress.org/Debugging_in_WordPress
 */
define('WP_DEBUG', false);

/* That's all, stop editing! Happy blogging. */

/** Absolute path to the WordPress directory. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Sets up WordPress vars and included files. */
require_once(ABSPATH . 'wp-settings.php');
