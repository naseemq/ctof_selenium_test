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

    def register_sdg_user
      modal_title.should include 'Register for CTOF 2014'
      welcome_user.should == 'Welcome Jonathan!'
      location_label.should == 'San Diego'

      select_attendance('Yes!')
      select_breakfast('Yes, please')
      select_lunch('Anything will do')
      select_evening_party('I\'m going')
      click_next

      select_work_role('Product Development')
      select_work_experience('Mostly front end')
      select_coding_experience('Yes')
      click_submit
      rsvp_confirmation.should include("RSVP Received")
      close_registeration_confirmation_modal
    end

    def register_mtv_user
      modal_title.should include 'Register for CTOF 2014'
      welcome_user.should == 'Welcome Ivan!'
      location_label.should == 'Mountain View'

      select_attendance('Yes!')
      select_breakfast('Yes, please')
      select_lunch('Anything will do')
      select_evening_party('I\'m going')
      click_next

      select_work_role('Product Development')
      select_work_experience('Mostly front end')
      select_coding_experience('Yes')
      click_submit
      rsvp_confirmation.should include("RSVP Received")
      close_registeration_confirmation_modal
    end

    def register_ban_user
      modal_title.should include 'Register for CTOF 2014'
      welcome_user.should == 'Welcome Santosh!'
      location_label.should == 'Bangalore'

      select_attendance('Yes!')
      select_breakfast('Yes, please')
      select_lunch('Anything will do')
      click_next

      select_tshirt_size('Large')
      select_work_role('Product Development')
      select_work_experience('Mostly front end')
      select_coding_experience('Yes')
      select_commute_service('No')
      click_submit
      rsvp_confirmation.should include("RSVP Received")
      close_registeration_confirmation_modal
    end

    def register_bur_user
      modal_title.should include 'Register for CTOF 2014'
      welcome_user.should == 'Welcome Ananthakrishnan!'
      location_label.should == 'Burlingame'

      select_attendance('Yes!')
      click_next

      select_work_role('Product Development')
      select_work_experience('Mostly front end')
      select_coding_experience('Yes')
      sleep 3
      click_submit
      rsvp_confirmation.should include("RSVP Received")
      close_registeration_confirmation_modal
    end

    def register_cmb_user
      modal_title.should include 'Register for CTOF 2014'
      welcome_user.should == 'Welcome Jeffrey!'
      location_label.should == 'Cambridge'

      select_attendance('Yes!')
      select_breakfast('Yes, please')
      @register_modal.select_lunch('Anything will do')
      click_next

      select_work_role('Product Development')
      select_work_experience('Mostly front end')
      select_coding_experience('Yes')
      click_submit
      rsvp_confirmation.should include("RSVP Received")
      close_registeration_confirmation_modal
    end

    def register_edm_user
      modal_title.should include 'Register for CTOF 2014'
      welcome_user.should == 'Welcome Bradley!'
      location_label.should == 'Edmonton'

      select_attendance('Yes!')
      select_breakfast('Yes, please')
      select_lunch('Anything will do')
      click_next

      select_work_role('Product Development')
      select_work_experience('Mostly front end')
      select_coding_experience('Yes')
      click_submit
      rsvp_confirmation.should include("RSVP Received")
      close_registeration_confirmation_modal
    end

    def register_mis_user
      modal_title.should include 'Register for CTOF 2014'
      welcome_user.should == 'Welcome Ananth!'
      location_label.should == 'Mississauga'

      select_attendance('Yes!')
      select_breakfast('Yes, please')
      select_lunch('Anything will do')
      click_next

      select_work_role('Product Development')
      select_work_experience('Mostly front end')
      select_coding_experience('Yes')
      click_submit
      rsvp_confirmation.should include("RSVP Received")
      close_registeration_confirmation_modal
    end

    def register_pln_user
      modal_title.should include 'Register for CTOF 2014'
      welcome_user.should == 'Welcome Mary!'
      location_label.should == 'Plano'

      select_attendance('Yes!')
      select_breakfast('Yes, please')
      select_lunch('Anything will do')
      click_next

      select_work_role('Product Development')
      select_work_experience('Mostly front end')
      select_coding_experience('Yes')
      click_submit
      rsvp_confirmation.should include("RSVP Received")
      close_registeration_confirmation_modal
    end

    def register_rmt_user
      modal_title.should include 'Register for CTOF 2014'
      welcome_user.should == 'Welcome Alexander!'
      location_label.should == 'Remote'

      select_attendance('Yes!')
      click_next

      select_work_role('Product Development')
      select_work_experience('Mostly front end')
      select_coding_experience('Yes')
      click_submit
      rsvp_confirmation.should include("RSVP Received")
      close_registeration_confirmation_modal
    end

    def register_wdh_user
      modal_title.should include 'Register for CTOF 2014'
      welcome_user.should == 'Welcome Tori!'
      location_label.should == 'Woodland Hills'

      select_attendance('Yes!')
      select_breakfast('Yes, please')
      select_lunch('Anything will do')
      click_next

      select_work_role('Product Development')
      select_work_experience('Mostly front end')
      select_coding_experience('Yes')
      click_submit
      rsvp_confirmation.should include("RSVP Received")
      close_registeration_confirmation_modal
    end

    def close_registeration_confirmation_modal
      @driver.find_element(:css, 'div.close button').click
      sleep 3
    end

  end
end