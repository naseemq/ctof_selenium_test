require 'spec_helper'
require_relative 'browser_spec_utils'

include BrowserSpecUtils
include ActionView::Helpers::TextHelper

describe 'Home' do

  include_context 'browser shared context'

  describe 'View Schedule' do

    it 'should be able to view sdg schedule', :browser, :suite => 'smoke' do
      sign_in_sdg_auth_user
      @register_modal.register_sdg_user

      @dashboard.schedule_location.should == "Your San Diego Schedule"
      @dashboard.schedule_day.should == "May 13, 2014"
      @dashboard.session_name.should == "Keynote"
      @dashboard.session_time.should include ("9:00:00 AM - 10:00:00 AM PST")

      @dashboard.click_next_day_button
      @dashboard.schedule_day.should == "May 14, 2014"
      @dashboard.session_name.should == "Day 2 Sessions"
      @dashboard.session_time.should include ("9:00:00 AM - 8:00:00 PM PST")

      @home.reset_user
    end

    it 'should be able to view mtv schedule', :browser, :suite => 'regression' do
      sign_in_mtv_auth_user
      @register_modal.register_mtv_user

      @dashboard.schedule_location.should == "Your Mountain View Schedule"
      @dashboard.schedule_day.should == "May 13, 2014"
      @dashboard.session_name.should == "Keynote"
      @dashboard.session_time.should include ("9:00:00 AM - 10:00:00 AM PST")

      @dashboard.click_next_day_button
      @dashboard.schedule_day.should == "May 14, 2014"
      @dashboard.session_name.should == "Day 2 Sessions"
      @dashboard.session_time.should include ("9:00:00 AM - 8:00:00 PM PST")

      @home.reset_user
    end

    it 'should be able to view ban schedule', :browser, :suite => 'regression' do
      sign_in_ban_auth_user
      @register_modal.register_ban_user

      @dashboard.schedule_location.should == "Your Bangalore Schedule"
      @dashboard.schedule_day.should == "May 13, 2014"
      @dashboard.session_name.should == "Keynote"
      @dashboard.session_time.should include ("9:00:00 AM - 10:00:00 AM PST")

      @dashboard.click_next_day_button
      @dashboard.schedule_day.should == "May 14, 2014"
      @dashboard.session_name.should == "Day 2 Sessions"
      @dashboard.session_time.should include ("9:00:00 AM - 8:00:00 PM PST")

      @home.reset_user
    end

    it 'should be able to view bur schedule', :browser, :suite => 'regression' do
      sign_in_bur_auth_user
      @register_modal.register_bur_user

      @dashboard.schedule_location.should == "Your Burlingame Schedule"
      @dashboard.schedule_day.should == "May 13, 2014"
      @dashboard.session_name.should == "Keynote"
      @dashboard.session_time.should include ("9:00:00 AM - 10:00:00 AM PST")

      @dashboard.click_next_day_button
      @dashboard.schedule_day.should == "May 14, 2014"
      @dashboard.session_name.should == "Day 2 Sessions"
      @dashboard.session_time.should include ("9:00:00 AM - 8:00:00 PM PST")

      @home.reset_user
    end

    it 'should be able to view cmb schedule', :browser, :suite => 'regression' do
      sign_in_cmb_auth_user
      @register_modal.register_cmb_user

      @dashboard.schedule_location.should == "Your Cambridge Schedule"
      @dashboard.schedule_day.should == "May 13, 2014"
      @dashboard.session_name.should == "Keynote"
      @dashboard.session_time.should include ("9:00:00 AM - 10:00:00 AM PST")

      @dashboard.click_next_day_button
      @dashboard.schedule_day.should == "May 14, 2014"
      @dashboard.session_name.should == "Day 2 Sessions"
      @dashboard.session_time.should include ("9:00:00 AM - 8:00:00 PM PST")

      @home.reset_user
    end

    it 'should be able to view edm schedule', :browser, :suite => 'regression' do
      sign_in_edm_auth_user
      @register_modal.register_edm_user

      @dashboard.schedule_location.should == "Your Edmonton Schedule"
      @dashboard.schedule_day.should == "May 13, 2014"
      @dashboard.session_name.should == "Keynote"
      @dashboard.session_time.should include ("9:00:00 AM - 10:00:00 AM PST")

      @dashboard.click_next_day_button
      @dashboard.schedule_day.should == "May 14, 2014"
      @dashboard.session_name.should == "Day 2 Sessions"
      @dashboard.session_time.should include ("9:00:00 AM - 8:00:00 PM PST")

      @home.reset_user
    end

    it 'should be able to view mis schedule', :browser, :suite => 'regression' do
      sign_in_mis_auth_user
      @register_modal.register_mis_user

      @dashboard.schedule_location.should == "Your Mississauga Schedule"
      @dashboard.schedule_day.should == "May 13, 2014"
      @dashboard.session_name.should == "Keynote"
      @dashboard.session_time.should include ("9:00:00 AM - 10:00:00 AM PST")

      @dashboard.click_next_day_button
      @dashboard.schedule_day.should == "May 14, 2014"
      @dashboard.session_name.should == "Day 2 Sessions"
      @dashboard.session_time.should include ("9:00:00 AM - 8:00:00 PM PST")

      @home.reset_user
    end

    it 'should be able to view pln schedule', :browser, :suite => 'regression' do
      sign_in_pln_auth_user
      @register_modal.register_pln_user

      @dashboard.schedule_location.should == "Your Plano Schedule"
      @dashboard.schedule_day.should == "May 13, 2014"
      @dashboard.session_name.should == "Keynote"
      @dashboard.session_time.should include ("9:00:00 AM - 10:00:00 AM PST")

      @dashboard.click_next_day_button
      @dashboard.schedule_day.should == "May 14, 2014"
      @dashboard.session_name.should == "Day 2 Sessions"
      @dashboard.session_time.should include ("9:00:00 AM - 8:00:00 PM PST")

      @home.reset_user
    end

    it 'should be able to view rmt schedule', :browser, :suite => 'regression' do
      sign_in_rmt_auth_user
      @register_modal.register_rmt_user

      @dashboard.schedule_location.should == "Your Remote Schedule"
      @dashboard.schedule_day.should == "May 13, 2014"
      @dashboard.session_name.should == "Keynote"
      @dashboard.session_time.should include ("9:00:00 AM - 10:00:00 AM PST")

      @dashboard.click_next_day_button
      @dashboard.schedule_day.should == "May 14, 2014"
      @dashboard.session_name.should == "Day 2 Sessions"
      @dashboard.session_time.should include ("9:00:00 AM - 8:00:00 PM PST")

      @home.reset_user
    end

    it 'should be able to view wdh schedule', :browser, :suite => 'regression' do
      sign_in_wdh_auth_user
      @register_modal.register_wdh_user

      @dashboard.schedule_location.should == "Your Woodland Hills Schedule"
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
