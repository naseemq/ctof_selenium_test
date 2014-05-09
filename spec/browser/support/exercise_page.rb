module PageObjects
  class ExercisePage < BasePage

    def initialize(driver)
      super()
      @driver = driver
    end

    def heading
      @driver.find_element(:css, 'h4.media-heading').text
    end

    def click_resources(resource_name)
      @driver.find_elements(:css, 'ul.list-unstyled li a').each do |resource|
        if resource.text.include? resource_name
          resource.click
          break
        end
      end
    end

  end
end