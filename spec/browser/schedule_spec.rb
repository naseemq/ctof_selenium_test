require 'spec_helper'
require_relative 'browser_spec_utils'

include BrowserSpecUtils
include ActionView::Helpers::TextHelper

describe 'Home' do

  include_context 'browser shared context'

  describe 'View Schedule' do

    it 'should be able to view sdg schedule', :browser, :suite => 'test' do
      sign_in_sdg_auth_user
      @register_modal.register_sdg_user

    end
  end
end
