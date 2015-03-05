source 'https://rubygems.org'
ruby "1.9.3"
gem 'rails', '3.2.18'

# Use Cucumber and capybara
group :test do
  gem 'cucumber-rails', :require => false
  # database_cleaner is not required, but highly recommended
  gem 'database_cleaner'
end

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'
group :development, :test do
	gem 'capybara'
	gem 'sqlite3'
  gem 'cucumber-rails-training-wheels' # some pre-fabbed step definitions  
  gem 'launchy'          # a useful debugging aid for user stories
  gem 'rspec-rails', '~> 3.0.0'
  gem 'factory_girl_rails'
end

group :production do
	gem 'pg'
end

group :development do
  gem "debugger"
end

gem 'simplecov', :require => false, :group => :test

#Cron jobs thru Whenever
gem 'whenever', :require => false

gem 'sass-rails',   '~> 3.2.3'
gem 'coffee-rails', '~> 3.2.1'
gem 'bootstrap-sass'


gem 'autoprefixer-rails'
gem 'haml'
gem 'jquery-rails'
gem 'turbolinks'
gem 'jquery-ui-rails'
gem 'sprockets'
gem 'uglifier', '>= 1.0.3'
 
# for authorization
gem 'omniauth'
gem 'omniauth-shibboleth'
# allow your server to talk to UPS's server 
gem 'rack-saml', '>= 0.1.1'

# handy pagination
gem 'will_paginate'
gem 'will_paginate-bootstrap'
gem 'ransack'