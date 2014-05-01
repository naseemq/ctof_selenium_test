module PageObjects
  class SessionDetails < BasePage

    def initialize(driver)
      super()
      @driver = driver
    end

    def session_description
      @driver.find_element(:css, 'p.ng-binding').text
    end

    def click_session_q_and_a
      @driver.find_element(:css, 'i.icon-comment').click
    end

    def session_title
      @driver.find_element(:css, 'h4.media-heading.ng-binding').text
    end

  end
end