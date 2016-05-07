source "https://rubygems.org"

ruby "2.3.1"
gem "rails", "4.2.6"

gem "activeadmin", "1.0.0.pre2"
gem "browser", "2.0.3"
gem "devise", "4.1.0"
gem "devise-async", git: "https://github.com/allaboardapps/devise-async.git"
gem "devise-i18n", "1.0.1"
gem "figaro", "1.1.1"
gem "haml-rails", "0.9.0"
gem "httparty", "0.13.7"
gem "i18n-tasks", "0.9.5"
gem "jquery-rails", "4.1.1"
gem "kaminari", "0.16.3"
gem "lograge", "0.3.6"
gem "paper_trail", "5.0.1"
gem "pg", "0.18.4"
gem "pghero", "1.2.4"
gem "pg_query", "0.9.2"
gem "sass-rails", "5.0.4"
gem "settingslogic", "2.0.9"
gem "simple_form", "3.2.1"
gem "sinatra", "1.4.7", require: nil
gem "uglifier", "3.0.0"

group :production, :staging do
  gem "puma", "3.4.0"
  gem "rails_12factor", "0.0.3"
end

group :development do
  gem "better_errors", "2.1.1"
  gem "binding_of_caller", "0.7.2"
  gem "brakeman", "3.3.0", require: false
  gem "bullet", "5.0.0"
  gem "bundler-audit", "0.5.0", require: false
  gem "hakiri", "0.7.2", require: false
  gem "lol_dba", "2.0.3"
  gem "rails_db", "1.1.1"
  gem "rb-fsevent", "0.9.7", require: false
  gem "spring", "1.7.1"
  gem "web-console", "3.1.1"
end

group :development, :test do
  gem "pry-rails", "0.3.4"
  gem "pry-remote", "0.1.8"
end
