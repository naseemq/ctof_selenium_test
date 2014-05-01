require 'spec_helper'
require_relative 'browser_spec_utils'

include BrowserSpecUtils
include ActionView::Helpers::TextHelper

describe 'Session Q&A' do

  include_context 'browser shared context'

  describe 'View Schedule' do

    it 'should go to session Q&A page', :browser, :suite => 'test' do
      sign_in_sdg_auth_user
      @register_modal.register_sdg_user
      @dashboard.click_session("Fireside chat w/ Box")
      @session_details.click_session_q_and_a
      sleep 3

      @home.reset_user

    end

  end

end

