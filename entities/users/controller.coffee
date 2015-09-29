# The Controller

#

module.exports = (app) ->

  # Model & YAML Loading
  User = require('./model')
  config = require('yaml-config')
  settings = config.readConfig('config/app.yaml')

  # Index


  # Show


  # New


  # Create


  # Edit


  # Update


  # Destroy


  # Admin

  app.get "/users/admin", (req, res, next) ->
    if req.user? and req.user.is_admin is true
      User.find().exec (err, users) ->
        return next(err)  if err
        res.render("entity_views/users/admin.jade", {users: users})
    else
      res.render('login.jade')

  app.get "/users/show", (req, res, next) ->
    if req.user? and req.user.is_admin is true
      User.find {}, (err,docs) ->
        res.json(docs);
    else
      res.render('login.jade')
