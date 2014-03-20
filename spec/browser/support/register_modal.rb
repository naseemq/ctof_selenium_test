module PageObjects
  class RegisterModal < BasePage

    def initialize(driver)
      super()
      @driver = driver
    end

    def modal_title
      sleep 3
      @driver.find_element(:css, 'h3.modal-title').text
    end

    def welcome_user
      @driver.find_element(:css, 'strong.ng-binding').text
    end

  end
end