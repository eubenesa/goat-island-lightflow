# [Goat Island Lightflow](http://i.imgur.com/M1t4CkC.jpg)



Lighthouse Labs final project  
Brought to you by Eubene Sa

## The stack

* Ruby 2.1.2 on Rails 4.1.5
* ...

## [Project management](https://trello.com/b/Xlp2bRmh/goat-island-lightflow-ember-js)

## Getting it up and running locally

1. `git clone git@github.com:eubenesa/goat-island-lightflow.git`
2. `bundle`
3. `bundle exec rake db:create`
4. `bundle exec rake db:migrate`
5. `bundle exec rake db:seed`
6. `bin/rails server`
7. Visit `http://localhost:3000/` in Chrome.

## Debugging

Ideally, you should have at least 4 tabs open in your CLI for debugging. Run these commands from the repository's root directory:  
1. `bin/rails server`  
2. `bin/rails console`  
3. `bin/rails dbconsole`  
4. `pry`
