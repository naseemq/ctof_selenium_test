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

    def select_attendance(response)
      @driver.find_elements(:css, 'select.form-control').each_with_index do |menu, index|
        #first dropdown menu
        if index == 0
          menu.find_elements(:tag_name, 'option').each do |choice|
            if choice.text.eql?(response)
              choice.click
              break
            end
          end
        end
      end
    end

    def select_breakfast(response)
      @driver.find_elements(:css, 'select.form-control').each_with_index do |menu, index|
        if index == 1
          menu.find_elements(:tag_name, 'option').each do |choice|
            if choice.text.eql?(response)
              choice.click
              break
            end
          end
        end
      end
    end

    def select_lunch(response)
      @driver.find_elements(:css, 'select.form-control').each_with_index do |menu, index|
        if index == 2
          menu.find_elements(:tag_name, 'option').each do |choice|
            if choice.text.eql?(response)
              choice.click
              break
            end
          end
        end
      end
    end

    def select_evening_party(response)
      @driver.find_elements(:css, 'select.form-control').each_with_index do |menu, index|
        if index == 3
          menu.find_elements(:tag_name, 'option').each do |choice|
            if choice.text.eql?(response)
              choice.click
              break
            end
          end
        end
      end
    end

    def select_tshirt_size(response)
      @driver.find_elements(:css, 'div.form-group select.form-control.ng-pristine.ng-valid').each_with_index do |menu, index|
        if index == 4
          menu.find_elements(:tag_name, 'option').each do |choice|
            if choice.text.eql?(response)
              choice.click
              break
            end
          end
        end
      end
    end

    def select_work_role(response)
      @driver.find_elements(:css, 'div.form-group select.form-control.ng-pristine.ng-valid').each_with_index do |menu, index|
        if index == 5
          menu.find_elements(:tag_name, 'option').each do |choice|
            if choice.text.eql?(response)
              choice.click
              break
            end
          end
        end
      end
    end

    def select_work_experience(response)
      @driver.find_elements(:css, 'select.form-control').each_with_index do |menu, index|
        if index == 6
          menu.find_elements(:tag_name, 'option').each do |choice|
            if choice.text.eql?(response)
              choice.click
              break
            end
          end
        end
      end
    end

    def select_coding_experience(response)
      @driver.find_elements(:css, 'select.form-control').each_with_index do |menu, index|
        if index == 7
          menu.find_elements(:tag_name, 'option').each do |choice|
            if choice.text.eql?(response)
              choice.click
              break
            end
          end
        end
      end
    end

    def select_commute_service(response)
      @driver.find_elements(:css, 'select.form-control').each_with_index do |menu, index|
        if index == 8
          menu.find_elements(:tag_name, 'option').each do |choice|
            if choice.text.eql?(response)
              choice.click
              break
            end
          end
        end
      end
    end

    def click_next
      @driver.find_element(:css, 'div.modal-body button.btn.btn-primary.btn-lg.btn-block').click
    end

    def click_submit
      @driver.find_element(:css, 'div.modal-body a.btn.btn-primary.btn-lg').click
      sleep 3
    end

    def click_submit_decline
      @driver.find_element(:xpath, "//body[@id='ng-app']/div[3]/div/div/form/div/div/div/div/div[3]/div/div[5]/button[2]").click
    end

    def uninvited_message
      @driver.find_element(:css, 'div.modal-body p').text
    end

  end
end