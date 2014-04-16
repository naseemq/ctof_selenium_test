require 'spec_helper'
require_relative 'browser_spec_utils'

include BrowserSpecUtils
include ActionView::Helpers::TextHelper

describe 'Home' do

  include_context 'browser shared context'

  describe 'View Schedule' do

    it 'should be able to view sdg schedule', :browser, :suite => 'test' do
      sign_in_sdg_auth_user
      @register_modal.register_sdg_user

      @dashboard.schedule_day.should == "May 13, 2014"
      @dashboard.session_name.should == "Keynote"
      @dashboard.session_time.should include ("9:00:00 AM - 10:00:00 AM PST")

      @dashboard.click_next_day_button
      @dashboard.schedule_day.should == "May 14, 2014"
      @dashboard.session_name.should == "Day 2 Sessions"
      @dashboard.session_time.should include ("9:00:00 AM - 8:00:00 PM PST")

      @home.reset_user
    end
  end
end
