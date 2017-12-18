# This file is copied to spec/ when you run 'rails generate rspec:install'

ENV['RAILS_ENV'] ||= 'test'
require File.expand_path('../../config/environment', __FILE__)
abort("The Rails environment is running in production mode!") if Rails.env.production?
require 'rspec/rails'

require 'spec_helper'
# require 'support/factory_bot'
require 'simplecov'
SimpleCov.start

ActiveRecord::Migration.maintain_test_schema!

RSpec.configure do |config|
  config.fixture_path = "#{::Rails.root}/spec/fixtures"
  include Warden::Test::Helpers
  config.use_transactional_fixtures = true

  config.after :each do
    Warden.test_reset!
  end

  config.infer_spec_type_from_file_location!
  config.filter_rails_from_backtrace!

end
