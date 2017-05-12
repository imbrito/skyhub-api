source 'https://rubygems.org'
# ruby '2.4.1'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.1.0'

# Use Puma as the app server
gem 'puma', '~> 3.7'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
# gem 'jbuilder', '~> 2.5'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 3.0'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Client library and command-line tool to deploy and manage apps on Heroku.
gem 'heroku', '~> 3.99.1'

# Run Rails the 12factor way
gem 'rails_12factor', '~> 0.0.3'

# A full featured BSON specification implementation, in Ruby
gem 'bson', '~> 4.2.1'

# Mongoid is an ODM (Object Document Mapper) Framework for MongoDB, written in Ruby
gem 'mongoid', '~> 6.1.0'

# A Ruby driver for MongoDB.
gem 'mongo', '~> 2.4.1'

# Pg is the Ruby interface to the {PostgreSQL RDBMS}
# dependency for heroku
gem 'pg'

# Client library for easily using the Cloudinary service
gem 'cloudinary', '~> 1.8.0'

# Makes http fun! Also, makes consuming restful web services dead easy.
gem 'httparty', '~> 0.15.0'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

# Use Rack CORS for handling Cross-Origin Resource Sharing (CORS), making cross-origin AJAX possible
# gem 'rack-cors'

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]

  # Strategies for cleaning databases. Can be used to ensure a clean state for testing.
  gem 'database_cleaner', '~> 1.6.1'

  # RSpec for Rails
  gem 'rspec-rails', '~> 3.6.0'

  # RSpec matches for Mongoid models, including association and validation matchers
  gem 'mongoid-rspec'

  # factory_girl_rails provides integration between factory_girl and rails 3 (currently just automatic factory definition loading)
  gem 'factory_girl_rails', '~> 4.8.0'

  # Minimalist validation matcher
  gem 'valid_attribute', '~> 2.0.0'

  # Use Pry as your rails console
  gem 'pry-rails', '~> 0.3.4'
end

group :development do
  gem 'listen', '>= 3.0.5', '< 3.2'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
