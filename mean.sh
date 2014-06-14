# MEAN Boilerplate by @Jmlevick - http://twitter.com/Jmlevick
# License: Coffeeware

# MEAN Boilerplate app initialization script
# Helps creating a new webapp based on the MEAN Stack (MongoDB, ExpressJS, AngularJS & NodeJS),
# Usage: type "mean" followed by the name of the project you wanna create in your terminal/prompt

# Versions:

# Twitter Bootstrap: 3.1.1
# Font Awesome: 4.1.0
# jQuery: Latest
# AngularJS: 1.2.17

#!/bin/sh


mean() {
  # Create our new project directory
  cd ~/codeprojects
  # Copy the boilerplate code to the folder and install modules
  cp -R ~/Plantillas/mean-boilerplate/ .
  mv mean-boilerplate "$@" && cd "$@"
  npm install
  # Pull in Twitter Bootstrap & Friends
  curl http://netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.min.css > public/css/bootstrap.min.css
  curl http://netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap-theme.min.css > public/css/bootstrap-theme.min.css
  curl http://netdna.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css > public/css/font-awesome.min.css
  curl http://netdna.bootstrapcdn.com/bootstrap/3.1.1/js/bootstrap.min.js > public/js/bootstrap.min.js
  # Pull in jQuery
  curl https://code.jquery.com/jquery-latest.min.js > public/js/jquery.min.js
  # Pull in AngularJS
  curl http://ajax.googleapis.com/ajax/libs/angularjs/1.2.17/angular.min.js > public/js/angular.min.js
  curl http://ajax.googleapis.com/ajax/libs/angularjs/1.2.17/angular-resource.min.js > public/js/angular-resource.min.js
}