# README

This README would normally document whatever steps are necessary to get the
application up and running.

## Design
> Controllers
- Pages: This consists of pages_controller. The controller has the home, about, contact methods
> Model
- skill(title:string, percent:integer)

## Things I cover

> Rails version
- Rails 7.0.1
> Ruby version
- ruby 3.1.0
> System dependencies

> Configuration

> Create Rails Application
- rails new myappname -T database=postgresql

> Database creation
- After creating the Rails application,
- Setup the local host for the database
- vim config/databse.yml
- Press i to insert data
- Under pool, add host: localhost username: database_username password: password_for_database_username
- Press ESc on your keyboard
- Type :wq to save and quite
- On the ternimal, type "rails db:create" Enter return key
- Type "rails db:migrate" Enater return key

> Run Apllication
Run the application and confirm the database setup is working without error
> Run locally
- rails server

> Scaffold
- A set of automatically generated files
- rails g scaffold Blog title:string body:text
- rails db:migrate

> Database initialization

## Rails Generators
> Controller Generator
- rails g controller pages home about contact
> Note - Where Pages is the controller, while home, about and contact are the name of the pages (methods) in page controller

> Model Generator
- rails g model skill title:string percent_utilized:integer
- rails db:migrate
> Resource Generator
- rails g resource Portfolio title:string subtitle:string body:text main_image:text thumb_image:text
- rails db:migrate

## Insert data to table - Ubuntu
- Open the terminal
- Type rails console
- Type Skill.create!(title: "Ruby on Rails", percent_utilized: 65)

> How to run the test suite

> Services (job queues, cache servers, search engines, etc.)

> [ActsAsTaggableOn](https://github.com/mbleigh/acts-as-taggable-on)
- Add tags to post
> Authentication
- [Devise](https://rubygems.org/search?query=devise)
- Add gem 'devise', '~> 4.8', '>= 4.8.1' to the gemfile
- Run bundle install
- [Install device generator](https://github.com/heartcombo/devise) $ rails generate devise:install
- Complete the instructions of the installation for the device configuration
- Possible error message when you try sign up - NoMethodError (undefined method 'user_url' for #<Devise::RegistrationsController:0x0000000000d638>)
- Solution - Add :turbo_stream as a navigational format. This line goes in config/initializers/devise.rb.  - config.navigational_formats = ['*/*', :html, :turbo_stream]
- Possible error for logout - No route matches [GET] "/logout"
- Solution - If you want to use :delete method for security reasons and not be dependent on jquery-ujs you can use button_to instead of link_to, like:
button_to "Log out", destroy_user_session_path, method: :delete
- Possible error when add custom attributes - undefined method `before_filter' for AuthorsController:Class
- Solution - Try using before_action :zero_authors_or_authenticated, only: [:new, :create] Instead of before_filter :zero_authors_or_authenticated, only: [:new, :create]
- Note - before_filter has been deprecated in Rails 5.0 and removed in 5.1.

> Partials 
- They are particularly useful for reusing the same markup between different views, layouts, and even other partials. It is identified by underscore. Example _filename

> View helpers are similar to partials. While view helpers are written in Ruby and located in helper folder, partials are written in html and located in view folder

> [ActionView Helper Mthods](https://guides.rubyonrails.org/action_view_helpers.html)

> Debugging

### Puts Debugging
- By using "puts @blog.inspect". This print out the content on the terminal to ensure data work accodeingly

> Byebug in Rails 
- By default Rails file give us access to byebug
- Add "byebug" as a breakpoint for step by step debugging
- The application will run to the breakpoint and stop
- Type what you want to inspect. Example params, session, @blog
- To get out of the debug type "continue" 
> Pry
- Copy gem 'pry-byebug' to group :development, :test do in gemfile 
- Type 'bundle' to import the gems
- Add 'binding.pry' in the required line of the code
- Run the application
- Check for the neccessary parameters

## [Ruby Gems](https://rubygems.org/)
> Add Bootsrap CDN to the application.html.erb in the view layout. However, this is not the best practice. Should the CDN goes down or the class name changed, what happens to the styling of the application

> Install Bootstrap in your Ruby apps using Bundler (recommended) and RubyGems by adding the following line to your Gemfile
[See the gem’s README](https://github.com/twbs/bootstrap-rubygem/blob/master/README.md) for further details of installation process.
- Add bootstrap to your Gemfile: gem 'bootstrap', '~> 5.1.3'
- bundle install and restart your server to make the files available through the pipeline.
- To see the sprockets-rails version, go to the Gemfile.lock and search for it
- Import Bootstrap styles in app/assets/stylesheets/application.scss: @import "bootstrap";
- Note: Should your application style file is application.css, rename it to application.scss
Add Bootstrap dependencies and Bootstrap to your application.js


> Deployment instructions


