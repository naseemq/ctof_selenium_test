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

  end
end