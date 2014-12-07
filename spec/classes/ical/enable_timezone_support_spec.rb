require 'spec_helper'

describe 'osx::ical::enable_timezone_support' do
  let(:facts) { {:boxen_user => 'ilikebees'} }

  it do
    should contain_boxen__osx_defaults('Enable iCal timezone support').with({
      :domain => 'com.apple.iCal',
      :key    => 'TimeZone support enabled',
      :type   => 'boolean',
      :value  => true,
      :user   =>  facts[:boxen_user]
    })
  end
end
