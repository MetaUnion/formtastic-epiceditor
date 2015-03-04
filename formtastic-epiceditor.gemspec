$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "formtastic-epiceditor/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "formtastic-epiceditor"
  s.version     = FormtasticEpiceditor::VERSION
  s.authors     = ["Ad Taylor"]
  s.email       = ["ad@metaunion.co.uk"]
  s.homepage    = "https://github.com/MetaUnion/formtastic-epiceditor"
  s.summary     = "Adds Epic Editor as a content type to formtastic."

  s.files = `git ls-files`.split("\n")
  s.test_files = Dir["test/**/*"]

end
