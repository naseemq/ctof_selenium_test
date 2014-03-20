require_relative 'support/base_page'
require_relative 'browser_shared_context'

Dir.glob('spec/browser/support/*.rb').each do |file|
  file.gsub!('spec/browser/','')
  require_relative file
end

include ActionView::Helpers::TextHelper


module BrowserSpecUtils
  mattr_reader :settings
  def self.settings
    return @@settings if @@settings.present?
    @@settings = {}
    File.open('.testenv').each_line do |line|
      line.strip!
      next if line[0] == '#' || !line.include?('=')

      key = line.split('=').first.downcase.to_sym
      value = line.split('=', 2)[1..-1].join
      @@settings[key] = value
    end
    @@settings
  end

  def sign_in_sdg_auth_user
    @home.start @config_base_url
    @home.click_sign_in
    @sign_in_modal.modal_title.should include 'Sign In'
    @sign_in_modal.username = @config_iam_sdg_auth_user
    @sign_in_modal.password = @config_iam_sdg_auth_user_password
    @sign_in_modal.click_submit
  end

  def sign_in_mtv_auth_user
    @home.start @config_base_url
    @home.click_sign_in
    @sign_in_modal.modal_title.should include 'Sign In'
    @sign_in_modal.username = @config_iam_mtv_auth_user
    @sign_in_modal.password = @config_iam_mtv_auth_user_password
    @sign_in_modal.click_submit
  end

  def sign_in_ban_auth_user
    @home.start @config_base_url
    @home.click_sign_in
    @sign_in_modal.modal_title.should include 'Sign In'
    @sign_in_modal.username = @config_iam_ban_auth_user
    @sign_in_modal.password = @config_iam_ban_auth_user_password
    @sign_in_modal.click_submit
  end

  def sign_in_bur_auth_user
    @home.start @config_base_url
    @home.click_sign_in
    @sign_in_modal.modal_title.should include 'Sign In'
    @sign_in_modal.username = @config_iam_bur_auth_user
    @sign_in_modal.password = @config_iam_bur_auth_user_password
    @sign_in_modal.click_submit
  end

  def sign_in_cmb_auth_user
    @home.start @config_base_url
    @home.click_sign_in
    @sign_in_modal.modal_title.should include 'Sign In'
    @sign_in_modal.username = @config_iam_cmb_auth_user
    @sign_in_modal.password = @config_iam_cmb_auth_user_password
    @sign_in_modal.click_submit
  end

  def sign_in_edm_auth_user
    @home.start @config_base_url
    @home.click_sign_in
    @sign_in_modal.modal_title.should include 'Sign In'
    @sign_in_modal.username = @config_iam_edm_auth_user
    @sign_in_modal.password = @config_iam_edm_auth_user_password
    @sign_in_modal.click_submit
  end

  def sign_in_mis_auth_user
    @home.start @config_base_url
    @home.click_sign_in
    @sign_in_modal.modal_title.should include 'Sign In'
    @sign_in_modal.username = @config_iam_mis_auth_user
    @sign_in_modal.password = @config_iam_mis_auth_user_password
    @sign_in_modal.click_submit
  end

  def sign_in_pln_auth_user
    @home.start @config_base_url
    @home.click_sign_in
    @sign_in_modal.modal_title.should include 'Sign In'
    @sign_in_modal.username = @config_iam_pln_auth_user
    @sign_in_modal.password = @config_iam_pln_auth_user_password
    @sign_in_modal.click_submit
  end

  def sign_in_rmt_auth_user
    @home.start @config_base_url
    @home.click_sign_in
    @sign_in_modal.modal_title.should include 'Sign In'
    @sign_in_modal.username = @config_iam_rmt_auth_user
    @sign_in_modal.password = @config_iam_rmt_auth_user_password
    @sign_in_modal.click_submit
  end

  def sign_in_wdh_auth_user
    @home.start @config_base_url
    @home.click_sign_in
    @sign_in_modal.modal_title.should include 'Sign In'
    @sign_in_modal.username = @config_iam_wdh_auth_user
    @sign_in_modal.password = @config_iam_wdh_auth_user_password
    @sign_in_modal.click_submit
  end

  def sign_in_unauth_user
    @home.start @config_base_url
    @home.click_sign_in
    @sign_in_modal.modal_title.should include 'Sign In'
    @sign_in_modal.username = @config_iam_unauth_user
    @sign_in_modal.password = @config_iam_unauth_user_password
    @sign_in_modal.click_submit
  end
end
