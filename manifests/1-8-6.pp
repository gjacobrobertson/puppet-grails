# Public: Install groovy 1.8.6 into Homebrew
#
# Examples
#
#   include groovy::1-8-6
class groovy::1-8-6 {
  include homebrew

  homebrew::formula { 'groovy':
    before => Package['boxen/brews/groovy'],
  }

  package { 'boxen/brews/groovy':
    ensure => '1.8.6-boxen1'
  }
}
