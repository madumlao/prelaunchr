source 'https://rubygems.org'

gem 'rails', '3.2.11'
gem 'railties', '~> 3.2.0'
gem 'bourbon', '~> 3.0.1'
gem 'jquery-rails', '~> 2.2.0'

gem 'pg', '~> 0.14.1'

gem 'activeadmin', '~> 0.5.1'


# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'

  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  # gem 'therubyracer', :platforms => :ruby

  gem 'uglifier', '>= 1.0.3'
end

group :development do
  gem 'pry', '~> 0.9.12'
end

gem 'delayed_job_active_record', '~> 0.4.4'

local_gemfile = File.join(File.dirname(__FILE__), "Gemfile.local")
if File.exists?(local_gemfile)
  puts "Loading Gemfile.local ..." if $DEBUG # `ruby -d` or `bundle -v`
  instance_eval File.read(local_gemfile)
end

