# Public: Install grails 2.0.3 into Homebrew
#
# Examples
#
#   include grails::2-0-3
class grails::2-0-3 {
  include homebrew

  homebrew::formula { 'grails':
    before => Package['boxen/brews/grails-2-0-3'],
  }

  package { 'boxen/brews/grails-2-0-3':
    ensure => '2.0.3-boxen1'
  }
}
