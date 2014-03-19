require 'spec_helper'
require_relative 'browser_spec_utils'

include BrowserSpecUtils
include ActionView::Helpers::TextHelper

describe 'AMI Catalog' do

  include_context 'browser shared context'

  describe 'Filter' do

    it 'should filter by region', :browser, :suite => 'smoke' do
      @public_cloud.start @config_base_url
      @public_cloud.title.should include("Public Cloud")

      @public_cloud.click_ami_catalog
      @ami_catalog.title.should include("AMI Catalog")

      @ami_catalog.click_filter
    end

  end
end

