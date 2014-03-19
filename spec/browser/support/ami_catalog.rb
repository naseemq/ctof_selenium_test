module PageObjects
  class AMICatalog < BasePage

    LOCATORS = {
      "title"                     =>  'h1.media-heading'
    }

    def initialize(driver)
      super()
      @driver = driver
    end

    def title
      sleep 3
      @driver.find_element(:css, LOCATORS['title']).text
    end

    def click_filter
      @driver.find_element(:css, 'a.btn.btn-primary.btn-large.dropdown-toggle.ng-binding').click
    end

  end
end
