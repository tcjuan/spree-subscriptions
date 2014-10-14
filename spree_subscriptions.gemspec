$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "spree_subscriptions/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "spree_subscriptions"
  s.version     = SpreeSubscriptions::VERSION
  s.authors     = ["TODO: Your name"]
  s.email       = ["TODO: Your email"]
  s.homepage    = "TODO"
  s.summary     = "TODO: Summary of SpreeSubscriptions."
  s.description = "TODO: Description of SpreeSubscriptions."

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.0.3"
  s.add_dependency 'prawn', '~> 0.12.0'
  s.add_dependency 'prawn-labels', '~> 0.11.3'

  s.add_development_dependency 'capybara', '2.2.1'
  s.add_development_dependency 'rspec-rails',  '~> 2.13'
  s.add_development_dependency 'factory_girl', '~> 4.4'
  s.add_development_dependency 'selenium-webdriver', '~> 2.35'
  s.add_development_dependency 'database_cleaner', '~> 1.2'
  s.add_development_dependency 'email_spec', '~> 1.5.0'
  s.add_development_dependency 'ffaker'
  s.add_development_dependency 'sqlite3'
  s.add_development_dependency 'sass-rails', '~> 4.0'
  s.add_development_dependency 'coffee-rails', '~> 4.0'
  s.add_development_dependency 'coveralls', '~> 0.7'
  
end
