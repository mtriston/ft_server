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
define('DB_NAME', 'wordpress');

/** MySQL database username */
define('DB_USER', 'root');

/** MySQL database password */
define('DB_PASSWORD', '');

/** MySQL hostname */
define('DB_HOST', 'localhost');

/** Database Charset to use in creating database tables. */
define('DB_CHARSET', 'utf8');

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
define('AUTH_KEY',         'K>>$Yz/#L*l2LP@@:y hYdp!N42ci|K-/Un^ +%Wuhx{]7:^cm0$`pua=#/%XV+-');
define('SECURE_AUTH_KEY',  '$A[g6<Viw*=a]Hm)-SlRBiFKSb-1<Iqf,91M7`3$juR>/UDk+-KAg+ XU}+7BQ,6');
define('LOGGED_IN_KEY',    ' mdIuHe(^  /e^WBw$[@)u+=oM4jA2B)d.806Z0UmXVFim|;BoE-[9l-zzD6ze@:');
define('NONCE_KEY',        'fh-}8e@g1l=yrlA(-qT=JOoZ]vBBD629kxe:fe3`/5^,,CL?N8Ow8K(1&s;VaQWs');
define('AUTH_SALT',        'fcqFJug_O *|y?A~`+p5G_SJwt~W=n,_PzY-O~:V#x[y}Z*{|`E_z~yy+. VAC1=');
define('SECURE_AUTH_SALT', '^l1=XT.GTf@|eFoBUJZCsU1J8|=>Nu-y,q87oTE2?3Ony#vx+)6U=-)[$o4B-yf-');
define('LOGGED_IN_SALT',   '2|WB%aW2zGJX_r*H{X#o|Ni>& FT+)=pQ@/7RiLd|MrT#Gq%+fwaYv?sUrrHxc_|');
define('NONCE_SALT',       ':[z:I!hx!rOl[];=1,%!/aV`Q!:9&~Wa<y+e9W=s*a);.M IB-)+ag$/5n,+=Cky');

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix  = 'wp_';

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
