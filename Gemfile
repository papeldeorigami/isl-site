source 'https://rubygems.org'

# set our ruby compiler version
ruby '2.0.0'

# set our rails version (upgrades can always be a pain)
gem 'rails', '3.2.13'

# this specific jquery version is requested by refinerycms
gem 'jquery-rails'#, '~> 2.0.0'

# bootstrap for styling our pages
gem 'bootstrap-sass'

# this site is completely based on refinerycms.
# notice: this version is requested by latest refinerycms-news module available
gem 'refinerycms', '~> 2.1.0'

# we could easily implement news on our own, but why bother when we already have it?
gem 'refinerycms-news', '~> 2.1.0', :git => 'https://github.com/refinery/refinerycms-news'

# use the thin server by default (because webrick must be avoided, this is what I've learned)
gem 'thin'

# for configuring startup processes
gem "foreman"

group :development do
	# because I like BDD
	gem 'rspec-rails'

	# I use guard in my workflow for running specs and other stuff (see next gems)
	gem 'guard'
	gem 'guard-livereload'
	gem 'guard-bundler'
	gem 'guard-rspec'
	gem 'guard-zeus'
	gem 'guard-rails-assets'
	# ctags because I use vim
	gem 'guard-ctags-bundler'

	# livereload allows my browser to load changes automatically
	gem 'rack-livereload'

	# libnotify to get beautiful notifications on my linux tray
	gem 'rb-inotify'
	gem 'rb-fsevent'
	gem 'libnotify'
end

group :development, :test do
	gem 'debugger' unless ENV["RM_INFO"]
	gem 'sqlite3'
end

group :production do
	# this specific postgresql version is supported by Heroku
	gem 'pg', '0.12.2'
end

group :assets do
	gem 'sass-rails',   '~> 3.2.3'
	gem 'coffee-rails', '~> 3.2.1'
	gem 'therubyracer', :platforms => :ruby
	gem 'uglifier', '>= 1.0.3'
end
