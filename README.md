<!-- Shields -->
![](https://img.shields.io/badge/Ruby-2.5.3-red)
![](https://img.shields.io/badge/Rails-6.1.2.1-informational?style=flat&logo=<LOGO_NAME>&logoColor=white&color=2bbc8a)

# Remesh Conversations

This application allows the user to create conversations, add messages to that conversation, and also add thoughts to specific messages in a given conversation.

## Summary

  - [Getting Started](#getting-started)
  - [Runing the tests](#running-the-tests)
  - [Visuals](#visuals)
  - [What's Next](#whats-next)
  - [Author](#author)

## Getting Started

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes.

### Setup:
- Make a directory to house the application: `mkdir remesh_conversations`
- Move into the directory: `cd remesh_conversations`
- Clone the repo: `git clone git@github.com:stillsheryl/remesh_conversations.git`
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

* Standardize and re-organize routes
* Use private params for form submissions
* Order conversations by date and time
* Format time for all thoughts, messages, and conversations
* Fix time to show the local time
* Improve nested file structure of tests and controllers
* Ad edge case testing
* Add links to go between pages
* Make search more reliable (downcase to take into account capitalization)
* Depending on the requirements, I may add the ability to delete conversations
* Create relationships so when delete a conversation it deletes all related messages and thoughts

## Author

Sheryl Stillman: [LinkedIn](https://www.linkedin.com/in/sherylstillman1/) - [Email](mailto:sheryl.stillman@gmail.com) -  [GitHub](https://github.com/stillsheryl)
