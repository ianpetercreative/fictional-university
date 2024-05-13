<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the installation.
 * You don't have to use the web site, you can copy this file to "wp-config.php"
 * and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * Database settings
 * * Secret keys
 * * Database table prefix
 * * Localized language
 * * ABSPATH
 *
 * @link https://wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** Database settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'local' );

/** Database username */
define( 'DB_USER', 'root' );

/** Database password */
define( 'DB_PASSWORD', 'root' );

/** Database hostname */
define( 'DB_HOST', 'localhost' );

/** Database charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8' );

/** The database collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication unique keys and salts.
 *
 * Change these to different unique phrases! You can generate these using
 * the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}.
 *
 * You can change these at any point in time to invalidate all existing cookies.
 * This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',          'J5rY~~|JbUfp=zDXWV?n9/bw(.eokEWik6a>jr{I*(76l{!XJ&LFN[z-(;%; KHW' );
define( 'SECURE_AUTH_KEY',   '0L?x7k; Z]}|+ CN3Ty#`[xZYS!&i]B,gakR?kF^;9VUzU_}1 5|:67EcY0?W`D ' );
define( 'LOGGED_IN_KEY',     'c_r)pCQ?S:rM,pAW6Tn8`n/wJ~I}4an*SWM=H#Yt=)b;!x30Qv`/D5{wF+m-1^1k' );
define( 'NONCE_KEY',         'fL>G+`vOH&{k+8^4=*@iNeb-fRI+~wx*H@F;J~/*.1MSn/1{6!HT%2/Q}+*^cbhf' );
define( 'AUTH_SALT',         'dVj=(}^q3S`?3}G6+IE^3k;d]Z`ggXN25Yp[uB?OU}%01Ly9Q<)[pX>ElWtT8 N#' );
define( 'SECURE_AUTH_SALT',  'iq[)@#fP<eQ$2]skv)LUoKMWux;p47y|JI!,)Its2UdF`=X?9AzZvb&Y,4$vC9^+' );
define( 'LOGGED_IN_SALT',    '{l(Vraq`wyJv/p6Q@&,v$3kO/8j %v4m-m6]UTrW$d<?Rb F,S|ER2|j-`v%BZ6D' );
define( 'NONCE_SALT',        'BQ^2}z.aseGpHGVIS.-[sNvD#7Kms~^Qj(-S1:It].Ey88]KiBp<)&u8 $4@#~[9' );
define( 'WP_CACHE_KEY_SALT', 'U_<GX@3hJnNr(^as^{w`7Y<l)n9&z$F&GiNO$H^&tTnx./Oq$mg;|/v#LvwSRX3x' );


/**#@-*/

/**
 * WordPress database table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';


/* Add any custom values between this line and the "stop editing" line. */



/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the documentation.
 *
 * @link https://wordpress.org/support/article/debugging-in-wordpress/
 */
if ( ! defined( 'WP_DEBUG' ) ) {
	define( 'WP_DEBUG', false );
}

define( 'WP_ENVIRONMENT_TYPE', 'local' );
/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
