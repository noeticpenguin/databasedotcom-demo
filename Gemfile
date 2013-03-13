source 'https://rubygems.org'

gem 'rails', '3.2.12'
gem 'sqlite3'

group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'
  gem 'uglifier', '>= 1.0.3'
end

# Salesforce Related Gems:
gem 'databasedotcom' #basic rest access to salesforce.com.
# alternative gem interface: https://github.com/ejholmes/restforce 
# Salesforce / Heroku / et. all seem to have largely abandoned
# databasedotcom as a project, with several features lacking or
# functionallity falling behind EJHolmes restforce gem. It should
# be noted that Eric (EJHolmes) was the original author of 
# databasedotcom (i'm like 99.5% sure of that.)

gem 'databasedotcom-rails', :git => 'git@github.com:noeticpenguin/databasedotcom-rails.git' 
# this gem gives you some auto-wizbang
# voodoo to automatically back your controllers with models in 
# salesforce. Using this gem allows you to autowire, for instance
# the Opportunity controller in your rails app, to salesforces' 
# Opportunity object. You may be asking why the git-version?
# my fork (this git version) allows you to use an externally
# gathered oauth token rather than re-logging in on every call. neat.

gem 'omniauth-salesforce' # 'cause if you're going to go to the work
# of setting up an integration with salesforce for data, you might 
# as well be able to authenticate against salesforce as well right?

#Nice to have gems:
gem 'activeadmin' # Nice, Quick, stupid simple dsl and framework 
# for "admin" sections in your rails app. Use this, for instance,
# to dynamically adjust which properties or fields your 
# databasedotcom-rails model's pull / push to optimize speed!

#Sys Admin type Gems:
gem 'foreman'
gem 'newrelic_rpm' #Don't be stupid. use newrelic.
gem "hub", ">= 1.10.2", :require => nil, :group => [:development]
gem "figaro", ">= 0.5.3" # Handles creating a github repo for me
gem 'thin', '>= 1.5.0' # http server -- my favorite part of thin
# is that one of their releases was code named "bat shit crazy"

#Authentication, Authorization and Identity Management:
gem "omniauth", ">= 1.1.3"
gem "omniauth-github"
gem "cancan", ">= 1.6.8"
gem "rolify", ">= 3.2.0"
gem 'devise'

#Testing, Where in a highly opinionated list of Gems is included:
gem 'rspec-rails', '>= 2.12.2', :group => [:development, :test]
gem 'capybara', '>= 2.0.2', :group => :test
gem "factory_girl_rails", ">= 4.2.0", :group => [:development, :test]
gem "email_spec", ">= 1.4.0", :group => :test

#Db Maintenance, Access and Utilities:
gem "database_cleaner", ">= 0.9.1", :group => :test
gem 'pg', :group => :production # You are going to Heroku this right?

#General Development gems not part of rails.
gem 'jquery-rails' #Jquery or die.
gem "bootstrap-sass", ">= 2.3.0.0" #Bootstrap, It really whips the Zurbs ass.
gem "sendgrid", ">= 1.0.1" #Because email just won't die.
gem "simple_form", ">= 2.0.4" #just ... yeah.

#Who doesn't love the asset pipeline?
#Who hasn't thought "STFU Asset Pipeline" in development?
gem "quiet_assets", ">= 1.0.1", :group => :development

#Debugging -- because life is too short:
gem "better_errors", ">= 0.6.0", :group => :development
gem "binding_of_caller", ">= 0.7.1", :group => :development, :platforms => [:mri_19, :rbx]
gem 'pry', :group => [:development, :test], :require => 'pry' # Use pry or else. #srsly. 
# Pry is an INSANELY powerful debugging shell. 
#
# GO HERE and Find out why: http://railscasts.com/episodes/280-pry-with-rails
#
# Now you're set to drop:
# binding.pry
# wherever you need to debug code live...