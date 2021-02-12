<!-- Shields -->
![](https://img.shields.io/badge/Ruby-2.5.3-red)
![](https://img.shields.io/badge/Rails-6.1.2.1-informational?style=flat&logo=<LOGO_NAME>&logoColor=white&color=2bbc8a)

# Remesh Conversations

This application allows users to create conversations, add messages to that conversation, and also add thoughts to specific messages in a given conversation.

## Summary

  - [Getting Started](#getting-started)
  - [Runing the tests](#running-the-tests)
  - [Visuals](#visuals)
  - [What's Next](#whats-next)
  - [Author](#author)

## Getting Started

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes. This app is built with Ruby on Rails using a PostgreSQL database, so please make sure you have those installed. You may want to install [Ruby Version Manager](https://rvm.io/) (RVM) to help make sure you're using Ruby version `2.5.3`. If you don't have [bundler](https://bundler.io/) or [PostgreSQL](https://www.postgresql.org/) on your machine you will also need to download those. You can follow directions via the Setup documentation, and please see below for some [helpful commands](#helpful-commands) if you run into any errors.

### Setup:
- Clone the repo: `git clone git@github.com:stillsheryl/remesh_conversations.git`
- Move into the directory: `cd remesh_conversations`
- Run `bundle install` to install the dependencies
- Run `rails db:{create,migrate}` to create the database
- In order to run locally, run `rails s` and navigate to http://localhost:3000/conversations in your browser.

### Dependencies

```ruby
gem 'rspec-rails'
gem 'capybara'
gem 'shoulda-matchers'
gem 'pry'
```

## Running the tests

* For testing I implemented RSpec. In order to run the tests, run `bundle exec rspec` in the command line and you should have 11 passing tests.

## Visuals

Database schema:

![remesh_schema](https://user-images.githubusercontent.com/7945439/107723449-557fbf00-6c9e-11eb-81f0-3d8d57892e25.png)

Video demo:
![remesh-app-demo](https://j.gifs.com/NLNkPN.gif)

## What's Next

There are a lot of things I would do if I had more time to dedicate to this project. Here are a few:

* Add ability to delete and edit

* Create relationships so when delete a conversation it deletes all related messages and thoughts

* Standardize and re-organize routes.

* Use private params for form submissions

* Order conversations by date and time

* Format time for all thoughts

* Fix time to show the local time

* Improve nested file structure of tests and controllers

* Edge case testing

* Add links to go between pages

* Make search more reliable (downcase to take into account capitalization)

## Author

Sheryl Stillman: [LinkedIn](https://www.linkedin.com/in/sherylstillman1/) - [Email](mailto:sheryl.stillman@gmail.com) -  [GitHub](https://github.com/stillsheryl)


## Helpful Commands

If you need some guidance on commands to help you get up and running and you're using a MacOS, please try the following that are relevant to the errors you receive and the packages you may be missing. You will need to run these prior to the `bundle install` command.

To get RVM and run the correct version of Ruby:
```
curl -sSL https://get.rvm.io | bash -s stable --ruby
echo "source "$HOME/.rvm/scripts/rvm" >> ~/.zshrc
source ~/.zshrc
rvm install "ruby-2.5.3"
rvm use 2.5.3
```

To install the bundler:
```
gem install bundler
```

To install and start PostgreSQL:
```
brew install postgresql
gem install pg -v '1.2.3'
pg_ctl -D /usr/local/var/postgres start
```

To install NVM version 14 and yarn, if needed:
```
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.37.2/install.sh | bash
echo "source $(brew --prefix nvm)/nvm.sh" >> ~/.zshrc
source ~/.zshrc
nvm install 14
nvm use 14
npm install yarn --global
yarn install
```
