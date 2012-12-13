$:.push File.expand_path("../lib", __FILE__)
require 'dock/version'

Gem::Specification.new do |s|
  s.name        = 'dock'
  s.version     = Dock::VERSION
  s.date        = '2012-12-08'
  s.summary     = "Dock"
  s.description = "Authentication library for Banzai APIs"
  s.authors     = ["Kendall Buchanan"]
  s.email       = 'kendall@teachbanzai.com'
  s.files       = ["lib/dock.rb"]
  s.homepage    = 'https://github.com/kendagriff/dock'
end
