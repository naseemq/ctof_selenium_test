module PageObjects
  class Welcome < BasePage

    def initialize(driver)
      super()
      @driver = driver
    end

    def start(url)
      @driver.navigate.to url
    end

    def reset_user
      #assume user is logged in
      @driver.navigate.to "http://ec2-75-101-173-222.compute-1.amazonaws.com/ma/api/v1/json/normal/attendee?method=put&confirmation=Unknown"
    end

    def click_sign_in
      #element = @driver.find_element(:css, 'div.container a.navbar-link')
      element = @driver.find_element(:css, 'a.btn.btn-lg.btn-transparent')
      element.click
    end

    def click_register
      element = @driver.find_element(:css, 'a.btn.btn-lg.btn-transparent')
      element.click
    end

  end
end