# [Goat Island Lightflow](http://goatislandlightflow.herokuapp.com/)

## [![Codeship Status for eubenesa/goat-island-lightflow](https://codeship.io/projects/d759f9a0-0f87-0132-3a96-42e120fa204e/status)](https://codeship.io/projects/32662)

Lighthouse Labs final project  
Brought to you by Eubene Sa

## The stack

* JavaScript / Ember.js 1.7.0 / Ember Data 1.0.0-beta.9 using `ember-rails`
* Ruby 2.1.2 on Rails 4.1.5
* Github API
* Pure / HTML5 / CSS3
* PostgreSQL

## Getting it up and running locally

1. Register a new developer application in your [Github](https://github.com/settings/applications) with homepage URL `http://localhost:3000/` and authorization callback URL `http://localhost:3000/auth/github/callback`.
2. `git clone git@github.com:eubenesa/goat-island-lightflow.git`
3. `cp .env.example .env`. Fill in the `GITHUB_ID` and `GITHUB_SECRET` parameters inside `.env` with your Client ID and Client Secret from Step 1.
4. `bundle install`
5. `bin/rake db:setup`
6. `bin/rails server`
7. Visit `http://localhost:3000/` in Chrome.

## Debugging

Ideally, you should have at least 2 additional tabs open in your Terminal for debugging. Run the following commands from the project's root directory:  
  
1. `bin/rails console`  
2. `bin/rails dbconsole`  

## [Project management](https://trello.com/b/Xlp2bRmh/goat-island-lightflow-ember-js)
