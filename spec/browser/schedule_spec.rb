require 'spec_helper'
require_relative 'browser_spec_utils'

include BrowserSpecUtils
include ActionView::Helpers::TextHelper

describe 'Schedule' do

  include_context 'browser shared context'

  describe 'View Schedule' do

    it 'should be able to view sdg schedule', :browser, :suite => 'smoke' do
      sign_in_sdg_auth_user
      @home.reset_user
      @home.start @config_base_url
      @register_modal.register_sdg_user

      @dashboard.schedule_location.should == "CTOF @ San Diego"
      @dashboard.schedule_day.should == "May 13, 2014"
      @dashboard.session_name.should == "Local Leader Kickoff"
      @dashboard.session_time.should include ("8:55 - 9:00 AM PST")
    end

    it 'should be able to view mtv schedule', :browser, :suite => 'regression' do
      sign_in_mtv_auth_user
      @home.reset_user
      @home.start @config_base_url
      @register_modal.register_mtv_user

      @dashboard.schedule_location.should == "CTOF @ Mountain View"
      @dashboard.schedule_day.should == "May 13, 2014"
      @dashboard.session_name.should == "Local Leader Kickoff"
      @dashboard.session_time.should include ("8:55 - 9:00 AM PST")
    end

    it 'should be able to view ban schedule', :browser, :suite => 'regression' do
      sign_in_ban_auth_user
      @home.reset_user
      @home.start @config_base_url
      @register_modal.register_ban_user

      @dashboard.schedule_location.should == "CTOF @ Bangalore"
      @dashboard.schedule_day.should == "May 13, 2014"
      @dashboard.session_name.should == "IDC Keynote"
      @dashboard.session_time.should include ("9:30 - 10:30 PM PST")
    end

    it 'should be able to view bur schedule', :browser, :suite => 'regression' do
      sign_in_bur_auth_user
      @home.reset_user
      @home.start @config_base_url
      @register_modal.register_bur_user

      @dashboard.schedule_location.should == "CTOF @ Burlingame"
      @dashboard.schedule_day.should == "May 13, 2014"
      @dashboard.session_name.should == "Local Leader Kickoff"
      @dashboard.session_time.should include ("8:55 - 9:00 AM PST")
    end

    it 'should be able to view cmb schedule', :browser, :suite => 'regression' do
      sign_in_cmb_auth_user
      @home.reset_user
      @home.start @config_base_url
      @register_modal.register_cmb_user

      @dashboard.schedule_location.should == "CTOF @ Cambridge"
      @dashboard.schedule_day.should == "May 13, 2014"
      @dashboard.session_name.should == "Lunch"
      @dashboard.session_time.should include ("8:00 - 8:45 AM PST")
    end

    it 'should be able to view edm schedule', :browser, :suite => 'regression' do
      sign_in_edm_auth_user
      @home.reset_user
      @home.start @config_base_url
      @register_modal.register_edm_user

      @dashboard.schedule_location.should == "CTOF @ Edmonton"
      @dashboard.schedule_day.should == "May 13, 2014"
      @dashboard.session_name.should == "Breakfast"
      @dashboard.session_time.should include ("8:00 - 8:45 AM PST")
    end

    it 'should be able to view mis schedule', :browser, :suite => 'regression' do
      sign_in_mis_auth_user
      @home.reset_user
      @home.start @config_base_url
      @register_modal.register_mis_user

      @dashboard.schedule_location.should == "CTOF @ Mississauga"
      @dashboard.schedule_day.should == "May 13, 2014"
      @dashboard.session_name.should == "Lunch"
      @dashboard.session_time.should include ("8:00 - 8:45 AM PST")
    end

    it 'should be able to view pln schedule', :browser, :suite => 'regression' do
      sign_in_pln_auth_user
      @home.reset_user
      @home.start @config_base_url
      @register_modal.register_pln_user

      @dashboard.schedule_location.should == "CTOF @ Plano"
      @dashboard.schedule_day.should == "May 13, 2014"
      @dashboard.session_name.should == "Local Leader Kickoff"
      @dashboard.session_time.should include ("8:55 - 9:00 AM PST")
    end

    it 'should be able to view rmt schedule', :browser, :suite => 'regression' do
      sign_in_rmt_auth_user
      @home.reset_user
      @home.start @config_base_url
      @register_modal.register_rmt_user

      @dashboard.schedule_location.should == "CTOF @ Remote"
      @dashboard.schedule_day.should == "May 13, 2014"
      @dashboard.session_name.should == "Local Leader Kickoff"
      @dashboard.session_time.should include ("8:55 - 9:00 AM PST")
    end

    it 'should be able to view wdh schedule', :browser, :suite => 'regression' do
      sign_in_wdh_auth_user
      @home.reset_user
      @home.start @config_base_url
      @register_modal.register_wdh_user

      @dashboard.schedule_location.should == "CTOF @ Woodland Hills"
      @dashboard.schedule_day.should == "May 13, 2014"
      @dashboard.session_name.should == "Local Leader Kickoff"
      @dashboard.session_time.should include ("8:55 - 9:00 AM PST")
    end
  end
end
