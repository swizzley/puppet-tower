# Class tower::params
class tower::params {
  
  $epel = true #install epel
  $pkg = 'ansible'
  $tower_fqdn = 'tower.contoso.com' #ansible tower

  $config = undef #config file 
  $inventory = undef #inventory file
  $extra = undef #additional args

  if ($config == undef and $inventory == undef and $extra == undef) {
    $tower_opts = undef
  } elsif ($config != undef and $inventory == undef and $extra == undef) {
    $tower_opts = "-c ${config}"
  } elsif ($config != undef and $inventory != undef and $extra == undef) {
    $tower_opts = "-c ${config} -i ${inventory}"
  } elsif ($config != undef and $inventory != undef and $extra != undef) {
    $tower_opts = "-c ${config} -i ${inventory} -e ${extra}"
  } elsif ($config == undef and $inventory != undef and $extra == undef) {
    $tower_opts = "-i ${inventory}"
  } elsif ($config == undef and $inventory != undef and $extra != undef) {
    $tower_opts = "-i ${inventory} -e ${extra}"
  } elsif ($config != undef and $inventory != undef and $extra == undef) {
    $tower_opts = "-c ${config} -i ${inventory} "
  } elsif ($config != undef and $inventory == undef and $extra != undef) {
    $tower_opts = "-c ${config} -e ${extra} "
  } elsif ($config == undef and $inventory == undef and $extra != undef) {
    $tower_opts = "-e ${extra} "
  }
 

}