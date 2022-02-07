# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

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

> Database initialization

> How to run the test suite

> Services (job queues, cache servers, search engines, etc.)

> Deployment instructions

