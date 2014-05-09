require 'spec_helper'
require_relative 'browser_spec_utils'

include BrowserSpecUtils
include ActionView::Helpers::TextHelper

describe 'Exercise' do

  include_context 'browser shared context'

  describe 'Exercise Page' do

    it 'should be viewable and links should be clickable by sdg user', :browser, :suite => 'smoke' do
      sign_in_sdg_auth_user
      @home.reset_user
      @home.start @config_base_url
      @register_modal.register_sdg_user
      @dashboard.click_feature("Exercise Details")

      @exercise_page.heading.should == "Time to get your hands dirty!"
      @exercise_page.click_resources"Services Portal"
      sleep 5
      @driver.switch_to.window( @driver.window_handles.last ){
        @home.page_title.should == "Intuit Services Portal"
      }
      @exercise_page.click_resources"Live Community"
      sleep 5
      @driver.switch_to.window( @driver.window_handles.last ){
        @home.page_title.should == "Search Results for ctof feed - Intuit Developer Community"
      }
      @exercise_page.click_resources"Day 1 Activity Instructions"
      @driver.switch_to.window( @driver.window_handles.last ){
      }
      @exercise_page.click_resources"Day 2 Activity Instructions"
      @driver.switch_to.window( @driver.window_handles.last ){
      }
    end

    it 'should be viewable and links should be clickable by mtv user', :browser, :suite => 'regression' do
      sign_in_mtv_auth_user
      @home.reset_user
      @home.start @config_base_url
      @register_modal.register_mtv_user
      @dashboard.click_feature("Exercise Details")

      @exercise_page.heading.should == "Time to get your hands dirty!"
      @exercise_page.click_resources"Services Portal"
      sleep 5
      @driver.switch_to.window( @driver.window_handles.last ){
        @home.page_title.should == "Intuit Services Portal"
      }
      @exercise_page.click_resources"Live Community"
      sleep 5
      @driver.switch_to.window( @driver.window_handles.last ){
        @home.page_title.should == "Search Results for ctof feed - Intuit Developer Community"
      }
      @exercise_page.click_resources"Day 1 Activity Instructions"
      @driver.switch_to.window( @driver.window_handles.last ){
      }
      @exercise_page.click_resources"Day 2 Activity Instructions"
      @driver.switch_to.window( @driver.window_handles.last ){
      }
    end

    it 'should be viewable and links should be clickable by ban user', :browser, :suite => 'regression' do
      sign_in_ban_auth_user
      @home.reset_user
      @home.start @config_base_url
      @register_modal.register_ban_user
      @dashboard.click_feature("Exercise Details")

      @exercise_page.heading.should == "Time to get your hands dirty!"
      @exercise_page.click_resources"Services Portal"
      sleep 5
      @driver.switch_to.window( @driver.window_handles.last ){
        @home.page_title.should == "Intuit Services Portal"
      }
      @exercise_page.click_resources"Live Community"
      sleep 5
      @driver.switch_to.window( @driver.window_handles.last ){
        @home.page_title.should == "Search Results for ctof feed - Intuit Developer Community"
      }
      @exercise_page.click_resources"Day 1 Activity Instructions"
      @driver.switch_to.window( @driver.window_handles.last ){
      }
      @exercise_page.click_resources"Day 2 Activity Instructions"
      @driver.switch_to.window( @driver.window_handles.last ){
      }
    end

    it 'should be viewable and links should be clickable by bur user', :browser, :suite => 'regression' do
      sign_in_bur_auth_user
      @home.reset_user
      @home.start @config_base_url
      @register_modal.register_bur_user
      @dashboard.click_feature("Exercise Details")

      @exercise_page.heading.should == "Time to get your hands dirty!"
      @exercise_page.click_resources"Services Portal"
      sleep 5
      @driver.switch_to.window( @driver.window_handles.last ){
        @home.page_title.should == "Intuit Services Portal"
      }
      @exercise_page.click_resources"Live Community"
      sleep 5
      @driver.switch_to.window( @driver.window_handles.last ){
        @home.page_title.should == "Search Results for ctof feed - Intuit Developer Community"
      }
      @exercise_page.click_resources"Day 1 Activity Instructions"
      @driver.switch_to.window( @driver.window_handles.last ){
      }
      @exercise_page.click_resources"Day 2 Activity Instructions"
      @driver.switch_to.window( @driver.window_handles.last ){
      }
    end

    it 'should be viewable and links should be clickable by cmb user', :browser, :suite => 'regression' do
      sign_in_cmb_auth_user
      @home.reset_user
      @home.start @config_base_url
      @register_modal.register_cmb_user
      @dashboard.click_feature("Exercise Details")

      @exercise_page.heading.should == "Time to get your hands dirty!"
      @exercise_page.click_resources"Services Portal"
      sleep 5
      @driver.switch_to.window( @driver.window_handles.last ){
        @home.page_title.should == "Intuit Services Portal"
      }
      @exercise_page.click_resources"Live Community"
      sleep 5
      @driver.switch_to.window( @driver.window_handles.last ){
        @home.page_title.should == "Search Results for ctof feed - Intuit Developer Community"
      }
      @exercise_page.click_resources"Day 1 Activity Instructions"
      @driver.switch_to.window( @driver.window_handles.last ){
      }
      @exercise_page.click_resources"Day 2 Activity Instructions"
      @driver.switch_to.window( @driver.window_handles.last ){
      }
    end

    it 'should be viewable and links should be clickable by edm user', :browser, :suite => 'regression' do
      sign_in_edm_auth_user
      @home.reset_user
      @home.start @config_base_url
      @register_modal.register_edm_user
      @dashboard.click_feature("Exercise Details")

      @exercise_page.heading.should == "Time to get your hands dirty!"
      @exercise_page.click_resources"Services Portal"
      sleep 5
      @driver.switch_to.window( @driver.window_handles.last ){
        @home.page_title.should == "Intuit Services Portal"
      }
      @exercise_page.click_resources"Live Community"
      sleep 5
      @driver.switch_to.window( @driver.window_handles.last ){
        @home.page_title.should == "Search Results for ctof feed - Intuit Developer Community"
      }
      @exercise_page.click_resources"Day 1 Activity Instructions"
      @driver.switch_to.window( @driver.window_handles.last ){
      }
      @exercise_page.click_resources"Day 2 Activity Instructions"
      @driver.switch_to.window( @driver.window_handles.last ){
      }
    end

    it 'should be viewable and links should be clickable by mis user', :browser, :suite => 'regression' do
      sign_in_mis_auth_user
      @home.reset_user
      @home.start @config_base_url
      @register_modal.register_mis_user
      @dashboard.click_feature("Exercise Details")

      @exercise_page.heading.should == "Time to get your hands dirty!"
      @exercise_page.click_resources"Services Portal"
      sleep 5
      @driver.switch_to.window( @driver.window_handles.last ){
        @home.page_title.should == "Intuit Services Portal"
      }
      @exercise_page.click_resources"Live Community"
      sleep 5
      @driver.switch_to.window( @driver.window_handles.last ){
        @home.page_title.should == "Search Results for ctof feed - Intuit Developer Community"
      }
      @exercise_page.click_resources"Day 1 Activity Instructions"
      @driver.switch_to.window( @driver.window_handles.last ){
      }
      @exercise_page.click_resources"Day 2 Activity Instructions"
      @driver.switch_to.window( @driver.window_handles.last ){
      }
    end

    it 'should be viewable and links should be clickable by pln user', :browser, :suite => 'regression' do
      sign_in_pln_auth_user
      @home.reset_user
      @home.start @config_base_url
      @register_modal.register_pln_user
      @dashboard.click_feature("Exercise Details")

      @exercise_page.heading.should == "Time to get your hands dirty!"
      @exercise_page.click_resources"Services Portal"
      sleep 5
      @driver.switch_to.window( @driver.window_handles.last ){
        @home.page_title.should == "Intuit Services Portal"
      }
      @exercise_page.click_resources"Live Community"
      sleep 5
      @driver.switch_to.window( @driver.window_handles.last ){
        @home.page_title.should == "Search Results for ctof feed - Intuit Developer Community"
      }
      @exercise_page.click_resources"Day 1 Activity Instructions"
      @driver.switch_to.window( @driver.window_handles.last ){
      }
      @exercise_page.click_resources"Day 2 Activity Instructions"
      @driver.switch_to.window( @driver.window_handles.last ){
      }
    end

    it 'should be viewable and links should be clickable by rmt user', :browser, :suite => 'regression' do
      sign_in_rmt_auth_user
      @home.reset_user
      @home.start @config_base_url
      @register_modal.register_rmt_user
      @dashboard.click_feature("Exercise Details")

      @exercise_page.heading.should == "Time to get your hands dirty!"
      @exercise_page.click_resources"Services Portal"
      sleep 5
      @driver.switch_to.window( @driver.window_handles.last ){
        @home.page_title.should == "Intuit Services Portal"
      }
      @exercise_page.click_resources"Live Community"
      sleep 5
      @driver.switch_to.window( @driver.window_handles.last ){
        @home.page_title.should == "Search Results for ctof feed - Intuit Developer Community"
      }
      @exercise_page.click_resources"Day 1 Activity Instructions"
      @driver.switch_to.window( @driver.window_handles.last ){
      }
      @exercise_page.click_resources"Day 2 Activity Instructions"
      @driver.switch_to.window( @driver.window_handles.last ){
      }
    end

    it 'should be viewable and links should be clickable by wdh user', :browser, :suite => 'regression' do
      sign_in_wdh_auth_user
      @home.reset_user
      @home.start @config_base_url
      @register_modal.register_wdh_user
      @dashboard.click_feature("Exercise Details")

      @exercise_page.heading.should == "Time to get your hands dirty!"
      @exercise_page.click_resources"Services Portal"
      sleep 5
      @driver.switch_to.window( @driver.window_handles.last ){
        @home.page_title.should == "Intuit Services Portal"
      }
      @exercise_page.click_resources"Live Community"
      sleep 5
      @driver.switch_to.window( @driver.window_handles.last ){
        @home.page_title.should == "Search Results for ctof feed - Intuit Developer Community"
      }
      @exercise_page.click_resources"Day 1 Activity Instructions"
      @driver.switch_to.window( @driver.window_handles.last ){
      }
      @exercise_page.click_resources"Day 2 Activity Instructions"
      @driver.switch_to.window( @driver.window_handles.last ){
      }
    end
  end
end
