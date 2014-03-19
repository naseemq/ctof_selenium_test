module PageObjects
  class SignInModal < BasePage

    def initialize(driver)
      super()
      @driver = driver
    end

    def modal_title
      sleep 3
      @driver.find_element(:css, 'h3.modal-title').text
    end

    def username=(value)
      element = @driver.find_element(:name, 'userId')
      element.clear
      element.send_keys value
    end

    def password=(value)
      element = @driver.find_element(:name, 'password')
      element.clear
      element.send_keys value
    end

    def click_submit
      @driver.find_element(:css, 'button.btn.btn-primary').click
    end

    def refresh_page
      @driver.navigate().refresh()
    end

  end
end
