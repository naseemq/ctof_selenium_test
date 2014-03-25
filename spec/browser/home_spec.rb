require 'spec_helper'
require_relative 'browser_spec_utils'

include BrowserSpecUtils
include ActionView::Helpers::TextHelper

describe 'Home' do

  include_context 'browser shared context'

  describe 'Sign-In & Register' do

    it 'should sign-in sdg user and register yes', :browser, :suite => 'smoke' do
      sign_in_sdg_auth_user

      @register_modal.modal_title.should include 'Register for CTOF 2014'
      @register_modal.welcome_user.should == 'Welcome Jonathan!'
      @register_modal.location_label.should == 'San Diego'

      @register_modal.register_user('Yes!')
      @register_modal.rsvp_confirmation.should include("RSVP Received")

      @home.reset_user
    end

    it 'should sign-in sdg user and register no', :browser, :suite => 'smoke' do
      sign_in_sdg_auth_user

      @register_modal.modal_title.should include 'Register for CTOF 2014'
      @register_modal.welcome_user.should == 'Welcome Jonathan!'
      @register_modal.location_label.should == 'San Diego'

      @register_modal.register_user('Sorry, can\'t make it')
      @register_modal.rsvp_confirmation.should include("RSVP Received")

      @home.reset_user
    end

    it 'should sign-in sdg user on iphone', :browser, :suite => 'smoke' do
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

      @register_modal.register_user('Yes!')
      @register_modal.rsvp_confirmation.should include("RSVP Received")

      @home.reset_user
    end

    it 'should sign-in and register ban user', :browser, :suite => 'smoke' do
      sign_in_ban_auth_user

      @register_modal.modal_title.should include 'Register for CTOF 2014'
      @register_modal.welcome_user.should == 'Welcome Santosh!'
      @register_modal.location_label.should == 'Bangalore'

      @register_modal.register_user('Yes!')
      @register_modal.rsvp_confirmation.should include("RSVP Received")

      @home.reset_user
    end

    it 'should sign-in and register bur user', :browser, :suite => 'smoke' do
      sign_in_bur_auth_user

      @register_modal.modal_title.should include 'Register for CTOF 2014'
      @register_modal.welcome_user.should == 'Welcome Xinli!'
      @register_modal.location_label.should == 'Burlingame'

      @register_modal.register_user('Yes!')
      @register_modal.rsvp_confirmation.should include("RSVP Received")

      @home.reset_user
    end

    it 'should sign-in and register cmb user', :browser, :suite => 'smoke' do
      sign_in_cmb_auth_user

      @register_modal.modal_title.should include 'Register for CTOF 2014'
      @register_modal.welcome_user.should == 'Welcome Ashish!'
      @register_modal.location_label.should == 'Cambridge'

      @register_modal.register_user('Yes!')
      @register_modal.rsvp_confirmation.should include("RSVP Received")

      @home.reset_user
    end

    it 'should sign-in and register edm user', :browser, :suite => 'smoke' do
      sign_in_edm_auth_user

      @register_modal.modal_title.should include 'Register for CTOF 2014'
      @register_modal.welcome_user.should == 'Welcome Bradley!'
      @register_modal.location_label.should == 'Edmonton'

      @register_modal.register_user('Yes!')
      @register_modal.rsvp_confirmation.should include("RSVP Received")

      @home.reset_user
    end

    it 'should sign-in and register mis user', :browser, :suite => 'smoke' do
      sign_in_mis_auth_user

      @register_modal.modal_title.should include 'Register for CTOF 2014'
      @register_modal.welcome_user.should == 'Welcome Graham!'
      @register_modal.location_label.should == 'Mississauga'

      @register_modal.register_user('Yes!')
      @register_modal.rsvp_confirmation.should include("RSVP Received")

      @home.reset_user
    end

    it 'should sign-in and register pln user', :browser, :suite => 'smoke' do
      sign_in_pln_auth_user

      @register_modal.modal_title.should include 'Register for CTOF 2014'
      @register_modal.welcome_user.should == 'Welcome Mary!'
      @register_modal.location_label.should == 'Plano'

      @register_modal.register_user('Yes!')
      @register_modal.rsvp_confirmation.should include("RSVP Received")

      @home.reset_user
    end

    it 'should sign-in and register rmt user', :browser, :suite => 'smoke' do
      sign_in_rmt_auth_user

      @register_modal.modal_title.should include 'Register for CTOF 2014'
      @register_modal.welcome_user.should == 'Welcome Alexander!'
      @register_modal.location_label.should == 'Remote'

      @register_modal.register_user('Yes!')
      @register_modal.rsvp_confirmation.should include("RSVP Received")

      @home.reset_user
    end

    it 'should sign-in and register wdh user', :browser, :suite => 'smoke' do
      sign_in_wdh_auth_user

      @register_modal.modal_title.should include 'Register for CTOF 2014'
      @register_modal.welcome_user.should == 'Welcome Tori!'
      @register_modal.location_label.should == 'Woodland Hills'

      @register_modal.register_user('Yes!')
      @register_modal.rsvp_confirmation.should include("RSVP Received")

      @home.reset_user
    end
  end
end
