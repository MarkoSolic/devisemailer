source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end



gem 'rails', '~> 5.0.7', '>= 5.0.7.2'

gem 'puma', '~> 3.0'

gem 'sass-rails', '~> 5.0'

gem 'uglifier', '>= 1.3.0'

gem 'coffee-rails', '~> 4.2'


gem 'jquery-rails'

gem 'turbolinks', '~> 5'

gem 'jbuilder', '~> 2.5'

gem 'bootstrap-sass', '~> 3.3', '>= 3.3.6'

gem 'font-awesome-sass', '~> 4.5'

gem 'bootstrap-sass-extras', '~> 0.0.2'

gem 'devise', '~> 4.8', '>= 4.8.1'

gem 'simple_form', '~> 3.2', '>= 3.2.1'


group :development, :test do

  gem 'byebug', platform: :mri
end

group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'sqlite3', '1.3.13'
  gem 'listen', '~> 3.0.5'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end


gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]


group :production do
  #gem 'rails_12factor', '~> 0.0.3'
  gem 'pg', '~> 1.3', '>= 1.3.5'
end