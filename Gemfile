# frozen_string_literal: true

source "https://rubygems.org"

gem "hanami", "~> 2.1.0.beta"
gem "hanami-router", "~> 2.1.0.beta"
gem "hanami-controller", "~> 2.1.0.beta"
gem "hanami-validations", "~> 2.1.0.beta"
gem "hanami-view", "~> 2.1.0.beta"
gem "hanami-webconsole", "~> 2.1.0.beta"

gem "dry-types", "~> 1.0", ">= 1.6.1"
gem "puma"
gem "rake"

gem "alba"
gem "oj"

group :development, :test do
  gem "dotenv"
  gem "pry", '~> 0.13.1'
  gem "pry-byebug"
end

group :cli, :development do
  gem "hanami-reloader"
end

group :cli, :development, :test do
  gem "hanami-rspec"
end

group :development do
  gem "guard-puma", "~> 0.8"
end

group :test do
  gem "rack-test"
end
