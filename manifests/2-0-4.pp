# Public: Install grails 2.0.4 into Homebrew
#
# Examples
#
#   include grails::2-0-4
class grails::2-0-4 {
  include homebrew

  homebrew::formula { 'grails':
    before => Package['boxen/brews/grails'],
  }

  package { 'boxen/brews/grails':
    ensure => '2.0.4-boxen1'
  }
}
