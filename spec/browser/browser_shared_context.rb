shared_context 'browser shared context' do
  before :all do
    @config = SeleniumHelpers::SeleniumConfiguration.instance.config
    @config_base_url = @config['console']['url']
    @config_remote_ip = @config['console']['remote_ip']
  end

  before :each do
    setup_selenium_driver

    @public_cloud = PageObjects::PublicCloud.new(@driver)
    @ami_catalog = PageObjects::AMICatalog.new(@driver)
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
      @driver = Selenium::WebDriver.for :firefox
      @driver.manage.window.maximize
      @driver.manage.timeouts.implicit_wait = 3
    else
      case browser
        when 'chrome' then
          capabilities = Selenium::WebDriver::Remote::Capabilities.chrome
          capabilities.platform = 'Windows 7'
          capabilities.version = '31'
          capabilities[:name] = "Testing Selenium 2 with Ruby on Sauce and Chrome"
          @driver = Selenium::WebDriver.for(:remote, :desired_capabilities => capabilities, :url => @config_remote_ip)
          @driver.manage.window.maximize
          @driver.manage.timeouts.implicit_wait = 20
        when 'firefox' then
          client = Selenium::WebDriver::Remote::Http::Default.new
          client.timeout = 500
          profile = Selenium::WebDriver::Firefox::Profile.new
          profile.add_extension File.join('spec', 'browser','setup','JSErrorCollector.xpi')

          capabilities = Selenium::WebDriver::Remote::Capabilities.firefox(:firefox_profile => profile)
          capabilities.platform = 'Windows 7'
          capabilities.version = '25'
          capabilities[:name] = "Testing Selenium 2 with Ruby on Sauce and Firefox"

          @driver = Selenium::WebDriver.for(:remote, :desired_capabilities => capabilities, :http_client => client, :url => @config_remote_ip)
          @driver.manage.window.maximize
          @driver.manage.timeouts.implicit_wait = 10
      end
    end

  end
end
