shared_context 'browser shared context' do
  before :all do
    @config = SeleniumHelpers::SeleniumConfiguration.instance.config

    @config_iam_sdg_auth_user = @config['console']['iam_auth_user_sdg']
    @config_iam_sdg_auth_user_password = @config['console']['iam_auth_user_sdg_password']

    @config_iam_mtv_auth_user = @config['console']['iam_auth_user_mtv']
    @config_iam_mtv_auth_user_password = @config['console']['iam_auth_user_mtv_password']

    @config_iam_ban_auth_user = @config['console']['iam_auth_user_ban']
    @config_iam_ban_auth_user_password = @config['console']['iam_auth_user_ban_password']

    @config_iam_bur_auth_user = @config['console']['iam_auth_user_bur']
    @config_iam_bur_auth_user_password = @config['console']['iam_auth_user_bur_password']

    @config_iam_cmb_auth_user = @config['console']['iam_auth_user_cmb']
    @config_iam_cmb_auth_user_password = @config['console']['iam_auth_user_cmb_password']

    @config_iam_edm_auth_user = @config['console']['iam_auth_user_edm']
    @config_iam_edm_auth_user_password = @config['console']['iam_auth_user_edm_password']

    @config_iam_mis_auth_user = @config['console']['iam_auth_user_mis']
    @config_iam_mis_auth_user_password = @config['console']['iam_auth_user_mis_password']

    @config_iam_pln_auth_user = @config['console']['iam_auth_user_pln']
    @config_iam_pln_auth_user_password = @config['console']['iam_auth_user_pln_password']

    @config_iam_rmt_auth_user = @config['console']['iam_auth_user_rmt']
    @config_iam_rmt_auth_user_password = @config['console']['iam_auth_user_rmt_password']

    @config_iam_wdh_auth_user = @config['console']['iam_auth_user_wdh']
    @config_iam_wdh_auth_user_password = @config['console']['iam_auth_user_wdh_password']

    @config_iam_unauth_user = @config['console']['iam_unauth_user']
    @config_iam_unauth_user_password = @config['console']['iam_unauth_user_password']

    @config_base_url = @config['console']['url']
    @config_remote_ip = @config['console']['remote_ip']
  end

  before :each do
    setup_selenium_driver

    @home = PageObjects::Welcome.new(@driver)
    @sign_in_modal = PageObjects::SignInModal.new(@driver)
    @register_modal = PageObjects::RegisterModal.new(@driver)
    @dashboard = PageObjects::Dashboard.new(@driver)
    @session_details = PageObjects::SessionDetails.new(@driver)
    @q_and_a_page = PageObjects::SessionDetails.new(@driver)
    @go_social = PageObjects::GoSocial.new(@driver)
    @speaker_bios = PageObjects::SpeakerBios.new(@driver)
  end

  after :each do
    @driver.quit
  end

  def setup_selenium_driver
    type = ENV['type']
    unless type.present?
      type = 'local'
    end

    browser = ENV['browser']
    unless browser.present?
      browser = 'firefox'
    end

    if type == 'local'
      profile = Selenium::WebDriver::Firefox::Profile.new
      profile.add_extension File.join('spec', 'browser','setup','JSErrorCollector.xpi')
      @driver = Selenium::WebDriver.for :firefox, :profile => profile
      @driver.manage.window.maximize
      @driver.manage.timeouts.implicit_wait = 3

    else
      case browser
        when 'chrome' then
          capabilities = Selenium::WebDriver::Remote::Capabilities.chrome
          capabilities.platform = 'Windows 7'
          capabilities.version = '31'
          capabilities['ignoreProtectedModeSettings'] = true
          capabilities[:name] = "Testing Selenium 2 with Ruby on Sauce and Chrome"
          @driver = Selenium::WebDriver.for(:remote, :desired_capabilities => capabilities, :url => @config_remote_ip)
          @driver.manage.window.maximize
          @driver.manage.timeouts.implicit_wait = 20
        when 'iphone' then
          capabilities = Selenium::WebDriver::Remote::Capabilities.iphone
          capabilities.platform = 'OS X 10.9'
          capabilities.version = '7'
          capabilities['ignoreProtectedModeSettings'] = true
          capabilities[:name] = "Testing Selenium 2 with Ruby on Sauce and iPhone"
          @driver = Selenium::WebDriver.for(:remote, :desired_capabilities => capabilities, :url => @config_remote_ip)
          @driver.manage.timeouts.implicit_wait = 30
        when 'firefox' then
          client = Selenium::WebDriver::Remote::Http::Default.new
          client.timeout = 500
          profile = Selenium::WebDriver::Firefox::Profile.new
          profile.add_extension File.join('spec', 'browser','setup','JSErrorCollector.xpi')

          #capabilities = Selenium::WebDriver::Remote::Capabilities.firefox(:firefox_profile => profile)
          capabilities = Selenium::WebDriver::Remote::Capabilities.firefox
          capabilities.platform = 'Windows 7'
          capabilities.version = '29'
          capabilities['ignoreProtectedModeSettings'] = true
          capabilities[:name] = "Testing Selenium 2 with Ruby on Sauce and Firefox"

          @driver = Selenium::WebDriver.for(:remote, :desired_capabilities => capabilities, :http_client => client, :url => @config_remote_ip)
          @driver.manage.window.maximize
          @driver.manage.timeouts.implicit_wait = 10
        when 'htmlunit' then
          caps = Selenium::WebDriver::Remote::Capabilities.htmlunit(:javascript_enabled => true)
          @driver = Selenium::WebDriver.for(:remote, :desired_capabilities => caps, :url => @config_remote_ip)
      end
    end

  end
end
