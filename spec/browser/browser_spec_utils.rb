require_relative 'support/base_page'
require_relative 'browser_shared_context'

Dir.glob('spec/browser/support/*.rb').each do |file|
  file.gsub!('spec/browser/','')
  require_relative file
end

include ActionView::Helpers::TextHelper


module BrowserSpecUtils
  mattr_reader :settings
  def self.settings
    return @@settings if @@settings.present?
    @@settings = {}
    File.open('.testenv').each_line do |line|
      line.strip!
      next if line[0] == '#' || !line.include?('=')

      key = line.split('=').first.downcase.to_sym
      value = line.split('=', 2)[1..-1].join
      @@settings[key] = value
    end
    @@settings
  end

end
