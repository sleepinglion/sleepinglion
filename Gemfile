source 'https://rubygems.org'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 6.0.3.2'
# Use Puma as the app server
gem 'puma', '~> 3.0'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
# See https://github.com/rails/execjs#readme for more supported runtimes
#gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
#gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5'
# Use Redis adapter to run Action Cable in production
gem 'redis', '~> 4.0'
gem 'redis-store','~> 1.4.0'
# Use ActiveModel has_secure_password
gem 'bcrypt', '~> 3.1.7', platforms: :ruby

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development
gem 'activemodel-serializers-xml'
gem 'active_model_serializers'

#gem 'jquery-turbolinks'
gem 'bootstrap', '~> 4.3.1'
gem 'devise'
gem 'cancancan'
gem 'kaminari'
gem 'carrierwave'
gem 'carrierwave-ftp', :require => 'carrierwave/storage/ftp' # FTP only
gem 'mini_magick'
#gem 'rmagick'
gem 'impressionist'
gem 'acts-as-taggable-on'
gem "ckeditor"
gem 'fancybox2-rails'
gem 'jquery-easing-rails'
gem 'sitemap_generator'
gem 'meta-tags'
gem 'gretel'
gem 'i18n-js'
gem 'non-stupid-digest-assets'
gem 'globalize'

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platform: :mri
  gem 'sqlite3',  '~> 1.4.2'
  #test
  gem 'selenium-webdriver', '~> 3.3'
  gem 'rails_best_practices'
  gem 'rubocop'
  gem 'rubycritic'
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '~> 3.0.5'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'

  # Capistrano
  gem 'capistrano', '~> 3.0'
  gem 'capistrano-bundler'
  gem 'capistrano-rails'
  gem 'capistrano-passenger', require: false, github: 'capistrano/passenger'
end

group :production do
  gem 'asset_sync','~> 2.8'
  gem 'fog-azure-rm'
  gem 'mysql2'
  gem 'dotenv-rails'  
  gem 'recaptcha', :require => 'recaptcha/rails'
  gem 'rails-letsencrypt'  

  # Redis Cache
  gem 'redis-rails'
  gem 'redis-rack-cache'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
#gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
