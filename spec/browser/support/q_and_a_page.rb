module PageObjects
  class SessionDetails < BasePage

    def initialize(driver)
      super()
      @driver = driver
    end

    def close_alert
      alert = @driver.switch_to.alert
      alert.accept
    end

    def question_entry_box=(question)
      element = @driver.find_element(:css, 'textarea.form-control.ng-pristine.ng-invalid.ng-invalid-required')
      element.send_keys question
    end

    def question_text
      @driver.find_element(:css, 'div.media-body.ng-binding').text
    end

    def click_submit
      @driver.find_element(:css, 'button.btn.btn-primary').click
      sleep 2
    end

    def click_delete_your_question
      @driver.find_element(:css, 'button.btn.btn-small.btn-danger').click
    end

  end
end