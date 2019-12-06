source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.6.3'

gem 'rails', '~> 5.2.3'
gem 'puma', '~> 3.12'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'

gem 'coffee-rails', '~> 4.2'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.5'

gem 'bootsnap', '>= 1.1.0', require: false
gem 'bootstrap'

gem 'bootstrap_form'

gem 'haml-rails'
gem 'jquery-rails'
gem 'sassc-rails', '>= 2.1.0'
gem 'font-awesome-rails'
gem 'clearance'
gem "paperclip", "~> 6.0.0"
gem 'aws-sdk', '~> 3'
gem "responders"
gem 'pg', '>= 0.18', '< 2.0'

group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'factory_bot'
  gem 'pry-rails'
  gem 'rspec-rails'
end

group :development do
  gem 'reek', require: false
  gem 'rubocop', require: false
  gem 'rubocop-rails', require: false
  gem 'rubycritic', require: false
  gem 'scss_lint', require: false
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

group :test do
  # Adds support for Capybara system testing and selenium driver
  gem 'capybara', '>= 2.15'
  gem 'selenium-webdriver'
  # Easy installation and use of chromedriver to run system tests with Chrome
  gem 'chromedriver-helper'
  gem 'simplecov'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
