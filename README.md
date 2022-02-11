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
- Aftercreating the Rails application,
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

> Deployment instructions

