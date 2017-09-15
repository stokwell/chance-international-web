source 'https://rubygems.org'

ruby '2.2.3'

gem 'rails', '~> 5.0.0', '>= 5.0.0.1'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.2'
gem 'therubyracer', platforms: :ruby

gem 'jquery-rails'

gem 'turbolinks', '~> 5'
gem 'jquery-turbolinks'

gem 'twitter'
gem "slim-rails"
gem 'carrierwave', '~> 1.0'
gem 'remotipart'
gem 'rmagick'
gem 'mini_magick'
gem 'devise'
gem 'aws-sdk', '~> 2'
gem "fog-aws"
gem 'fog'
gem 'cocoon'
gem 'tinymce-rails'
gem 'jbuilder', '~> 2.5'
gem 'dotenv-rails', require: 'dotenv/rails'


# gem 'redis', '~> 3.0'
# gem 'bcrypt', '~> 3.1.7'

group :development do
  gem 'capistrano',           require: false
  gem 'capistrano-rbenv',     require: false
  gem 'capistrano-rails',     require: false
  gem 'capistrano-bundler',   require: false
  gem 'capistrano-passenger', require: false
end


group :development, :test do
  gem 'pg'
  gem 'byebug', platform: :mri
  gem 'puma'
end

group :production do
  gem 'rails_12factor'
  gem 'pg'
end

group :development do
  gem 'web-console'
  gem 'listen', '~> 3.0.5'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
