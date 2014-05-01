module PageObjects
  class SessionDetails < BasePage

    def initialize(driver)
      super()
      @driver = driver
    end

    def example_method_use_this
      @driver.find_element(:css, 'div.container h3.page-header.ng-binding').text
    end

    def click_session_q_and_a
      @driver.find_element(:css, 'i.icon-comment').click
    end

  end
end