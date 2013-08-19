source 'https://rubygems.org'

gem 'rails', '3.2.13'
gem 'jquery-rails'
gem 'bootstrap-sass'

group :development do
	gem 'rspec-rails'
	gem 'guard'
	gem 'guard-livereload'
	gem 'guard-bundler'
	gem 'guard-rspec'
	gem 'guard-zeus'
	gem 'guard-rails-assets'
	gem 'guard-ctags-bundler'
	gem 'rack-livereload'
	gem 'rb-inotify'
	gem 'rb-fsevent'
	gem 'libnotify'
end

group :development, :test do
  gem 'debugger' unless ENV["RM_INFO"]
  gem 'sqlite3'
end

group :production do
  gem 'pg', '0.12.2'
end

group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'
  gem 'therubyracer', :platforms => :ruby
  gem 'uglifier', '>= 1.0.3'
end
