source 'https://rubygems.org'


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 4.2.6'
gem 'pg'
gem 'puma', '~> 3.0'

gem 'sass-rails', '~> 5.0'

gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.2'
gem 'jquery-rails'
gem 'hamlit'
# gem 'turbolinks', '~> 5'

gem 'jbuilder', '~> 2.5'

gem 'devise'

gem 'activeadmin', git: 'https://github.com/epitron/activeadmin.git'
gem 'active_admin-sortable_tree'
gem 'active_admin_datetimepicker'
gem 'activeadmin_addons', git: 'https://github.com/havenwood/activeadmin_addons.git'
gem 'activeadmin-ajax_filter'

gem 'friendly_id', '~> 5.1.0'
gem 'font-awesome-rails'

group :production do
  gem 'puma-heroku'
  gem 'rails_12factor' # Heroku-specific
end

group :development do
  gem 'best_errors'
  gem 'quiet_assets'
  gem 'rails-erd'
  gem 'letter_opener'
  gem 'faker'
  gem 'bullet'
  gem 'hamlit-rails'
end

group :development, :test do
  # gem 'byebug'
  gem 'pry-rails'
  gem 'pry-theme'
  gem 'pry-rescue'
  gem 'pry-stack_explorer'
  gem 'spring'
end

group :test do
  gem 'minitest-spec-rails'
  # gem 'capybara-rails'
  # gem 'poltergeist', require: 'capybara/poltergeist'
end
# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
