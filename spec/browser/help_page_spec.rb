require 'spec_helper'
require_relative 'browser_spec_utils'

include BrowserSpecUtils
include ActionView::Helpers::TextHelper

describe 'Help' do

  include_context 'browser shared context'

  describe 'Help Page' do

    it 'should be viewable by sdg user', :browser, :suite => 'smoke' do
      sign_in_sdg_auth_user
      @home.reset_user
      @home.start @config_base_url
      @register_modal.register_sdg_user
      @dashboard.click_feature("Get Help")

      @help_page.heading.should == "Whatever the problem, we're here for you."
      @help_page.helpful_links[0].should == "CTOFSupport@intuit.com"
      @help_page.helpful_links[1].should == "Click here to clear your browser cache and resync."
      @help_page.helpful_links[2].should == "CTOFSupport@intuit.com"
    end

    it 'should be viewable by mtv user', :browser, :suite => 'regression' do
      sign_in_mtv_auth_user
      @home.reset_user
      @home.start @config_base_url
      @register_modal.register_mtv_user
      @dashboard.click_feature("Get Help")

      @help_page.heading.should == "Whatever the problem, we're here for you."
      @help_page.helpful_links[0].should == "CTOFSupport@intuit.com"
      @help_page.helpful_links[1].should == "Click here to clear your browser cache and resync."
      @help_page.helpful_links[2].should == "CTOFSupport@intuit.com"
    end

    it 'should be viewable by ban user', :browser, :suite => 'regression' do
      sign_in_ban_auth_user
      @home.reset_user
      @home.start @config_base_url
      @register_modal.register_ban_user
      @dashboard.click_feature("Get Help")

      @help_page.heading.should == "Whatever the problem, we're here for you."
      @help_page.helpful_links[0].should == "CTOFSupport@intuit.com"
      @help_page.helpful_links[1].should == "Click here to clear your browser cache and resync."
      @help_page.helpful_links[2].should == "CTOFSupport@intuit.com"
    end

    it 'should be viewable by bur user', :browser, :suite => 'regression' do
      sign_in_bur_auth_user
      @home.reset_user
      @home.start @config_base_url
      @register_modal.register_bur_user
      @dashboard.click_feature("Get Help")

      @help_page.heading.should == "Whatever the problem, we're here for you."
      @help_page.helpful_links[0].should == "CTOFSupport@intuit.com"
      @help_page.helpful_links[1].should == "Click here to clear your browser cache and resync."
      @help_page.helpful_links[2].should == "CTOFSupport@intuit.com"
    end

    it 'should be viewable by cmb user', :browser, :suite => 'regression' do
      sign_in_cmb_auth_user
      @home.reset_user
      @home.start @config_base_url
      @register_modal.register_cmb_user
      @dashboard.click_feature("Get Help")

      @help_page.heading.should == "Whatever the problem, we're here for you."
      @help_page.helpful_links[0].should == "CTOFSupport@intuit.com"
      @help_page.helpful_links[1].should == "Click here to clear your browser cache and resync."
      @help_page.helpful_links[2].should == "CTOFSupport@intuit.com"
    end

    it 'should be viewable by edm user', :browser, :suite => 'regression' do
      sign_in_edm_auth_user
      @home.reset_user
      @home.start @config_base_url
      @register_modal.register_edm_user
      @dashboard.click_feature("Get Help")

      @help_page.heading.should == "Whatever the problem, we're here for you."
      @help_page.helpful_links[0].should == "CTOFSupport@intuit.com"
      @help_page.helpful_links[1].should == "Click here to clear your browser cache and resync."
      @help_page.helpful_links[2].should == "CTOFSupport@intuit.com"
    end

    it 'should be viewable by mis user', :browser, :suite => 'regression' do
      sign_in_mis_auth_user
      @home.reset_user
      @home.start @config_base_url
      @register_modal.register_mis_user
      @dashboard.click_feature("Get Help")

      @help_page.heading.should == "Whatever the problem, we're here for you."
      @help_page.helpful_links[0].should == "CTOFSupport@intuit.com"
      @help_page.helpful_links[1].should == "Click here to clear your browser cache and resync."
      @help_page.helpful_links[2].should == "CTOFSupport@intuit.com"
    end

    it 'should be viewable by pln user', :browser, :suite => 'regression' do
      sign_in_pln_auth_user
      @home.reset_user
      @home.start @config_base_url
      @register_modal.register_pln_user
      @dashboard.click_feature("Get Help")

      @help_page.heading.should == "Whatever the problem, we're here for you."
      @help_page.helpful_links[0].should == "CTOFSupport@intuit.com"
      @help_page.helpful_links[1].should == "Click here to clear your browser cache and resync."
      @help_page.helpful_links[2].should == "CTOFSupport@intuit.com"
    end

    it 'should be viewable by rmt user', :browser, :suite => 'regression' do
      sign_in_rmt_auth_user
      @home.reset_user
      @home.start @config_base_url
      @register_modal.register_rmt_user
      @dashboard.click_feature("Get Help")

      @help_page.heading.should == "Whatever the problem, we're here for you."
      @help_page.helpful_links[0].should == "CTOFSupport@intuit.com"
      @help_page.helpful_links[1].should == "Click here to clear your browser cache and resync."
      @help_page.helpful_links[2].should == "CTOFSupport@intuit.com"
    end

    it 'should be viewable by wdh user', :browser, :suite => 'regression' do
      sign_in_wdh_auth_user
      @home.reset_user
      @home.start @config_base_url
      @register_modal.register_wdh_user
      @dashboard.click_feature("Get Help")

      @help_page.heading.should == "Whatever the problem, we're here for you."
      @help_page.helpful_links[0].should == "CTOFSupport@intuit.com"
      @help_page.helpful_links[1].should == "Click here to clear your browser cache and resync."
      @help_page.helpful_links[2].should == "CTOFSupport@intuit.com"
    end
  end
end
