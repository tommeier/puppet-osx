require 'spec_helper'

describe 'osx::ical::display_birthdays' do
  let(:facts) { {:boxen_user => 'ilikebees'} }

  it do
    should contain_boxen__osx_defaults('Display birthdays in iCal').with({
      :domain => 'com.apple.iCal',
      :key    => 'display birthdays calendar',
      :type   => 'boolean',
      :value  => true,
      :user   => facts[:boxen_user]
    })
  end
end
