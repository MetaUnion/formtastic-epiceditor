$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "formtastic-epiceditor/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "formtastic-epiceditor"
  s.version     = FormtasticEpiceditor::VERSION
  s.authors     = ["Ad Taylor"]
  s.email       = ["ad@metaunion.co.uk"]
  s.homepage    = ""
  s.summary     = "Adds Epic Editor as a content type to formtastic."
  # s.description = "TODO: Description of FormtasticEpiceditor."

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 3.2.9"

end
