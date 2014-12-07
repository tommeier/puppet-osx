# Public: Enable iCal timezone support
class osx::ical::enable_timezone_support {
  boxen::osx_defaults { 'Enable iCal timezone support':
    domain => 'com.apple.iCal',
    key    => 'TimeZone support enabled',
    type   => 'boolean',
    value  => true,
    user   => $::boxen_user
  }
}
