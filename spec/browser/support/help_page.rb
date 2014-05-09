module PageObjects
  class HelpPage < BasePage

    def initialize(driver)
      super()
      @driver = driver
    end

    def heading
      @driver.find_element(:css, 'div.container h4').text
    end

    def helpful_links
      helpful_links = []
      @driver.find_elements(:css, 'div.container ul li a').each do |element|
        text = element.text
        helpful_links << text
      end
      helpful_links
    end

  end
end