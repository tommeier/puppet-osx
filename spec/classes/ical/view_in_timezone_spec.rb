require 'spec_helper'

describe 'osx::ical::view_in_timezone' do
  let(:facts) { {:boxen_user => 'ilikebees'} }

  describe "with a valid time zone" do
    let(:params) { {:time_zone => 'Australia/Melbourne'} }

    it do
      should contain_boxen__osx_defaults('view iCal in time zone').with({
        :domain => 'com.apple.iCal',
        :key    => 'lastViewsTimeZone',
        :value  => params[:time_zone],
        :user   => facts[:boxen_user]
      })
    end
  end
end
