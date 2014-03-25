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

    def rsvp_confirmation
      sleep 2
      @driver.find_element(:css, 'h4 strong').text
    end

    def location_label
      @driver.find_element(:css, 'h4 span.text-muted.ng-binding').text
    end

    def welcome_user
      @driver.find_element(:css, 'strong.ng-binding').text
    end

    def register_user(reply)
      select_attendance(reply)
      click_submit
    end

    def select_attendance(response)
      @driver.find_elements(:css, 'select.form-control').each_with_index do |menu, index|
        #first dropdown menu
        if index == 0
          menu.find_elements(:tag_name, 'option').each do |choice|
            if choice.text.eql?(response)
              #puts "Click"
              choice.click
            end
          end
        end
      end
    end

    def click_submit
      sleep 3
      @driver.find_element(:css, 'div.modal-body button.btn.btn-primary').click
    end

  end
end