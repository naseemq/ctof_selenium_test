module PageObjects
  class SpeakerBios < BasePage

    def initialize(driver)
      super()
      @driver = driver
    end

    def heading
      @driver.find_element(:css, 'div.panel-heading').text
    end

    def speaker_name
      speaker_name = []
      @driver.find_elements(:css, 'h4.list-group-item-heading').each do |element|
        text = element.text
        speaker_name << text
      end
      speaker_name
    end

    def speaker_bio
      speaker_bio = []
      @driver.find_elements(:css, 'div.media-body p').each do |element|
        text = element.text
        speaker_bio << text
      end
      speaker_bio
    end

  end
end