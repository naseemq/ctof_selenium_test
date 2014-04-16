module PageObjects
  class Dashboard < BasePage

    def initialize(driver)
      super()
      @driver = driver
    end

    def schedule_day
      @driver.find_element(:css, 'td.text-center span.dayPickerDate.ng-binding').text
    end

    def session_name
      @driver.find_element(:css, 'h4.list-group-item-heading.ng-binding').text
    end

    def session_time
      @driver.find_element(:css, 'p.list-group-item-text.ng-binding').text
    end

    def click_next_day_button
      @driver.find_element(:css, 'button.btn.btn-default.btn-sm.pull-right').click
    end

  end
end