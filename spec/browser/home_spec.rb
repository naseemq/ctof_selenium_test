require 'spec_helper'
require_relative 'browser_spec_utils'

include BrowserSpecUtils
include ActionView::Helpers::TextHelper

describe 'Home' do

  include_context 'browser shared context'

  describe 'Sign-In & Register' do

    it 'should sign-in and register sdg user', :browser, :suite => 'regression' do
      sign_in_sdg_auth_user

      @register_modal.modal_title.should include 'Register for CTOF 2014'
      @register_modal.welcome_user.should == 'Welcome Jonathan!'
    end

    it 'should sign-in and register mtv user', :browser, :suite => 'regression' do
      sign_in_mtv_auth_user

      @register_modal.modal_title.should include 'Register for CTOF 2014'
      @register_modal.welcome_user.should == 'Welcome Bhushan!'
    end

    it 'should sign-in and register ban user', :browser, :suite => 'regression' do
      sign_in_ban_auth_user

      @register_modal.modal_title.should include 'Register for CTOF 2014'
      @register_modal.welcome_user.should == 'Welcome Santosh!'
    end

    it 'should sign-in and register bur user', :browser, :suite => 'regression' do
      sign_in_bur_auth_user

      @register_modal.modal_title.should include 'Register for CTOF 2014'
      @register_modal.welcome_user.should == 'Welcome Xinli!'
    end

    it 'should sign-in and register cmb user', :browser, :suite => 'regression' do
      sign_in_cmb_auth_user

      @register_modal.modal_title.should include 'Register for CTOF 2014'
      @register_modal.welcome_user.should == 'Welcome Christine!'
    end

    it 'should sign-in and register edm user', :browser, :suite => 'regression' do
      sign_in_edm_auth_user

      @register_modal.modal_title.should include 'Register for CTOF 2014'
      @register_modal.welcome_user.should == 'Welcome Bradley!'
    end

    it 'should sign-in and register mis user', :browser, :suite => 'regression' do
      sign_in_mis_auth_user

      @register_modal.modal_title.should include 'Register for CTOF 2014'
      @register_modal.welcome_user.should == 'Welcome Graham!'
    end

    it 'should sign-in and register pln user', :browser, :suite => 'regression' do
      sign_in_pln_auth_user

      @register_modal.modal_title.should include 'Register for CTOF 2014'
      @register_modal.welcome_user.should == 'Welcome Mary!'
    end

    it 'should sign-in and register rmt user', :browser, :suite => 'regression' do
      sign_in_rmt_auth_user

      @register_modal.modal_title.should include 'Register for CTOF 2014'
      @register_modal.welcome_user.should == 'Welcome Alexander!'
    end

    it 'should sign-in and register wdh user', :browser, :suite => 'regression' do
      sign_in_wdh_auth_user

      @register_modal.modal_title.should include 'Register for CTOF 2014'
      @register_modal.welcome_user.should == 'Welcome Tori!'
    end

  end
end