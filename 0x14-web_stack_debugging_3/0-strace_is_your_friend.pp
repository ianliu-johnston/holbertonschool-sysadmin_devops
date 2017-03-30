# Fixes a wordpress bug
exec { '/bin/mv /var/www/html/wp-includes/class-wp-locale.phpp /var/www/html/wp-includes/class-wp-locale.php':
  creates => '/var/www/html/wp-includes/class-wp-locale.php',
}

->file { '/var/www/html/wp-includes/class-wp-locale.phpp',
  creates => '/var/www/html/wp-includes/class-wp-locale.phpp',
}
