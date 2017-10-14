source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end


gem 'rails', '~> 5.1.4'
gem 'mysql2', '>= 0.3.18', '< 0.5'
gem 'puma', '~> 3.7'
gem 'jbuilder', '~> 2.7.0'
gem 'rack-cors', '~> 1.0.1'
gem 'seedbank', '~> 0.4.0'

group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'rspec-rails', '~> 3.6.1'
  gem 'json_spec', '~> 1.1.5'
  gem 'faker', '~> 1.8.4'
end

group :development do
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring', '~> 2.0.2'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'mina', '~> 1.0.7'
  gem 'mina-systemd', '~> 0.1.1'
end

group :test do
  gem 'factory_girl_rails', '~> 4.8.0'
  gem 'shoulda-matchers', '~> 3.1.2'
  gem 'database_cleaner', '~> 1.6.0'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
