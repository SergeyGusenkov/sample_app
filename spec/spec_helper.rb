require 'spec_helper'
require File.expand_path("../../config/environment", __FILE__)
require 'rspec/rails'
require 'rails/all'

RSpec.configure do |config|

  
  config.expect_with :rspec do |expectations|
   
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end

  # rspec-mocks config goes here. You can use an alternate test double
  # library (such as bogus or mocha) by changing the `mock_with` option here.
  config.mock_with :rspec do |mocks|
    # Prevents you from mocking or stubbing a method that does not exist on
    # a real object. This is generally recommended, and will default to
    # `true` in RSpec 4.
    mocks.verify_partial_doubles = true
  end


 config.fixture_path = "#{::Rails.root}/spec/fixtures"
 config.use_transactional_fixtures = true
 config.infer_base_class_for_anonymous_controllers = false
 config.order = "random" 
 config.include Capybara::DSL
end
