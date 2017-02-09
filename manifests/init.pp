# Aix_no
#
# Manage /etc/tunables/nextboot on AIX using the no command and puppet
#
# @param value Value to set
# @param key Setting to change
define aix_no(
    $value,
    $key = $title,
) {

  exec { "aix_no->${key}":
    command => "no -p -o ${key}=${value}",
    unless  => "no -p -o ${key} | awk '{print \$3}' | grep ${value}",
    path    => ['/usr/sbin', '/usr/bin','/bin'],
  }
}
