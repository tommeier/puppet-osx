# Public: Sets the time zone iCal is viewed in by default
#
# time_zone - 'country/zone' format. Eg: 'Australia/Melbourne'
#
# Example
#
#   # set the time zone for viewing in iCal
#   class { 'osx::ical::view_in_timezone':
#     time_zone => 'Australia/Melbourne'
#   }
class osx::ical::view_in_timezone($time_zone = undef) {
  validate_string($time_zone)

  boxen::osx_defaults { 'view iCal in time zone':
    domain => 'com.apple.iCal',
    key    => 'lastViewsTimeZone',
    value  => $time_zone,
    user   => $::boxen_user
  }
}
