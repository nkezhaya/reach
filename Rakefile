require 'rubygems'
require 'rake'
require 'echoe'

Echoe.new('reach', '0.1.0') do |p|
  p.description    = "Get address book contacts with an email and password."
  p.url            = "http://github.com/nkezhaya/reach"
  p.author         = "Nick Kezhaya"
  p.email          = "nick@whitepaperclip.com"
  p.ignore_pattern = ["tmp/*", "script/*"]
  p.development_dependencies = []
end

Dir["#{File.dirname(__FILE__)}/tasks/*.rake"].sort.each { |ext| load ext }
