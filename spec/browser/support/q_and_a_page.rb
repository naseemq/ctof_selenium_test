module PageObjects
  class SessionDetails < BasePage

    def initialize(driver)
      super()
      @driver = driver
    end

    def question_text
      @driver.find_element(:css, 'div.media-body.ng-binding').text
    end

    def comment_text
      comment = ""
      @driver.find_elements(:css, 'div.comment.ng-scope small.ng-binding').each_with_index do |line_of_comment_text, index|
        #need to get the SECOND line of comment text to validate (first line says who commented and from what location)
        if index == 1
          comment = line_of_comment_text.text
        end
      end
      #return comment
      comment
    end

    def question_entry_box=(question)
      element = @driver.find_element(:css, 'textarea.form-control.ng-pristine.ng-invalid.ng-invalid-required')
      element.send_keys question
    end

    def comment_entry_box=(comment)
      element = @driver.find_element(:css, 'div.form-group textarea.form-control.ng-pristine.ng-valid')
      element.send_keys comment
    end

    def click_submit
      @driver.find_element(:css, 'button.btn.btn-primary').click
      sleep 2
    end

    def click_submit_comment
      @driver.find_element(:css, 'div.question.panel.panel-default.ng-scope button.btn.btn-primary').click
      sleep 2
    end

    def click_comment
      @driver.find_element(:css, 'i.icon-comment').click
    end

    def click_delete_your_question
      @driver.find_element(:css, 'button.btn.btn-small.btn-danger').click
    end

    def close_alert
    alert = @driver.switch_to.alert
    alert.accept
  end

  end
end