module PageObjects
  class Feedback < BasePage

    def initialize(driver)
      super()
      @driver = driver
    end

    def heading
      @driver.find_element(:css, 'h3.page-header.ng-binding').text
    end

    def enter_feedback=(value)
      @driver.find_element(:css, 'textarea.form-control.ng-pristine.ng-valid').send_keys value
    end

    def click_submit
      @driver.find_element(:css, 'button.btn.btn-primary').click
    end

    def thank_you
      @driver.find_element(:xpath, "//*[@id='main-content']/div/form/div[1]/div[2]/h3").text
    end

    def feedback_confirmation
      @driver.find_element(:xpath, "//*[@id='main-content']/div/form/div[1]/div[2]/p").text
    end

  end
end