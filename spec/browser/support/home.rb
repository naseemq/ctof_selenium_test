module PageObjects
  class Welcome < BasePage

    def initialize(driver)
      super()
      @driver = driver
    end

    def start(url)
      @driver.navigate.to url
    end

    def click_sign_in
      element = @driver.find_element(:css, 'div.container a.navbar-link')
      element.click
    end

  end
end
