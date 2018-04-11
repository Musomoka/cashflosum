source 'http://rubygems.org'
ruby '2.3.3'
git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails'
gem 'slim', '~> 3.0', '>= 3.0.9'


gem 'jquery-ui-rails', '5.0.5'

gem 'jquery-rails'
gem 'bootstrap-sass', '~> 3.3.7'
gem 'momentjs-rails', '>= 2.9.0'
gem 'bootstrap3-datetimepicker-rails'
gem 'will_paginate'
gem 'jquery-datatables-rails'

gem 'patternfly-sass', '~> 3.42'
gem 'chartkick', '~> 2.3', '>= 2.3.2'
gem 'social-share-button'
gem 'therubyracer'
gem 'ajax-datatables-rails', '~>0.4.0'
gem "binding_of_caller"
gem 'awesome_print'
gem 'rake', '~> 12.3.1'
gem 'ancestry', '~> 3.0', '>= 3.0.1'
gem 'bcrypt'
gem 'pg'
# Use sqlite3 as the database for Active maininterp_record

# Use Puma as the app server
gem 'puma', '~> 3.7'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby
gem 'webpacker'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.2'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
  
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 3.0'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'
# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development
 gem 'devise'
 gem 'omniauth-facebook'
 gem 'rails_12factor'
 
group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  # Adds support for Capybara system testing and selenium driver
  gem 'capybara', '~> 2.13'
  gem 'selenium-webdriver'
end

group :development do
  gem 'better_errors', '~> 2.4'
  gem 'devise-bootstrap-views'
  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
   gem 'rails_layout'
end

