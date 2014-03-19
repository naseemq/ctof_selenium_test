require 'spec_helper'
require_relative 'browser_spec_utils'

include BrowserSpecUtils
include ActionView::Helpers::TextHelper

describe 'Public Cloud' do

  include_context 'browser shared context'

  describe 'AMI Catalog' do

    it 'should navigate to AMI Catalog', :browser, :suite => 'smoke' do
      @public_cloud.start @config_base_url
      @public_cloud.title.should include("Public Cloud")

      @public_cloud.click_ami_catalog
      @ami_catalog.title.should include("AMI Catalog")
    end

  end
end

