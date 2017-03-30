# Fixes a wordpress bug
exec { 'fix_typo':
  command => 'sed -i "s|.phpp|.php|g" /var/www/html/wp-settings.php',
  path    => ['/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin'],
}
