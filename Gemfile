
source 'https://rubygems.org'
ruby '2.6.2'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails'
gem 'rack-proxy'
gem 'awesome_print'
gem 'jquery-rails'
gem 'jquery-ui-rails'
gem 'bootstrap'
gem 'momentjs-rails'
gem 'will_paginate'
gem 'popper_js'
gem 'simple_form'
gem 'patternfly-sass'
gem 'social-share-button'
gem 'mini_racer'
gem "binding_of_caller"
gem 'rake'
gem 'ancestry'
gem 'bcrypt'
gem 'turbolinks'
gem 'pg'
# Chartkick and group date
gem "chartkick"
gem 'solargraph'

gem 'groupdate'
# Use Puma as the app server
gem 'puma'

# Use SCSS for stylesheets
gem 'sass-rails'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
 
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 3.0'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'
# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development
 gem 'devise'
 gem 'omniauth-facebook'
 gem 'rails_12factor'
 gem 'faker'
 gem "plutus"
 gem 'webpacker'
group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  # Adds support for Capybara system testing and selenium driver
  gem 'capybara', '~> 2.13'
  gem 'selenium-webdriver'
end

group :development do
  gem 'better_errors'
  gem 'devise-bootstrap-views'
  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  gem 'web-console'
  gem 'listen'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen'
   gem 'rails_layout'
end


gem "redis", "~> 5.0"
gem "cable_ready", "~> 4.5"
gem "stimulus_reflex", "~> 3.4"
