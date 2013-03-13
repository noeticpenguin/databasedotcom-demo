Databasedotcom Demo
========================

________________________

Demo Credentials:

1. Why am I giving these out? -- Well, the proof is in the pudding. You need to be able to see that it really does interact with salesforce.
2. it's a demo org. ... what're you gonna do with it?
3. I hate reading an exmaple where it all code until you get to <crutial bit here> 
4. I'm very sleepy.

User Name: db@21demo.com
pass word: rubyponies4tw!
Security Token: z0ncoZbAiYhE1ffVtwa5lpGW

________________________

This application was generated with the rails_apps_composer gem:
https://github.com/RailsApps/rails_apps_composer
provided by the RailsApps Project:
http://railsapps.github.com/

________________________

Recipes:
["controllers", "core", "email", "extras", "frontend", "gems", "git", "init", "models", "prelaunch", "railsapps", "readme", "routes", "saas", "setup", "testing", "views"]

Preferences:
{:git=>true, :railsapps=>"none", :dev_webserver=>"thin", :prod_webserver=>"thin", :database=>"sqlite", :templates=>"erb", :unit_test=>"rspec", :integration=>"rspec-capybara", :fixtures=>"factory_girl", :frontend=>"bootstrap", :bootstrap=>"sass", :email=>"sendgrid", :authentication=>"omniauth", :omniauth_provider=>"github", :authorization=>"cancan", :form_builder=>"simple_form", :starter_app=>"admin_app", :rvmrc=>false, :quiet_assets=>true, :local_env_file=>true, :better_errors=>true, :ban_spiders=>true, :github=>true}

________________________

License:
This is licensed under the Do something good for humanity license.
Do whatever you want with the code, but also do something good for humanity (not neccesarily with this code). Buy a cop a coffe. Give a homeless guy a 5ver.
Adopt a pet.  Whatever. Do something good. Your concious is the only thing that'll chase you down. 

________________________

Creation Log:
± % rails new databasedotcom                                                                                                                            !10109
Using -m https://raw.github.com/RailsApps/rails-composer/master/composer.rb from /Users/kpoorman/.railsrc
       exist
   identical  README.rdoc
   identical  Rakefile
   identical  config.ru
    conflict  .gitignore
Overwrite /Users/kpoorman/src/databasedotcom/.gitignore? (enter "h" for help) [Ynaqdh] a
       force  .gitignore
    conflict  Gemfile
       force  Gemfile
       exist  app
   identical  app/assets/images/rails.png
   identical  app/assets/javascripts/application.js
   identical  app/assets/stylesheets/application.css
   identical  app/controllers/application_controller.rb
   identical  app/helpers/application_helper.rb
   identical  app/views/layouts/application.html.erb
   identical  app/mailers/.gitkeep
   identical  app/models/.gitkeep
       exist  config
   identical  config/routes.rb
    conflict  config/application.rb
       force  config/application.rb
   identical  config/environment.rb
       exist  config/environments
   identical  config/environments/development.rb
   identical  config/environments/production.rb
   identical  config/environments/test.rb
       exist  config/initializers
   identical  config/initializers/backtrace_silencers.rb
   identical  config/initializers/inflections.rb
   identical  config/initializers/mime_types.rb
    conflict  config/initializers/secret_token.rb
       force  config/initializers/secret_token.rb
   identical  config/initializers/session_store.rb
   identical  config/initializers/wrap_parameters.rb
       exist  config/locales
   identical  config/locales/en.yml
   identical  config/boot.rb
   identical  config/database.yml
       exist  db
   identical  db/seeds.rb
       exist  doc
   identical  doc/README_FOR_APP
       exist  lib
       exist  lib/tasks
   identical  lib/tasks/.gitkeep
       exist  lib/assets
   identical  lib/assets/.gitkeep
       exist  log
   identical  log/.gitkeep
       exist  public
   identical  public/404.html
   identical  public/422.html
   identical  public/500.html
   identical  public/favicon.ico
   identical  public/index.html
   identical  public/robots.txt
       exist  script
   identical  script/rails
       exist  test/fixtures
   identical  test/fixtures/.gitkeep
       exist  test/functional
   identical  test/functional/.gitkeep
       exist  test/integration
   identical  test/integration/.gitkeep
       exist  test/unit
   identical  test/unit/.gitkeep
   identical  test/performance/browsing_test.rb
   identical  test/test_helper.rb
       exist  tmp/cache
       exist  tmp/cache/assets
       exist  vendor/assets/javascripts
   identical  vendor/assets/javascripts/.gitkeep
       exist  vendor/assets/stylesheets
   identical  vendor/assets/stylesheets/.gitkeep
       exist  vendor/plugins
   identical  vendor/plugins/.gitkeep
       apply  https://raw.github.com/RailsApps/rails-composer/master/composer.rb
 initializer    generators.rb
    composer  WOOT! The recipes you've selected are known to work together.
    composer  Using rails_apps_composer recipes to generate an application.
      insert    config/application.rb
      recipe  Running core recipe...
        core  selected all core recipes
      recipe  Running git recipe...
         git  initialize git
      remove    .gitignore
      create    .gitignore
         run    git init from "."
Reinitialized existing Git repository in /Users/kpoorman/src/databasedotcom/.git/
         run    git add -A from "."
         run    git commit -qm "rails_apps_composer: initial commit" from "."
      recipe  Running railsapps recipe...
    question  Install an example application?
          1)  I want to build my own application
          2)  membership/subscription/saas
          3)  rails-prelaunch-signup
          4)  rails3-bootstrap-devise-cancan
          5)  rails3-devise-rspec-cucumber
          6)  rails3-mongoid-devise
          7)  rails3-mongoid-omniauth
          8)  rails3-subdomains
   railsapps  Enter your selection: q
   railsapps  Enter your selection: 1
      recipe  Running setup recipe...
       setup  Your operating system is darwin12.2.1.
       setup  You are using Ruby version 1.9.3.
       setup  You are using Rails version 3.2.12.
    question  Web server for development?
          1)  WEBrick (default)
          2)  Thin
          3)  Unicorn
          4)  Puma
       setup  Enter your selection: 2
    question  Web server for production?
          1)  Same as development
          2)  Thin
          3)  Unicorn
          4)  Puma
       setup  Enter your selection: 2
    question  Database used in development?
          1)  SQLite
          2)  PostgreSQL
          3)  MySQL
          4)  MongoDB
       setup  Enter your selection: 1
    question  Template engine?
          1)  ERB
          2)  Haml
          3)  Slim (experimental)
       setup  Enter your selection: 1
    question  Unit testing?
          1)  Test::Unit
          2)  RSpec
          3)  MiniTest
       setup  Enter your selection: 2
    question  Integration testing?
          1)  None
          2)  RSpec with Capybara
          3)  Cucumber with Capybara
          4)  Turnip with Capybara
          5)  MiniTest with Capybara
       setup  Enter your selection: 2
    question  Fixture replacement?
          1)  None
          2)  Factory Girl
          3)  Machinist
          4)  Fabrication
       setup  Enter your selection: 2
    question  Front-end framework?
          1)  None
          2)  Twitter Bootstrap
          3)  Zurb Foundation
          4)  Skeleton
          5)  Just normalize CSS for consistent styling
       setup  Enter your selection: 2
    question  Twitter Bootstrap version?
          1)  Twitter Bootstrap (Less)
          2)  Twitter Bootstrap (Sass)
       setup  Enter your selection: 2
    question  Add support for sending email?
          1)  None
          2)  Gmail
          3)  SMTP
          4)  SendGrid
          5)  Mandrill
       setup  Enter your selection: 4
    question  Authentication?
          1)  None
          2)  Devise
          3)  OmniAuth
       setup  Enter your selection: 3
    question  OmniAuth provider?
          1)  Facebook
          2)  Twitter
          3)  GitHub
          4)  LinkedIn
          5)  Google-Oauth-2
          6)  Tumblr
       setup  Enter your selection: 3
    question  Authorization?
          1)  None
          2)  CanCan with Rolify
       setup  Enter your selection: 2
    question  Use a form builder gem?
          1)  None
          2)  SimpleForm
       setup  Enter your selection: 2
    question  Install a starter app?
          1)  None
          2)  Home Page
          3)  Home Page, User Accounts
          4)  Home Page, User Accounts, Admin Dashboard
       setup  Enter your selection: 4
    conflict    README
       force    README
      append    README
      recipe  Running readme recipe...
      recipe  Running gems recipe...
     gemfile    thin (>= 1.5.0)
     gemfile    rspec-rails (>= 2.12.2)
     gemfile    capybara (>= 2.0.2)
     gemfile    database_cleaner (>= 0.9.1)
     gemfile    email_spec (>= 1.4.0)
     gemfile    factory_girl_rails (>= 4.2.0)
     gemfile    bootstrap-sass (>= 2.3.0.0)
     gemfile    sendgrid (>= 1.0.1)
     gemfile    omniauth (>= 1.1.3)
     gemfile    omniauth-github
     gemfile    cancan (>= 1.6.8)
     gemfile    rolify (>= 3.2.0)
     gemfile    simple_form (>= 2.0.4)
         run    git add -A from "."
         run    git commit -qm "rails_apps_composer: Gemfile" from "."
      recipe  Running testing recipe...
      recipe  Running email recipe...
      recipe  Running models recipe...
      recipe  Running controllers recipe...
      recipe  Running views recipe...
      recipe  Running routes recipe...
      recipe  Running frontend recipe...
      recipe  Running init recipe...
      recipe  Running prelaunch recipe...
      recipe  Running prelaunch recipe...
      recipe  Running extras recipe...
      extras  Set a robots.txt file to ban spiders? (y/n) y
      extras  Create a GitHub repository? (y/n) y
      extras  Use application.yml file for environment variables? (y/n) y
      extras  Reduce assets logger noise during development? (y/n) y
      extras  Improve error reporting with 'better_errors' during development? (y/n) y
      extras  Create a project-specific rvm gemset and .rvmrc? (y/n) n
      extras  recipe setting quiet_assets for reduced asset pipeline logging
     gemfile    quiet_assets (>= 1.0.1)
      extras  recipe creating application.yml file for environment variables
     gemfile    figaro (>= 0.5.3)
      extras  recipe adding better_errors gem
     gemfile    better_errors (>= 0.6.0)
     gemfile    binding_of_caller (>= 0.7.1)
      extras  recipe banning spiders by modifying 'public/robots.txt'
     gemfile    hub (>= 1.10.2)
    composer  Installing gems. This will take a while.
         run    bundle install --without production from "."
Resolving dependencies...
Using rake (10.0.3)
Using i18n (0.6.4)
Using multi_json (1.6.1)
Using activesupport (3.2.12)
Using builder (3.0.4)
Using activemodel (3.2.12)
Using erubis (2.7.0)
Using journey (1.0.4)
Using rack (1.4.5)
Using rack-cache (1.2)
Using rack-test (0.6.2)
Using hike (1.2.1)
Using tilt (1.3.5)
Using sprockets (2.2.2)
Using actionpack (3.2.12)
Using mime-types (1.21)
Using polyglot (0.3.3)
Using treetop (1.4.12)
Using mail (2.4.4)
Using actionmailer (3.2.12)
Using arel (3.0.2)
Using tzinfo (0.3.37)
Using activerecord (3.2.12)
Using activeresource (3.2.12)
Using addressable (2.3.3)
Using coderay (1.0.9)
Using better_errors (0.7.2)
Using debug_inspector (0.0.2)
Using binding_of_caller (0.7.1)
Using sass (3.2.7)
Using bootstrap-sass (2.3.0.1)
Using bundler (1.3.2)
Using cancan (1.6.9)
Using nokogiri (1.5.6)
Using ffi (1.4.0)
Using childprocess (0.3.9)
Using rubyzip (0.9.9)
Using websocket (1.0.7)
Using selenium-webdriver (2.31.0)
Using xpath (1.0.0)
Using capybara (2.0.2)
Using coffee-script-source (1.6.1)
Using execjs (1.4.0)
Using coffee-script (2.2.0)
Using rack-ssl (1.3.3)
Using json (1.7.7)
Using rdoc (3.12.2)
Using thor (0.17.0)
Using railties (3.2.12)
Using coffee-rails (3.2.2)
Using daemons (1.1.9)
Using database_cleaner (0.9.1)
Using diff-lcs (1.2.1)
Using launchy (2.2.0)
Using email_spec (1.4.0)
Using eventmachine (1.0.3)
Using factory_girl (4.2.0)
Using factory_girl_rails (4.2.1)
Using multipart-post (1.2.0)
Using faraday (0.8.6)
Using rails (3.2.12)
Using figaro (0.6.3)
Using hashie (1.2.0)
Using httpauth (0.2.0)
Using hub (1.10.4)
Using jquery-rails (2.2.1)
Using jwt (0.1.7)
Using oauth2 (0.8.1)
Using omniauth (1.1.3)
Using omniauth-oauth2 (1.1.1)
Using omniauth-github (1.1.0)
Using quiet_assets (1.0.2)
Using rolify (3.2.0)
Using rspec-core (2.13.1)
Using rspec-expectations (2.13.0)
Using rspec-mocks (2.13.0)
Using rspec-rails (2.13.0)
Using sass-rails (3.2.6)
Using sendgrid (1.1.0)
Using simple_form (2.1.0)
Using sqlite3 (1.3.7)
Using thin (1.5.0)
Using uglifier (1.3.0)
Your bundle is complete! Use `bundle show [gemname]` to see where a bundled gem is installed.
    composer  Running 'after bundler' callbacks.
WARN: Unresolved specs during Gem::Specification.reset:
      rake (>= 0.8.7)
      rack-ssl (~> 1.3.2)
      rdoc (~> 3.4)
      multi_json (~> 1.0)
      builder (~> 3.0.0)
      rack-test (~> 0.6.1)
WARN: Clearing out unresolved specs.
Please report a bug if this causes problems.
         run    bundle exec rake db:create:all from "."
         run    git add -A from "."
         run    git commit -qm "rails_apps_composer: create database" from "."
        gems  recipe installing simple_form for use with Twitter Bootstrap
    generate    simple_form:install --bootstrap
      create  config/initializers/simple_form.rb
      create  config/initializers/simple_form_bootstrap.rb
       exist  config/locales
      create  config/locales/simple_form.en.yml
      create  lib/templates/erb/scaffold/_form.html.erb
===============================================================================

  Be sure to have a copy of the Bootstrap stylesheet available on your
  application, you can get it on http://twitter.github.com/bootstrap.

  Inside your views, use the 'simple_form_for' with one of the Bootstrap form
  classes, '.form-horizontal', '.form-inline', '.form-search' or
  '.form-vertical', as the following:

    = simple_form_for(@user, :html => {:class => 'form-horizontal' }) do |form|

===============================================================================
    generate    figaro:install
      create  config/application.yml
      append  .gitignore
        gsub    config/application.yml
        gsub    config/application.yml
     prepend    config/application.yml
         run    git add -A from "."
         run    git commit -qm "rails_apps_composer: generators" from "."
     testing  recipe running after 'bundle install'
     testing  recipe installing RSpec
    generate    rspec:install
      create  .rspec
      create  spec
      create  spec/spec_helper.rb
      remove    spec/spec_helper.rb
      create    spec/spec_helper.rb
    generate    email_spec:steps
      create  features/step_definitions/email_steps.rb
      insert    spec/spec_helper.rb
      insert    spec/spec_helper.rb
         run    rm -rf test/ from "."
      insert    config/application.rb
         run    git add -A from "."
         run    git commit -qm "rails_apps_composer: testing framework" from "."
       email  recipe running after 'bundle install'
        gsub    config/environments/development.rb
        gsub    config/environments/development.rb
      insert    config/environments/test.rb
        gsub    config/environments/production.rb
      insert    config/environments/development.rb
      insert    config/environments/production.rb
         run    git add -A from "."
         run    git commit -qm "rails_apps_composer: set email accounts" from "."
      models  recipe running after 'bundle install'
      remove    config/initializers/omniauth.rb
      create    config/initializers/omniauth.rb
        gsub    config/initializers/omniauth.rb
    generate    model User name:string email:string provider:string uid:string
      invoke  active_record
      create    db/migrate/20130313125725_create_users.rb
      create    app/models/user.rb
      invoke    rspec
      create      spec/models/user_spec.rb
      invoke      factory_girl
      create        spec/factories/users.rb
         run    bundle exec rake db:migrate from "."
==  CreateUsers: migrating ====================================================
-- create_table(:users)
   -> 0.0015s
==  CreateUsers: migrated (0.0016s) ===========================================

      remove    app/models/user.rb
      create    app/models/user.rb
        gsub    app/models/user.rb
        gsub    app/models/user.rb
        gsub    app/models/user.rb
        gsub    app/models/user.rb
        gsub    app/models/user.rb
    generate    cancan:ability
      create  app/models/ability.rb
      remove    app/models/ability.rb
      create    app/models/ability.rb
      insert    app/models/user.rb
    generate    rolify:role Role User
      create  app/models/role.rb
      insert  app/models/user.rb
      create  config/initializers/rolify.rb
      create  db/migrate/20130313125734_rolify_create_roles.rb
===============================================================================

An initializer file has been created here: config/initializers/rolify.rb, you
can change rolify settings to match your needs.
Defaults values are commented out.

A Role class has been been created in app/models (with the name you gave as
argument otherwise the default is role.rb), you can add your own business logic
inside.

Inside your User class (or the name you gave as argument otherwise the default
is user.rb), rolify method has been inserted to provide rolify methods.

Now, if you just have to run the migration using rake command:

   rake db:migrate

and you will be able to add the resourcify method inside all models you want
scoped by a role.

===============================================================================
         run    git add -A from "."
         run    git commit -qm "rails_apps_composer: models" from "."
  controllers  recipe running after 'bundle install'
      remove    app/controllers/application_controller.rb
      create    app/controllers/application_controller.rb
      insert    app/controllers/application_controller.rb
    generate    controller
      create  app/controllers/home_controller.rb
       route  get "home/index"
      invoke  erb
      create    app/views/home
      create    app/views/home/index.html.erb
      invoke  rspec
      create    spec/controllers/home_controller_spec.rb
      invoke  helper
      create    app/helpers/home_helper.rb
      invoke    rspec
      invoke  assets
      invoke    coffee
      create      app/assets/javascripts/home.js.coffee
      invoke    scss
      create      app/assets/stylesheets/home.css.scss
        gsub    app/controllers/home_controller.rb
      remove    app/controllers/users_controller.rb
      create    app/controllers/users_controller.rb
      remove    app/controllers/sessions_controller.rb
      create    app/controllers/sessions_controller.rb
        gsub    app/controllers/sessions_controller.rb
      insert    app/controllers/sessions_controller.rb
         run    git add -A from "."
         run    git commit -qm "rails_apps_composer: controllers" from "."
       views  recipe running after 'bundle install'
      remove    app/views/home/index.html.erb
      create    app/views/home/index.html.erb
      remove    app/views/users/index.html.erb
      create    app/views/users/index.html.erb
      remove    app/views/users/_user.html.erb
      create    app/views/users/_user.html.erb
      remove    app/views/users/show.html.erb
      create    app/views/users/show.html.erb
      remove    app/views/users/edit.html.erb
      create    app/views/users/edit.html.erb
         run    git add -A from "."
         run    git commit -qm "rails_apps_composer: views" from "."
      routes  recipe running after 'bundle install'
      remove    config/routes.rb
      create    config/routes.rb
        gsub    config/routes.rb
         run    git add -A from "."
         run    git commit -qm "rails_apps_composer: routes" from "."
    frontend  recipe running after 'bundle install'
      remove    app/views/layouts/application.html.erb
      create    app/views/layouts/application.html.erb
      remove    app/views/layouts/application.html.erb
      create    app/views/layouts/application.html.erb
      remove    app/views/layouts/_messages.html.erb
      create    app/views/layouts/_messages.html.erb
      remove    app/views/layouts/_messages.html.erb
      create    app/views/layouts/_messages.html.erb
      remove    app/views/layouts/_navigation.html.erb
      create    app/views/layouts/_navigation.html.erb
      remove    app/views/layouts/_navigation.html.erb
      create    app/views/layouts/_navigation.html.erb
        gsub    app/views/layouts/application.html.erb
        gsub    app/views/layouts/_navigation.html.erb
      remove    app/assets/stylesheets/application.css.scss
      create    app/assets/stylesheets/application.css.scss
      remove    app/assets/stylesheets/application.css.scss
      create    app/assets/stylesheets/application.css.scss
      insert    app/assets/javascripts/application.js
      create    app/assets/stylesheets/bootstrap_and_overrides.css.scss
      remove    app/assets/stylesheets/application.css
         run    git add -A from "."
         run    git commit -qm "rails_apps_composer: front-end framework" from "."
        gsub    public/robots.txt
        gsub    public/robots.txt
    composer  Running 'after everything' callbacks.
      readme  recipe running after everything
      remove    README
      remove    README.rdoc
      remove    doc/README_FOR_APP
      remove    public/humans.txt
      create    public/humans.txt
      remove    README
      create    README
      remove    README.textile
      create    README.textile
        gsub    README
        gsub    README.textile
        gsub    README.textile
        gsub    README.textile
        gsub    README.textile
        gsub    README
        gsub    README
        gsub    README.textile
        gsub    README.textile
        gsub    README.textile
        gsub    README.textile
        gsub    README.textile
        gsub    README.textile
        gsub    README.textile
        gsub    README.textile
        gsub    README.textile
         run    git add -A from "."
         run    git commit -qm "rails_apps_composer: add README files" from "."
     testing  recipe running after everything
         run    git add -A from "."
         run    git commit -qm "rails_apps_composer: rspec files" from "."
# On branch master
nothing to commit (working directory clean)
        init  recipe running after everything
      append    config/application.yml
      append    config/application.yml
      append    config/application.yml
      append    config/application.yml
      create    config/application.example.yml
      append    db/seeds.rb
      append    db/seeds.rb
        init  applying migrations and seeding the database
         run    bundle exec rake db:migrate from "."
==  RolifyCreateRoles: migrating ==============================================
-- create_table(:roles)
   -> 0.0085s
-- create_table(:users_roles, {:id=>false})
   -> 0.0006s
-- add_index(:roles, :name)
   -> 0.0006s
-- add_index(:roles, [:name, :resource_type, :resource_id])
   -> 0.0006s
-- add_index(:users_roles, [:user_id, :role_id])
   -> 0.0005s
==  RolifyCreateRoles: migrated (0.0112s) =====================================

         run    bundle exec rake db:test:prepare from "."
         run    bundle exec rake db:seed from "."
ROLES
role: admin
role: user
role: VIP
         run    git add -A from "."
         run    git commit -qm "rails_apps_composer: set up database" from "."
      extras  recipe removing unnecessary files and whitespace
      remove    public/index.html
      remove    app/assets/images/rails.png
        gsub    Gemfile
        gsub    Gemfile
        gsub    config/routes.rb
        gsub    config/routes.rb
         run    git add -A from "."
         run    git commit -qm "rails_apps_composer: extras" from "."
      extras  recipe creating GitHub repository
         run    hub create databasedotcom from "."
github.com username: noeticpenguin
github.com password for noeticpenguin (never stored):
Updating origin
created repository: noeticpenguin/databasedotcom
         run    hub push -u origin master from "."
Counting objects: 208, done.
Delta compression using up to 4 threads.
Compressing objects: 100% (182/182), done.
Writing objects: 100% (208/208), 51.17 KiB, done.
Total 208 (delta 60), reused 0 (delta 0)
To git@github.com:noeticpenguin/databasedotcom.git
 * [new branch]      master -> master
Branch master set up to track remote branch master from origin.
    composer  WOOT! The recipes you've selected are known to work together.
    composer  If they don't, open an issue for rails_apps_composer on GitHub.
    composer  WARNING! The preferences you've selected might not work together.
    composer  Help us out by reporting whether this combination works or fails.
    composer  Please open an issue for rails_apps_composer on GitHub.
    composer  Your new application will contain diagnostics in its README file.
    composer  Finished running the rails_apps_composer app template.
    composer  Your new Rails app is ready. Time to run 'bundle install'.
         run  bundle install
Using rake (10.0.3)
Using i18n (0.6.4)
Using multi_json (1.6.1)
Using activesupport (3.2.12)
Using builder (3.0.4)
Using activemodel (3.2.12)
Using erubis (2.7.0)
Using journey (1.0.4)
Using rack (1.4.5)
Using rack-cache (1.2)
Using rack-test (0.6.2)
Using hike (1.2.1)
Using tilt (1.3.5)
Using sprockets (2.2.2)
Using actionpack (3.2.12)
Using mime-types (1.21)
Using polyglot (0.3.3)
Using treetop (1.4.12)
Using mail (2.4.4)
Using actionmailer (3.2.12)
Using arel (3.0.2)
Using tzinfo (0.3.37)
Using activerecord (3.2.12)
Using activeresource (3.2.12)
Using addressable (2.3.3)
Using coderay (1.0.9)
Using better_errors (0.7.2)
Using debug_inspector (0.0.2)
Using binding_of_caller (0.7.1)
Using sass (3.2.7)
Using bootstrap-sass (2.3.0.1)
Using cancan (1.6.9)
Using nokogiri (1.5.6)
Using ffi (1.4.0)
Using childprocess (0.3.9)
Using rubyzip (0.9.9)
Using websocket (1.0.7)
Using selenium-webdriver (2.31.0)
Using xpath (1.0.0)
Using capybara (2.0.2)
Using coffee-script-source (1.6.1)
Using execjs (1.4.0)
Using coffee-script (2.2.0)
Using rack-ssl (1.3.3)
Using json (1.7.7)
Using rdoc (3.12.2)
Using thor (0.17.0)
Using railties (3.2.12)
Using coffee-rails (3.2.2)
Using daemons (1.1.9)
Using database_cleaner (0.9.1)
Using diff-lcs (1.2.1)
Using launchy (2.2.0)
Using email_spec (1.4.0)
Using eventmachine (1.0.3)
Using factory_girl (4.2.0)
Using factory_girl_rails (4.2.1)
Using multipart-post (1.2.0)
Using faraday (0.8.6)
Using bundler (1.3.2)
Using rails (3.2.12)
Using figaro (0.6.3)
Using hashie (1.2.0)
Using httpauth (0.2.0)
Using hub (1.10.4)
Using jquery-rails (2.2.1)
Using jwt (0.1.7)
Using oauth2 (0.8.1)
Using omniauth (1.1.3)
Using omniauth-oauth2 (1.1.1)
Using omniauth-github (1.1.0)
Using quiet_assets (1.0.2)
Using rolify (3.2.0)
Using rspec-core (2.13.1)
Using rspec-expectations (2.13.0)
Using rspec-mocks (2.13.0)
Using rspec-rails (2.13.0)
Using sass-rails (3.2.6)
Using sendgrid (1.1.0)
Using simple_form (2.1.0)
Using sqlite3 (1.3.7)
Using thin (1.5.0)
Using uglifier (1.3.0)
Your bundle is complete! Use `bundle show [gemname]` to see where a bundled gem is installed.