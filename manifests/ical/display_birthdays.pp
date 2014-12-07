# Public: Display birthdays in iCal
class osx::ical::display_birthdays {
  boxen::osx_defaults { 'Display birthdays in iCal':
    domain => 'com.apple.iCal',
    key    => 'display birthdays calendar',
    type   => 'boolean',
    value  => true,
    user   => $::boxen_user
  }
}
