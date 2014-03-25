require 'spec_helper'
require_relative 'browser_spec_utils'

include BrowserSpecUtils
include ActionView::Helpers::TextHelper

describe 'Home' do

  include_context 'browser shared context'

  describe 'Sign-In & Register' do

    it 'should sign-in sdg user', :browser, :suite => 'smoke' do
      sign_in_sdg_auth_user

      @register_modal.modal_title.should include 'Register for CTOF 2014'
      @register_modal.welcome_user.should == 'Welcome Jonathan!'
      @register_modal.location_label.should == 'San Diego'
    end

    it 'should sign-in and register mtv user', :browser, :suite => 'smoke' do
      sign_in_mtv_auth_user

      @register_modal.modal_title.should include 'Register for CTOF 2014'
      @register_modal.welcome_user.should == 'Welcome Bhushan!'
      @register_modal.location_label.should == 'Mountain View'
    end

    it 'should sign-in and register ban user', :browser, :suite => 'smoke' do
      sign_in_ban_auth_user

      @register_modal.modal_title.should include 'Register for CTOF 2014'
      @register_modal.welcome_user.should == 'Welcome Santosh!'
      @register_modal.location_label.should == 'Bangalore'
    end

    it 'should sign-in and register bur user', :browser, :suite => 'smoke' do
      sign_in_bur_auth_user

      @register_modal.modal_title.should include 'Register for CTOF 2014'
      @register_modal.welcome_user.should == 'Welcome Xinli!'
      @register_modal.location_label.should == 'Burlingame'
    end

    it 'should sign-in and register cmb user', :browser, :suite => 'smoke' do
      sign_in_cmb_auth_user

      @register_modal.modal_title.should include 'Register for CTOF 2014'
      @register_modal.welcome_user.should == 'Welcome Ashish!'
      @register_modal.location_label.should == 'Cambridge'
    end

    it 'should sign-in and register edm user', :browser, :suite => 'smoke' do
      sign_in_edm_auth_user

      @register_modal.modal_title.should include 'Register for CTOF 2014'
      @register_modal.welcome_user.should == 'Welcome Bradley!'
      @register_modal.location_label.should == 'Edmonton'
    end

    it 'should sign-in and register mis user', :browser, :suite => 'smoke' do
      sign_in_mis_auth_user

      @register_modal.modal_title.should include 'Register for CTOF 2014'
      @register_modal.welcome_user.should == 'Welcome Graham!'
      @register_modal.location_label.should == 'Mississauga'
    end

    it 'should sign-in and register pln user', :browser, :suite => 'smoke' do
      sign_in_pln_auth_user

      @register_modal.modal_title.should include 'Register for CTOF 2014'
      @register_modal.welcome_user.should == 'Welcome Mary!'
      @register_modal.location_label.should == 'Plano'
    end

    it 'should sign-in and register rmt user', :browser, :suite => 'smoke' do
      sign_in_rmt_auth_user

      @register_modal.modal_title.should include 'Register for CTOF 2014'
      @register_modal.welcome_user.should == 'Welcome Alexander!'
      @register_modal.location_label.should == 'Remote'
    end

    it 'should sign-in and register wdh user', :browser, :suite => 'smoke' do
      sign_in_wdh_auth_user

      @register_modal.modal_title.should include 'Register for CTOF 2014'
      @register_modal.welcome_user.should == 'Welcome Tori!'
      @register_modal.location_label.should == 'Woodland Hills'
    end
  end

  describe 'Register user' do

    it 'should select attendance:yes for sdg user', :browser, :suite => 'test' do
      @home.start @config_base_url
      @home.click_register

      @sign_in_modal.modal_title.should include 'Welcome!'
      @sign_in_modal.username = @config_iam_sdg_auth_user
      @sign_in_modal.password = @config_iam_sdg_auth_user_password
      @sign_in_modal.click_submit

      @register_modal.select_attendance('Yes!')
      sleep 3 #to see what option selected - need to remove later
      @register_modal.click_submit
      @register_modal

    end

    it 'should select attendance:sorry for sdg user', :browser, :suite => 'smoke' do
      @home.start @config_base_url
      @home.click_register

      @sign_in_modal.modal_title.should include 'Welcome!'
      @sign_in_modal.username = @config_iam_sdg_auth_user
      @sign_in_modal.password = @config_iam_sdg_auth_user_password
      @sign_in_modal.click_submit

      @register_modal.select_attendance('Sorry, can\'t make it')
      sleep 3 #to see what option selected - need to remove later
      @register_modal.click_submit
    end

  end
end
