require 'spec_helper'
require_relative 'browser_spec_utils'

include BrowserSpecUtils
include ActionView::Helpers::TextHelper

describe 'Session Details' do

  include_context 'browser shared context'

  describe 'View Session Details' do

    it 'should be able to view session details of sdg user', :browser, :suite => 'smoke' do
      sign_in_sdg_auth_user
      @register_modal.register_sdg_user
      @dashboard.click_first_session
      @session_details.session_title.should == "Local Leader Kickoff"
      @session_details.session_description.should include ("Bacon ipsum dolor sit amet ham hock sirloin hamburger")

      @home.reset_user
    end

    it 'should be able to view session details of mtv user', :browser, :suite => 'regression' do
      sign_in_mtv_auth_user
      @register_modal.register_mtv_user
      @dashboard.click_first_session
      @session_details.session_title.should == "Local Leader Kickoff"
      @session_details.session_description.should include ("Bacon ipsum dolor sit amet ham hock sirloin hamburger")

      @home.reset_user
    end

    it 'should be able to view session details of ban user', :browser, :suite => 'regression' do
      sign_in_ban_auth_user
      @register_modal.register_ban_user
      @dashboard.click_first_session
      @session_details.session_title.should == "IDC Keynote"
      @session_details.session_description.should include ("Details Coming Soon!!")

      @home.reset_user
    end

    it 'should be able to view session details of bur user', :browser, :suite => 'regression' do
      sign_in_bur_auth_user
      @register_modal.register_bur_user
      @dashboard.click_first_session
      @session_details.session_title.should == "Local Leader Kickoff"
      @session_details.session_description.should include ("Bacon ipsum dolor sit amet ham hock sirloin hamburger")

      @home.reset_user
    end

    it 'should be able to view session details of cmb user', :browser, :suite => 'regression' do
      sign_in_cmb_auth_user
      @register_modal.register_cmb_user
      @dashboard.click_first_session
      @session_details.session_title.should == "Lunch"

      @home.reset_user
    end

    it 'should be able to view session details of edm user', :browser, :suite => 'regression' do
      sign_in_edm_auth_user
      @register_modal.register_edm_user
      @dashboard.click_first_session
      @session_details.session_title.should == "Breakfast"

      @home.reset_user
    end

    it 'should be able to view session details of mis user', :browser, :suite => 'regression' do
      sign_in_mis_auth_user
      @register_modal.register_mis_user
      @dashboard.click_first_session
      @session_details.session_title.should == "Lunch"

      @home.reset_user
    end

    it 'should be able to view session details of pln user', :browser, :suite => 'regression' do
      sign_in_pln_auth_user
      @register_modal.register_pln_user
      @dashboard.click_first_session
      @session_details.session_title.should == "Local Leader Kickoff"
      @session_details.session_description.should include ("Bacon ipsum dolor sit amet ham hock sirloin hamburger")

      @home.reset_user
    end

    it 'should be able to view session details of rmt user', :browser, :suite => 'regression' do
      sign_in_rmt_auth_user
      @register_modal.register_rmt_user
      @dashboard.click_first_session
      @session_details.session_title.should == "Local Leader Kickoff"
      @session_details.session_description.should include ("Bacon ipsum dolor sit amet ham hock sirloin hamburger")

      @home.reset_user
    end

    it 'should be able to view session details of wdh user', :browser, :suite => 'regression' do
      sign_in_wdh_auth_user
      @register_modal.register_wdh_user
      @dashboard.click_first_session
      @session_details.session_title.should == "Local Leader Kickoff"
      @session_details.session_description.should include ("Bacon ipsum dolor sit amet ham hock sirloin hamburger")

      @home.reset_user
    end
  end
end
