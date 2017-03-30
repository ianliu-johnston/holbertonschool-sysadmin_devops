# kill a process
exec { 'pkill_killmenow':
  command => 'pkill -f killmenow',
  path    => ['/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games'],
}
