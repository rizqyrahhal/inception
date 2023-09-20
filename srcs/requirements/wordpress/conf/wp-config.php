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
 * * ABSPATH
 *
 * @link https://wordpress.org/documentation/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** Database settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'todo-list' );

/** Database username */
define( 'DB_USER', 'inception' );

/** Database password */
define( 'DB_PASSWORD', '1337leet' );

/** Database hostname */
define( 'DB_HOST', 'mariadb:3306' );

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
define('AUTH_KEY',         'Y-E+y=swK)$]UJI2I;E{CyH$>dPmA-6[|OykDQ7y$,@XchsKvXflEXzCcm^5RueT');
define('SECURE_AUTH_KEY',  'fdG+PCf1lk@/zS{3jN}.n-gukbA?<60tP$g@_fxu0!Eg0[Dl7 dWwPI,kiD5*{Nl');
define('LOGGED_IN_KEY',    'D-/~yg||:ao7OYbTBlqW|+ci_(vM*FH@r s3d,EHVQA[CO+eJOs<v)+=eYx;L|zG');
define('NONCE_KEY',        '((Mqi1j-Q~H2HSz]cYg8I}2s|0>Ba6+?KZc}U5+1Ito8 B~dPb-Ka:|X#kBF;^+z');
define('AUTH_SALT',        'K}V:>i_qJFu(:AMus6337TpWY+[Z$I5N.g!R<7@ `RlJIK>_qlO}AnA #>Wtw)/e');
define('SECURE_AUTH_SALT', 'o-nz7wM26|(WF@A8SwgAa3^;Q01={qg@<^r^ G-TjV]`H0eSAf:lnPaC2|&6|x.E');
define('LOGGED_IN_SALT',   'N!oP-}R3;dg@l! :b`u6sFE)S-2=[|/^=R=^YQNrSqSbLW:qQ0m`bK~eC6NuLnd$');
define('NONCE_SALT',       '}Tf.+|o{5]d{@nds{Msc~yc%z7D.sP(=wb7ZVm.l#c6G-Jm-bt^*bjzJS058|j .');
/**#@-*/

/**
 * WordPress database table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';

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
 * @link https://wordpress.org/documentation/article/debugging-in-wordpress/
 */
define( 'WP_DEBUG', true );
define('WP_DEBUG', true);
define('WP_DEBUG_LOG', true);
define('WP_DEBUG_DISPLAY', false);

/* Add any custom values between this line and the "stop editing" line. */



/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
