module PageObjects
  class GoSocial < BasePage

    def initialize(driver)
      super()
      @driver = driver
    end

    def title
      @driver.find_element(:css, 'div.container h4').text
    end

    def event_hashtag
      @driver.find_element(:css, 'div.container div.well code.ng-binding').text
    end

    def speaker_twitter
      @driver.find_element(:css, 'div.media-body h4').text
    end

  end
end