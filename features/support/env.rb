require File.join(File.dirname(__FILE__), '..', '..', 'lib', 'zappos')

require 'capybara/cucumber'
Capybara.default_driver = :selenium
Capybara.app = Sinatra::Application
Sinatra::Application.set :enviornment, :test
