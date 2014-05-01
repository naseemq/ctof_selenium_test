require 'spec_helper'
require_relative 'browser_spec_utils'

include BrowserSpecUtils
include ActionView::Helpers::TextHelper

TestQuestionText = "Test Session Q&A question"

describe 'Session Q&A' do

  include_context 'browser shared context'

  describe 'Session Q&A page' do

    it 'sdg user should submit a question', :browser, :suite => 'smoke' do
      sign_in_sdg_auth_user
      @register_modal.register_sdg_user
      @dashboard.click_session("Fireside chat w/ Box")
      @session_details.click_session_q_and_a

      @q_and_a_page.question_entry_box=TestQuestionText
      @q_and_a_page.click_submit
      @q_and_a_page.question_text.should include(TestQuestionText)

      @q_and_a_page.click_delete_your_question
      @q_and_a_page.close_alert

      @home.reset_user
    end

    it 'mtv user should submit a question', :browser, :suite => 'regression' do
      sign_in_mtv_auth_user
      @register_modal.register_mtv_user
      @dashboard.click_session("Fireside chat w/ Box")
      @session_details.click_session_q_and_a

      @q_and_a_page.question_entry_box=TestQuestionText
      @q_and_a_page.click_submit
      @q_and_a_page.question_text.should include(TestQuestionText)

      @q_and_a_page.click_delete_your_question
      @q_and_a_page.close_alert

      @home.reset_user
    end

    it 'ban user should submit a question', :browser, :suite => 'regression' do
      sign_in_ban_auth_user
      @register_modal.register_ban_user
      @dashboard.click_session("IDC Keynote")
      @session_details.click_session_q_and_a

      @q_and_a_page.question_entry_box=TestQuestionText
      @q_and_a_page.click_submit
      @q_and_a_page.question_text.should include(TestQuestionText)

      @q_and_a_page.click_delete_your_question
      @q_and_a_page.close_alert

      @home.reset_user
    end

    it 'bur user should submit a question', :browser, :suite => 'regression' do
      sign_in_bur_auth_user
      @register_modal.register_bur_user
      @dashboard.click_session("Fireside chat w/ Box")
      @session_details.click_session_q_and_a

      @q_and_a_page.question_entry_box=TestQuestionText
      @q_and_a_page.click_submit
      @q_and_a_page.question_text.should include(TestQuestionText)

      @q_and_a_page.click_delete_your_question
      @q_and_a_page.close_alert

      @home.reset_user
    end

    it 'cmb user should submit a question', :browser, :suite => 'regression' do
      sign_in_cmb_auth_user
      @register_modal.register_cmb_user
      @dashboard.click_session("Fireside chat w/ Box")
      @session_details.click_session_q_and_a

      @q_and_a_page.question_entry_box=TestQuestionText
      @q_and_a_page.click_submit
      @q_and_a_page.question_text.should include(TestQuestionText)

      @q_and_a_page.click_delete_your_question
      @q_and_a_page.close_alert

      @home.reset_user
    end

    it 'edm user should submit a question', :browser, :suite => 'regression' do
      sign_in_edm_auth_user
      @register_modal.register_edm_user
      @dashboard.click_session("Fireside chat w/ Box")
      @session_details.click_session_q_and_a

      @q_and_a_page.question_entry_box=TestQuestionText
      @q_and_a_page.click_submit
      @q_and_a_page.question_text.should include(TestQuestionText)

      @q_and_a_page.click_delete_your_question
      @q_and_a_page.close_alert

      @home.reset_user
    end

    it 'mis user should submit a question', :browser, :suite => 'regression' do
      sign_in_mis_auth_user
      @register_modal.register_mis_user
      @dashboard.click_session("Fireside chat w/ Box")
      @session_details.click_session_q_and_a

      @q_and_a_page.question_entry_box=TestQuestionText
      @q_and_a_page.click_submit
      @q_and_a_page.question_text.should include(TestQuestionText)

      @q_and_a_page.click_delete_your_question
      @q_and_a_page.close_alert

      @home.reset_user
    end

    it 'pln user should submit a question', :browser, :suite => 'test' do
      sign_in_pln_auth_user
      @register_modal.register_pln_user
      @dashboard.click_session("Fireside chat w/ Box")
      @session_details.click_session_q_and_a

      @q_and_a_page.question_entry_box=TestQuestionText
      @q_and_a_page.click_submit
      @q_and_a_page.question_text.should include(TestQuestionText)

      @q_and_a_page.click_delete_your_question
      @q_and_a_page.close_alert

      @home.reset_user
    end

    it 'rmt user should submit a question', :browser, :suite => 'regression' do
      sign_in_rmt_auth_user
      @register_modal.register_rmt_user
      @dashboard.click_session("Fireside chat w/ Box")
      @session_details.click_session_q_and_a

      @q_and_a_page.question_entry_box=TestQuestionText
      @q_and_a_page.click_submit
      @q_and_a_page.question_text.should include(TestQuestionText)

      @q_and_a_page.click_delete_your_question
      @q_and_a_page.close_alert

      @home.reset_user
    end

    it 'wdh user should submit a question', :browser, :suite => 'regression' do
      sign_in_wdh_auth_user
      @register_modal.register_wdh_user
      @dashboard.click_session("Fireside chat w/ Box")
      @session_details.click_session_q_and_a

      @q_and_a_page.question_entry_box=TestQuestionText
      @q_and_a_page.click_submit
      @q_and_a_page.question_text.should include(TestQuestionText)

      @q_and_a_page.click_delete_your_question
      @q_and_a_page.close_alert

      @home.reset_user
    end

  end
end

