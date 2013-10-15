source 'https://rubygems.org'

# set our ruby compiler version
ruby '1.9.3'

# set our rails version (upgrades can always be a pain)
gem 'rails', '~> 4.0'
# add rails i18n due to translation missing error: pt-BR.time.formats.default
gem 'rails-i18n'

#gem 'jquery-rails'

# bootstrap for styling our pages
gem 'bootstrap-sass'

# a lightweight CMS
gem 'comfortable_mexican_sofa', '~> 1.9'

# a nice wysiwyg html editor
gem 'tinymce-rails'

# sunspot to implement site-wide search
gem 'sunspot_rails'

# to start/stop Solr
gem 'sunspot_solr'

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
  gem 'sass-rails',   '~> 4.0'
  gem 'coffee-rails', '~> 4.0'
	gem 'therubyracer', :platforms => :ruby
	gem 'uglifier', '>= 1.0.3'
end
