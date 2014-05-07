require 'spec_helper'
require_relative 'browser_spec_utils'

include BrowserSpecUtils
include ActionView::Helpers::TextHelper

describe 'Register' do

  include_context 'browser shared context'

  describe 'Sign-In & Register' do

    it 'should sign-in sdg user and register yes', :browser, :suite => 'smoke' do
      sign_in_sdg_auth_user
      @home.reset_user
      @home.start @config_base_url

      @register_modal.modal_title.should include 'Register for CTOF 2014'
      @register_modal.welcome_user.should == 'Welcome Jonathan!'
      @register_modal.location_label.should == 'San Diego'

      @register_modal.select_attendance('Yes!')
      @register_modal.select_breakfast('Yes, please')
      @register_modal.select_lunch('Anything will do')
      @register_modal.select_evening_party('I\'m going')
      @register_modal.click_next

      @register_modal.select_work_role('Product Development')
      @register_modal.select_work_experience('Mostly front end')
      @register_modal.select_coding_experience('Yes')
      @register_modal.click_submit
      @register_modal.rsvp_confirmation.should include("RSVP Received")
    end

    it 'should sign-in sdg user and register no', :browser, :suite => 'smoke' do
      sign_in_sdg_auth_user
      @home.reset_user
      @home.start @config_base_url

      @register_modal.modal_title.should include 'Register for CTOF 2014'
      @register_modal.welcome_user.should == 'Welcome Jonathan!'
      @register_modal.location_label.should == 'San Diego'

      @register_modal.select_attendance('Sorry, can\'t make it')
      @register_modal.click_submit_decline
      @register_modal.rsvp_confirmation.should include("RSVP Received")

    end

    it 'should sign-in mtv user and register', :browser, :suite => 'regression' do
      sign_in_mtv_auth_user
      @home.reset_user
      @home.start @config_base_url

      @register_modal.modal_title.should include 'Register for CTOF 2014'
      @register_modal.welcome_user.should == 'Welcome Ivan!'
      @register_modal.location_label.should == 'Mountain View'

      @register_modal.select_attendance('Yes!')
      @register_modal.select_breakfast('Yes, please')
      @register_modal.select_lunch('Anything will do')
      @register_modal.select_evening_party('I\'m going')
      @register_modal.click_next

      @register_modal.select_work_role('Product Development')
      @register_modal.select_work_experience('Mostly front end')
      @register_modal.select_coding_experience('Yes')
      @register_modal.click_submit
      @register_modal.rsvp_confirmation.should include("RSVP Received")
    end

    it 'should sign-in ban user and register', :browser, :suite => 'regression' do
      sign_in_ban_auth_user
      @home.reset_user
      @home.start @config_base_url

      @register_modal.modal_title.should include 'Register for CTOF 2014'
      @register_modal.welcome_user.should == 'Welcome Santosh!'
      @register_modal.location_label.should == 'Bangalore'

      @register_modal.select_attendance('Yes!')
      @register_modal.select_breakfast('Yes, please')
      @register_modal.select_lunch('Anything will do')
      @register_modal.click_next

      @register_modal.select_tshirt_size('Large')
      @register_modal.select_work_role('Product Development')
      @register_modal.select_work_experience('Mostly front end')
      @register_modal.select_coding_experience('Yes')
      @register_modal.select_commute_service('No')
      @register_modal.click_submit
      @register_modal.rsvp_confirmation.should include("RSVP Received")
    end

    it 'should sign-in bur user and register', :browser, :suite => 'regression' do
      sign_in_bur_auth_user
      @home.reset_user
      @home.start @config_base_url

      @register_modal.modal_title.should include 'Register for CTOF 2014'
      @register_modal.welcome_user.should == 'Welcome Ananthakrishnan!'
      @register_modal.location_label.should == 'Burlingame'

      @register_modal.select_attendance('Yes!')
      @register_modal.click_next

      @register_modal.select_work_role('Product Development')
      @register_modal.select_work_experience('Mostly front end')
      @register_modal.select_coding_experience('Yes')
      sleep 3
      @register_modal.click_submit
      @register_modal.rsvp_confirmation.should include("RSVP Received")
    end

    it 'should sign-in cmb user and register', :browser, :suite => 'regression' do
      sign_in_cmb_auth_user
      @home.reset_user
      @home.start @config_base_url

      @register_modal.modal_title.should include 'Register for CTOF 2014'
      @register_modal.welcome_user.should == 'Welcome Jeffrey!'
      @register_modal.location_label.should == 'Cambridge'

      @register_modal.select_attendance('Yes!')
      @register_modal.select_breakfast('Yes, please')
      @register_modal.select_lunch('Anything will do')
      @register_modal.click_next

      @register_modal.select_work_role('Product Development')
      @register_modal.select_work_experience('Mostly front end')
      @register_modal.select_coding_experience('Yes')
      @register_modal.click_submit
      @register_modal.rsvp_confirmation.should include("RSVP Received")
    end

    it 'should sign-in edm user and register', :browser, :suite => 'regression' do
      sign_in_edm_auth_user
      @home.reset_user
      @home.start @config_base_url

      @register_modal.modal_title.should include 'Register for CTOF 2014'
      @register_modal.welcome_user.should == 'Welcome Bradley!'
      @register_modal.location_label.should == 'Edmonton'

      @register_modal.select_attendance('Yes!')
      @register_modal.select_breakfast('Yes, please')
      @register_modal.select_lunch('Anything will do')
      @register_modal.click_next

      @register_modal.select_work_role('Product Development')
      @register_modal.select_work_experience('Mostly front end')
      @register_modal.select_coding_experience('Yes')
      @register_modal.click_submit
      @register_modal.rsvp_confirmation.should include("RSVP Received")
    end

    it 'should sign-in mis user and register', :browser, :suite => 'regression' do
      sign_in_mis_auth_user
      @home.reset_user
      @home.start @config_base_url

      @register_modal.modal_title.should include 'Register for CTOF 2014'
      @register_modal.welcome_user.should == 'Welcome Ananth!'
      @register_modal.location_label.should == 'Mississauga'

      @register_modal.select_attendance('Yes!')
      @register_modal.select_breakfast('Yes, please')
      @register_modal.select_lunch('Anything will do')
      @register_modal.click_next

      @register_modal.select_work_role('Product Development')
      @register_modal.select_work_experience('Mostly front end')
      @register_modal.select_coding_experience('Yes')
      @register_modal.click_submit
      @register_modal.rsvp_confirmation.should include("RSVP Received")
    end

    it 'should sign-in pln user and register', :browser, :suite => 'regression' do
      sign_in_pln_auth_user
      @home.reset_user
      @home.start @config_base_url

      @register_modal.modal_title.should include 'Register for CTOF 2014'
      @register_modal.welcome_user.should == 'Welcome Aleksandra!'
      @register_modal.location_label.should == 'Plano'

      @register_modal.select_attendance('Yes!')
      @register_modal.select_breakfast('Yes, please')
      @register_modal.select_lunch('Anything will do')
      @register_modal.click_next

      @register_modal.select_work_role('Product Development')
      @register_modal.select_work_experience('Mostly front end')
      @register_modal.select_coding_experience('Yes')
      @register_modal.click_submit
      @register_modal.rsvp_confirmation.should include("RSVP Received")
    end

    it 'should sign-in rmt user and register', :browser, :suite => 'regression' do
      sign_in_rmt_auth_user
      @home.reset_user
      @home.start @config_base_url

      @register_modal.modal_title.should include 'Register for CTOF 2014'
      @register_modal.welcome_user.should == 'Welcome Alexander!'
      @register_modal.location_label.should == 'Remote'

      @register_modal.select_attendance('Yes!')
      @register_modal.click_next

      @register_modal.select_work_role('Product Development')
      @register_modal.select_work_experience('Mostly front end')
      @register_modal.select_coding_experience('Yes')
      @register_modal.click_submit
      @register_modal.rsvp_confirmation.should include("RSVP Received")
    end

    it 'should sign-in wdh user and register', :browser, :suite => 'regression' do
      sign_in_wdh_auth_user
      @home.reset_user
      @home.start @config_base_url

      @register_modal.modal_title.should include 'Register for CTOF 2014'
      @register_modal.welcome_user.should == 'Welcome Tori!'
      @register_modal.location_label.should == 'Woodland Hills'

      @register_modal.select_attendance('Yes!')
      @register_modal.select_breakfast('Yes, please')
      @register_modal.select_lunch('Anything will do')
      @register_modal.click_next

      @register_modal.select_work_role('Product Development')
      @register_modal.select_work_experience('Mostly front end')
      @register_modal.select_coding_experience('Yes')
      @register_modal.click_submit
      @register_modal.rsvp_confirmation.should include("RSVP Received")
    end

    it 'should not allow un-auth user to register', :browser, :suite => 'smoke' do
      sign_in_unauth_user

      @register_modal.unauth_modal_title == 'Sorry, Mehmet'
      @register_modal.uninvited_message.should include 'If you feel you\'ve been inadvertently left off'
    end
  end
end
