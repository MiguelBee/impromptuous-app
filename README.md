# Impromptous Application README

-Impromptuous is food ordering and delivery location finder/randomizer. It utilizes the Yelp api and automates random food establishments with given parameters.
  
## Getting started

To get started with the app, clone the repo and then install the needed gems:

```
$ bundle install
```

Next, migrate the database:

```
$ rails db:migrate
```

App requires the use of Yelp API keys. Need to add your own YELP_CLIENT_ID, YELP_CLIENT_SECRET, YELP_ACCESS_TOKEN added to config/application.yml to function.
`````

Lastly, run the local server

$ rails server
```
