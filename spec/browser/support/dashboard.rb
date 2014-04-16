module PageObjects
  class Welcome < BasePage

    def initialize(driver)
      super()
      @driver = driver
    end

    def click_register
      element = @driver.find_element(:css, 'a.btn.btn-lg.btn-transparent')
      element.click
    end

  end
end