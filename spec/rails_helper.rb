ENV['RAILS_ENV'] ||= 'test'
  require File.expand_path('../../config/environment', __FILE__)
    abort('The Rails environment is running in production mode!') if Rails.env.production?
      require 'spec_helper'
      require 'rspec/rails'
      require 'devise'
      ActiveRecord::Migration.maintain_test_schema!
      Shoulda::Matchers.configure do |config|
        config.integrate do |with|
          with.test_framework :rspec
      with.library :rails
  end
end
