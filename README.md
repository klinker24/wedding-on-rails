# Wedding on Rails

![image](https://raw.githubusercontent.com/klinker24/wedding-on-rails/master/header_image.png)

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