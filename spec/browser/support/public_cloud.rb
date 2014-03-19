module PageObjects
  class PublicCloud < BasePage

    LOCATORS = {
      "title"                     =>  'h1.media-heading'
    }

    def initialize(driver)
      super()
      @driver = driver
    end

    def start(url)
      @driver.navigate.to url
    end

    def title
      sleep 3
      @driver.find_element(:css, LOCATORS['title']).text
    end

    def click_ami_catalog
      @driver.find_element(:css, 'a[href*=amiCatalog]').click
    end

  end
end
