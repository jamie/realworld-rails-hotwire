# frozen_string_literal: true
source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "3.0.2"

# Bundle edge Rails instead: gem "rails", github: "rails/rails", branch: "main"
gem "rails", "~> 7.0.0.alpha2"

## Rails default gems
# gem "bcrypt", "~> 3.1.7" # Use Active Model has_secure_password [https://guides.rubyonrails.org/active_model_basics.html#securepassword]
gem "bootsnap", ">= 1.4.4", require: false
gem "image_processing", "~> 1.2" # Use Active Storage variants [https://guides.rubyonrails.org/active_storage_overview.html#transforming-images]
gem "importmap-rails", ">= 0.3.4" # Use JavaScript with ESM import maps [https://github.com/rails/importmap-rails]
gem "jbuilder", "~> 2.7" # Build JSON APIs with ease [https://github.com/rails/jbuilder]
gem "pg"
gem "puma", "~> 5.0"
gem "redis", "~> 4.0" # Use Redis adapter to run Action Cable in production
# gem "sassc-rails", "~> 2.1" # Use Sass to process CSS
gem "stimulus-rails", ">= 0.4.0" # Hotwire's modest JavaScript framework [https://stimulus.hotwired.dev]
gem "turbo-rails", ">= 0.7.11" # Hotwire's SPA-like page accelerator [https://turbo.hotwired.dev]
gem "tzinfo-data", platforms: [:mingw, :mswin, :x64_mingw, :jruby]

# 3rd party gems
gem "friendly_id"
gem "gutentag"
gem "scout_apm"

group :development, :test do
  # Start debugger with binding.b [https://github.com/ruby/debug]
  gem "debug", ">= 1.0.0", platforms: [:mri, :mingw, :x64_mingw]
  gem "sqlite3", "~> 1.4"
end

group :development do
  # Use console on exceptions pages [https://github.com/rails/web-console]
  gem "web-console", ">= 4.1.0"

  # Add speed badges [https://github.com/MiniProfiler/rack-mini-profiler]
  gem "rack-mini-profiler", ">= 2.3.3"

  # Speed up commands on slow machines / big apps [https://github.com/rails/spring]
  # gem "spring"

  gem "rubocop", "~> 1.21"
  gem "rubocop-rails", "~> 2.12"
  gem "rubocop-shopify"
  gem "solargraph"
end

group :test do
  # Use system testing [https://guides.rubyonrails.org/testing.html#system-testing]
  gem "capybara", ">= 3.26"
  gem "selenium-webdriver"
  gem "webdrivers"
end
