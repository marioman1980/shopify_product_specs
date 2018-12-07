source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.5.1'

gem 'shopify_app', '8.3.2'
gem 'dotenv-rails', '2.5.0', groups: [:development, :test]
# gem 'rails', '5.2.1.1'
gem 'rails', '5.2.2'
gem 'mysql2', '0.5.2'
gem 'sinatra', '2.0.4'

gem 'haml', '5.0.4'
gem 'haml-rails', '1.0.0'

# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '4.1.20'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '1.3.2', require: false

group :development, :test do
  gem 'pry', '0.12.2'
  gem 'pry-remote', '0.1.8'
  gem 'pry-stack_explorer', '0.4.9.3'
  gem 'pry-byebug', '3.6.0'  
end

group :development do
  # Access an interactive console on exception pages or by calling 'console' anywhere in the code.
  gem 'web-console', '3.7.0'
  gem 'listen', '3.1.5'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring', '2.0.2'
  gem 'spring-watcher-listen', '2.0.1'
end

group :test do
  # Adds support for Capybara system testing and selenium driver
  gem 'capybara', '3.12.0'
  gem 'selenium-webdriver', '3.141.0'
  # Easy installation and use of chromedriver to run system tests with Chrome
  gem 'chromedriver-helper', '2.1.0'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
