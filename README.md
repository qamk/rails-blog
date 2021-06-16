# Blog App (no styles)

This blog app is a way of getting used to the features of Rails and how to write a simple rails program. This project has no styles applied but this may change in the future (although unlikely), I primarily consider this practise of the procedures involved in making and deploying a rails application.

## Deployment to Heroku
This app has been [deployed to Heroku](https://mighty-gorge-47375.herokuapp.com/). I did have some issues in doing this as I initially had a SQLite3 rather than PostgreSQL as my database. Below I will outline my issues and what I did to resolve them, including any useful links.

## Changing database -- resolving issues (Xubuntu)
1. Change ` gem 'sqlite3' ` to `gem 'pg' ` and run bundle install
  - *Failed to build gem native extentions*
    - Try the instruction in this [stackoverflow post](https://stackoverflow.com/questions/36499590/error-failed-to-build-gem-native-extension)
2. Update database.yaml file
  - Try the steps indicated in this [medium article](https://medium.com/geekculture/ruby-on-rails-switch-from-sqlite3-to-postgres-590009645c25). Your username is your **super user** or **root**
    - *FATAL: role 'usr' does not exist* (where usr is the username)
    - If that happens you should [use createuser in postgresql](https://rails.devcamp.com/trails/40/campsites/262/guides/how-to-fix-role-does-not-exist-error-linux-postgres)
3. Continue with the aforementioned medium article's instructions to setup and migrate your database

Those were the issues I came across during the transition to PosgreSQL. It was an overall simple process thanks to the people that asked and answered before I did!
  