source 'https://rubygems.org'

gem 'rails', '3.2.6'
gem 'bootstrap-sass', '>= 2.0.0'
gem 'bcrypt-ruby', '>= 3.0.1'

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'

group :development, :test do
  gem 'sqlite3'
  gem 'rspec-rails'
end

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'

  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  # gem 'therubyracer', :platforms => :ruby

  gem 'uglifier', '>= 1.0.3'
end

gem 'jquery-rails'

gem 'prawn', :git => "https://github.com/prawnpdf/prawn.git"
gem 'prawn_rails'
gem 'barby'

gem 'annotate', '>= 2.5.0', group: :development

group :test do
  gem 'capybara'
  gem 'factory_girl_rails', '>= 1.4.0'
	gem 'cucumber-rails', '>= 1.2.1', require: false
  gem 'database_cleaner', '>= 0.7.0'
end

group :production do
  gem 'pg'
end

# To use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# To use Jbuilder templates for JSON
# gem 'jbuilder'

# Use unicorn as the app server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger
# gem 'debugger'
