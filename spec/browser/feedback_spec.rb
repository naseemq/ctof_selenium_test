require 'spec_helper'
require_relative 'browser_spec_utils'

include BrowserSpecUtils
include ActionView::Helpers::TextHelper

describe 'Feedback' do

  include_context 'browser shared context'

  describe 'Feedback' do

    it 'should be able to leave feedback - sdg user', :browser, :suite => 'smoke' do
      sign_in_sdg_auth_user
      @home.reset_user
      @home.start @config_base_url
      @register_modal.register_sdg_user
      @dashboard.click_feature("General Feedback")

      @feedback.heading.should == "CTOF 2014 Feedback"
      @feedback_message = Faker::Lorem.sentence(5) + " #{Time.now}"
      @feedback.enter_feedback = @feedback_message
      @feedback.click_submit
      @feedback.thank_you.should == "Thank you!"
      @feedback.feedback_confirmation.should == "Your feedback has been received."
    end

    it 'should be able to leave feedback - mtv user', :browser, :suite => 'regression' do
      sign_in_mtv_auth_user
      @home.reset_user
      @home.start @config_base_url
      @register_modal.register_mtv_user
      @dashboard.click_feature("General Feedback")

      @feedback.heading.should == "CTOF 2014 Feedback"
      @feedback_message = Faker::Lorem.sentence(5) + " #{Time.now}"
      @feedback.enter_feedback = @feedback_message
      @feedback.click_submit
      @feedback.thank_you.should == "Thank you!"
      @feedback.feedback_confirmation.should == "Your feedback has been received."
    end

    it 'should be able to leave feedback - ban user', :browser, :suite => 'regression' do
      sign_in_ban_auth_user
      @home.reset_user
      @home.start @config_base_url
      @register_modal.register_ban_user
      @dashboard.click_feature("General Feedback")

      @feedback.heading.should == "CTOF 2014 Feedback"
      @feedback_message = Faker::Lorem.sentence(5) + " #{Time.now}"
      @feedback.enter_feedback = @feedback_message
      @feedback.click_submit
      @feedback.thank_you.should == "Thank you!"
      @feedback.feedback_confirmation.should == "Your feedback has been received."
    end

    it 'should be able to leave feedback - bur user', :browser, :suite => 'regression' do
      sign_in_bur_auth_user
      @home.reset_user
      @home.start @config_base_url
      @register_modal.register_bur_user
      @dashboard.click_feature("General Feedback")

      @feedback.heading.should == "CTOF 2014 Feedback"
      @feedback_message = Faker::Lorem.sentence(5) + " #{Time.now}"
      @feedback.enter_feedback = @feedback_message
      @feedback.click_submit
      @feedback.thank_you.should == "Thank you!"
      @feedback.feedback_confirmation.should == "Your feedback has been received."
    end

    it 'should be able to leave feedback - cmb user', :browser, :suite => 'regression' do
      sign_in_cmb_auth_user
      @home.reset_user
      @home.start @config_base_url
      @register_modal.register_cmb_user
      @dashboard.click_feature("General Feedback")

      @feedback.heading.should == "CTOF 2014 Feedback"
      @feedback_message = Faker::Lorem.sentence(5) + " #{Time.now}"
      @feedback.enter_feedback = @feedback_message
      @feedback.click_submit
      @feedback.thank_you.should == "Thank you!"
      @feedback.feedback_confirmation.should == "Your feedback has been received."
    end

    it 'should be able to leave feedback - edm user', :browser, :suite => 'regression' do
      sign_in_edm_auth_user
      @home.reset_user
      @home.start @config_base_url
      @register_modal.register_edm_user
      @dashboard.click_feature("General Feedback")

      @feedback.heading.should == "CTOF 2014 Feedback"
      @feedback_message = Faker::Lorem.sentence(5) + " #{Time.now}"
      @feedback.enter_feedback = @feedback_message
      @feedback.click_submit
      @feedback.thank_you.should == "Thank you!"
      @feedback.feedback_confirmation.should == "Your feedback has been received."
    end

    it 'should be able to leave feedback - mis user', :browser, :suite => 'regression' do
      sign_in_mis_auth_user
      @home.reset_user
      @home.start @config_base_url
      @register_modal.register_mis_user
      @dashboard.click_feature("General Feedback")

      @feedback.heading.should == "CTOF 2014 Feedback"
      @feedback_message = Faker::Lorem.sentence(5) + " #{Time.now}"
      @feedback.enter_feedback = @feedback_message
      @feedback.click_submit
      @feedback.thank_you.should == "Thank you!"
      @feedback.feedback_confirmation.should == "Your feedback has been received."
    end

    it 'should be able to leave feedback - pln user', :browser, :suite => 'regression' do
      sign_in_pln_auth_user
      @home.reset_user
      @home.start @config_base_url
      @register_modal.register_pln_user
      @dashboard.click_feature("General Feedback")

      @feedback.heading.should == "CTOF 2014 Feedback"
      @feedback_message = Faker::Lorem.sentence(5) + " #{Time.now}"
      @feedback.enter_feedback = @feedback_message
      @feedback.click_submit
      @feedback.thank_you.should == "Thank you!"
      @feedback.feedback_confirmation.should == "Your feedback has been received."
    end

    it 'should be able to leave feedback - rmt user', :browser, :suite => 'regression' do
      sign_in_rmt_auth_user
      @home.reset_user
      @home.start @config_base_url
      @register_modal.register_rmt_user
      @dashboard.click_feature("General Feedback")

      @feedback.heading.should == "CTOF 2014 Feedback"
      @feedback_message = Faker::Lorem.sentence(5) + " #{Time.now}"
      @feedback.enter_feedback = @feedback_message
      @feedback.click_submit
      @feedback.thank_you.should == "Thank you!"
      @feedback.feedback_confirmation.should == "Your feedback has been received."
    end

    it 'should be able to leave feedback - wdh user', :browser, :suite => 'regression' do
      sign_in_wdh_auth_user
      @home.reset_user
      @home.start @config_base_url
      @register_modal.register_wdh_user
      @dashboard.click_feature("General Feedback")

      @feedback.heading.should == "CTOF 2014 Feedback"
      @feedback_message = Faker::Lorem.sentence(5) + " #{Time.now}"
      @feedback.enter_feedback = @feedback_message
      @feedback.click_submit
      @feedback.thank_you.should == "Thank you!"
      @feedback.feedback_confirmation.should == "Your feedback has been received."
    end
  end
end
