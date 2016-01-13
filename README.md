# Wedding on Rails

![image](https://cloud.githubusercontent.com/assets/1238468/5151689/d340dce2-71d9-11e4-9284-ff6f83e3e6a0.png)

> :bomb: Please note Wedding-on-rails is currently in early active development, `master` branch may not be in a usable state.

Wedding on Rails in a Ruby on Rails application that I am using for my own wedding but building in a reusable SaaS like way :)

## Features
- Guest management
- Wedding event page with information
- Photo uploading to AWS S3
- Content management
- To-do lists with defaults
- RSVP's are taken on the website
- Aggregated RSVP notifications 

## Roadmap
- Theme support
- Markdown support

## Setup and Deployment

#### Information:
1. Use ruby 2.1 for eventmanager support
2. Add AWS config to Heroku for config/initializers/carrierwave.rb


#### Creating a Heroku instance:
1. heroku create
2. git push heroku master
3. heroku run rake db:migrate
4. heroku run rake db:seed


#### Deploying to Heroku:
1. commit any changes
2. git push heroku master


## Useful Hints/Commands
1. You can still use rails console to view the Heroku Postgres database.

```
heroku run rails console
heroku run rails console --sandbox
```

2. Resetting the database is different on heroku.

```
heroku pg:reset DATABASE
heroku run rake db:migrate db:seed
```