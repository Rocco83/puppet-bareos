# Class: bareos::run::storage
#
# This class contain the service configuration for bareos
#
# Parameters:   This module has no parameters
#
# Actions:      This module has no actions
#
# Requires:     This module has no requirements
#
# Sample Usage: include bareos::run::storage
#
class bareos::run::storage {

  # bareos service configuration
  service {
    $bareos::params::service_storage:
      ensure  => 'running',
      enable  => true,
      require => Package[$bareos::params::package_storage];
  }
}
