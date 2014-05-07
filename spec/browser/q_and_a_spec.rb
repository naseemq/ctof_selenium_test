require 'spec_helper'
require_relative 'browser_spec_utils'

include BrowserSpecUtils
include ActionView::Helpers::TextHelper

TestQuestionText = "Test Session Q&A question"
TestCommentText = "QA test comment"

describe 'Session Q&A' do

  include_context 'browser shared context'

  describe 'Session Q&A page' do

    #Ask a question
    it 'should allow sdg user to submit a question', :browser, :suite => 'smoke' do
      sign_in_sdg_auth_user
      @home.reset_user
      @home.start @config_base_url
      @register_modal.register_sdg_user
      @dashboard.click_session("Fireside chat w/ Box")
      @session_details.click_session_q_and_a

      @q_and_a_page.question_entry_box=TestQuestionText
      @q_and_a_page.click_submit
      @q_and_a_page.question_text.should include(TestQuestionText)

      @q_and_a_page.click_delete_your_question
      @q_and_a_page.close_alert
    end

    it 'should allow mtv user to submit a question', :browser, :suite => 'regression' do
      sign_in_mtv_auth_user
      @home.reset_user
      @home.start @config_base_url
      @register_modal.register_mtv_user
      @dashboard.click_session("Fireside chat w/ Box")
      @session_details.click_session_q_and_a

      @q_and_a_page.question_entry_box=TestQuestionText
      @q_and_a_page.click_submit
      @q_and_a_page.question_text.should include(TestQuestionText)

      @q_and_a_page.click_delete_your_question
      @q_and_a_page.close_alert
    end

    it 'should allow ban user to submit a question', :browser, :suite => 'regression' do
      sign_in_ban_auth_user
      @home.reset_user
      @home.start @config_base_url
      @register_modal.register_ban_user
      @dashboard.click_session("IDC Keynote")
      @session_details.click_session_q_and_a

      @q_and_a_page.question_entry_box=TestQuestionText
      @q_and_a_page.click_submit
      @q_and_a_page.question_text.should include(TestQuestionText)

      @q_and_a_page.click_delete_your_question
      @q_and_a_page.close_alert
    end

    it 'should allow bur user to submit a question', :browser, :suite => 'regression' do
      sign_in_bur_auth_user
      @home.reset_user
      @home.start @config_base_url
      @register_modal.register_bur_user
      @dashboard.click_session("Fireside chat w/ Box")
      @session_details.click_session_q_and_a

      @q_and_a_page.question_entry_box=TestQuestionText
      @q_and_a_page.click_submit
      @q_and_a_page.question_text.should include(TestQuestionText)

      @q_and_a_page.click_delete_your_question
      @q_and_a_page.close_alert
    end

    it 'should allow cmb user to submit a question', :browser, :suite => 'regression' do
      sign_in_cmb_auth_user
      @home.reset_user
      @home.start @config_base_url
      @register_modal.register_cmb_user
      @dashboard.click_session("Fireside chat w/ Box")
      @session_details.click_session_q_and_a

      @q_and_a_page.question_entry_box=TestQuestionText
      @q_and_a_page.click_submit
      @q_and_a_page.question_text.should include(TestQuestionText)

      @q_and_a_page.click_delete_your_question
      @q_and_a_page.close_alert
    end

    it 'should allow edm user to submit a question', :browser, :suite => 'regression' do
      sign_in_edm_auth_user
      @home.reset_user
      @home.start @config_base_url
      @register_modal.register_edm_user
      @dashboard.click_session("Fireside chat w/ Box")
      @session_details.click_session_q_and_a

      @q_and_a_page.question_entry_box=TestQuestionText
      @q_and_a_page.click_submit
      @q_and_a_page.question_text.should include(TestQuestionText)

      @q_and_a_page.click_delete_your_question
      @q_and_a_page.close_alert
    end

    it 'should allow mis user to submit a question', :browser, :suite => 'regression' do
      sign_in_mis_auth_user
      @home.reset_user
      @home.start @config_base_url
      @register_modal.register_mis_user
      @dashboard.click_session("Fireside chat w/ Box")
      @session_details.click_session_q_and_a

      @q_and_a_page.question_entry_box=TestQuestionText
      @q_and_a_page.click_submit
      @q_and_a_page.question_text.should include(TestQuestionText)

      @q_and_a_page.click_delete_your_question
      @q_and_a_page.close_alert
    end

    it 'should allow pln user to submit a question', :browser, :suite => 'regression' do
      sign_in_pln_auth_user
      @home.reset_user
      @home.start @config_base_url
      @register_modal.register_pln_user
      @dashboard.click_session("Fireside chat w/ Box")
      @session_details.click_session_q_and_a

      @q_and_a_page.question_entry_box=TestQuestionText
      @q_and_a_page.click_submit
      @q_and_a_page.question_text.should include(TestQuestionText)

      @q_and_a_page.click_delete_your_question
      @q_and_a_page.close_alert
    end

    it 'should allow rmt user to submit a question', :browser, :suite => 'regression' do
      sign_in_rmt_auth_user
      @home.reset_user
      @home.start @config_base_url
      @register_modal.register_rmt_user
      @dashboard.click_session("Fireside chat w/ Box")
      @session_details.click_session_q_and_a

      @q_and_a_page.question_entry_box=TestQuestionText
      @q_and_a_page.click_submit
      @q_and_a_page.question_text.should include(TestQuestionText)

      @q_and_a_page.click_delete_your_question
      @q_and_a_page.close_alert
    end

    it 'should allow wdh user to submit a question', :browser, :suite => 'regression' do
      sign_in_wdh_auth_user
      @home.reset_user
      @home.start @config_base_url
      @register_modal.register_wdh_user
      @dashboard.click_session("Fireside chat w/ Box")
      @session_details.click_session_q_and_a

      @q_and_a_page.question_entry_box=TestQuestionText
      @q_and_a_page.click_submit
      @q_and_a_page.question_text.should include(TestQuestionText)

      @q_and_a_page.click_delete_your_question
      @q_and_a_page.close_alert
    end


    #Comment on a question
    it 'should allow sdg user to comment a question', :browser, :suite => 'smoke' do
      sign_in_sdg_auth_user
      @home.reset_user
      @home.start @config_base_url
      @register_modal.register_sdg_user
      @dashboard.click_session("Fireside chat w/ Box")
      @session_details.click_session_q_and_a

      @q_and_a_page.question_entry_box=TestQuestionText
      @q_and_a_page.click_submit

      @q_and_a_page.click_comment
      @q_and_a_page.comment_entry_box=TestCommentText
      @q_and_a_page.click_submit_comment
      @q_and_a_page.comment_text.should include(TestCommentText)

      @q_and_a_page.click_delete_your_question
      @q_and_a_page.close_alert
    end

    it 'should allow mtv user to comment a question', :browser, :suite => 'regression' do
      sign_in_mtv_auth_user
      @home.reset_user
      @home.start @config_base_url
      @register_modal.register_mtv_user
      @dashboard.click_session("Fireside chat w/ Box")
      @session_details.click_session_q_and_a

      @q_and_a_page.question_entry_box=TestQuestionText
      @q_and_a_page.click_submit

      @q_and_a_page.click_comment
      @q_and_a_page.comment_entry_box=TestCommentText
      @q_and_a_page.click_submit_comment
      @q_and_a_page.comment_text.should include(TestCommentText)

      @q_and_a_page.click_delete_your_question
      @q_and_a_page.close_alert
    end

    it 'should allow ban user to comment a question', :browser, :suite => 'regression' do
      sign_in_ban_auth_user
      @home.reset_user
      @home.start @config_base_url
      @register_modal.register_ban_user
      @dashboard.click_session("IDC Keynote")
      @session_details.click_session_q_and_a

      @q_and_a_page.question_entry_box=TestQuestionText
      @q_and_a_page.click_submit

      @q_and_a_page.click_comment
      @q_and_a_page.comment_entry_box=TestCommentText
      @q_and_a_page.click_submit_comment
      @q_and_a_page.comment_text.should include(TestCommentText)

      @q_and_a_page.click_delete_your_question
      @q_and_a_page.close_alert
    end

    it 'should allow bur user to comment a question', :browser, :suite => 'regression' do
      sign_in_bur_auth_user
      @home.reset_user
      @home.start @config_base_url
      @register_modal.register_bur_user
      @dashboard.click_session("Fireside chat w/ Box")
      @session_details.click_session_q_and_a

      @q_and_a_page.question_entry_box=TestQuestionText
      @q_and_a_page.click_submit

      @q_and_a_page.click_comment
      @q_and_a_page.comment_entry_box=TestCommentText
      @q_and_a_page.click_submit_comment
      @q_and_a_page.comment_text.should include(TestCommentText)

      @q_and_a_page.click_delete_your_question
      @q_and_a_page.close_alert
    end

    it 'should allow cmb user to comment a question', :browser, :suite => 'regression' do
      sign_in_cmb_auth_user
      @home.reset_user
      @home.start @config_base_url
      @register_modal.register_cmb_user
      @dashboard.click_session("Fireside chat w/ Box")
      @session_details.click_session_q_and_a

      @q_and_a_page.question_entry_box=TestQuestionText
      @q_and_a_page.click_submit

      @q_and_a_page.click_comment
      @q_and_a_page.comment_entry_box=TestCommentText
      @q_and_a_page.click_submit_comment
      @q_and_a_page.comment_text.should include(TestCommentText)

      @q_and_a_page.click_delete_your_question
      @q_and_a_page.close_alert
    end

    it 'should allow edm user to comment a question', :browser, :suite => 'regression' do
      sign_in_edm_auth_user
      @home.reset_user
      @home.start @config_base_url
      @register_modal.register_edm_user
      @dashboard.click_session("Fireside chat w/ Box")
      @session_details.click_session_q_and_a

      @q_and_a_page.question_entry_box=TestQuestionText
      @q_and_a_page.click_submit

      @q_and_a_page.click_comment
      @q_and_a_page.comment_entry_box=TestCommentText
      @q_and_a_page.click_submit_comment
      @q_and_a_page.comment_text.should include(TestCommentText)

      @q_and_a_page.click_delete_your_question
      @q_and_a_page.close_alert
    end

    it 'should allow mis user to comment a question', :browser, :suite => 'regression' do
      sign_in_mis_auth_user
      @home.reset_user
      @home.start @config_base_url
      @register_modal.register_mis_user
      @dashboard.click_session("Fireside chat w/ Box")
      @session_details.click_session_q_and_a

      @q_and_a_page.question_entry_box=TestQuestionText
      @q_and_a_page.click_submit

      @q_and_a_page.click_comment
      @q_and_a_page.comment_entry_box=TestCommentText
      @q_and_a_page.click_submit_comment
      @q_and_a_page.comment_text.should include(TestCommentText)

      @q_and_a_page.click_delete_your_question
      @q_and_a_page.close_alert
    end

    it 'should allow pln user to comment a question', :browser, :suite => 'regression' do
      sign_in_pln_auth_user
      @home.reset_user
      @home.start @config_base_url
      @register_modal.register_pln_user
      @dashboard.click_session("Fireside chat w/ Box")
      @session_details.click_session_q_and_a

      @q_and_a_page.question_entry_box=TestQuestionText
      @q_and_a_page.click_submit

      @q_and_a_page.click_comment
      @q_and_a_page.comment_entry_box=TestCommentText
      @q_and_a_page.click_submit_comment
      @q_and_a_page.comment_text.should include(TestCommentText)

      @q_and_a_page.click_delete_your_question
      @q_and_a_page.close_alert
    end

    it 'should allow rmt user to comment a question', :browser, :suite => 'regression' do
      sign_in_rmt_auth_user
      @home.reset_user
      @home.start @config_base_url
      @register_modal.register_rmt_user
      @dashboard.click_session("Fireside chat w/ Box")
      @session_details.click_session_q_and_a

      @q_and_a_page.question_entry_box=TestQuestionText
      @q_and_a_page.click_submit

      @q_and_a_page.click_comment
      @q_and_a_page.comment_entry_box=TestCommentText
      @q_and_a_page.click_submit_comment
      @q_and_a_page.comment_text.should include(TestCommentText)

      @q_and_a_page.click_delete_your_question
      @q_and_a_page.close_alert
    end

    it 'should allow wdh user to comment a question', :browser, :suite => 'regression' do
      sign_in_wdh_auth_user
      @home.reset_user
      @home.start @config_base_url
      @register_modal.register_wdh_user
      @dashboard.click_session("Fireside chat w/ Box")
      @session_details.click_session_q_and_a

      @q_and_a_page.question_entry_box=TestQuestionText
      @q_and_a_page.click_submit

      @q_and_a_page.click_comment
      @q_and_a_page.comment_entry_box=TestCommentText
      @q_and_a_page.click_submit_comment
      @q_and_a_page.comment_text.should include(TestCommentText)

      @q_and_a_page.click_delete_your_question
      @q_and_a_page.close_alert
    end

  end
end

