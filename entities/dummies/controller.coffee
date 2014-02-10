# The Controller
# MEAN Boilerplate by @Jmlevick - http://twitter.com/Jmlevick
# License: Beerware

module.exports = (app) ->

  # Dependencies
  auth = require('http-auth')
  crypto = require('crypto')
  digest = require('../adminAuth')

  # Model Loading
  Dummy = require('./model')

  # Index


  # Show


  # New


  # Create


  # Edit


  # Update


  # Destroy


  # Admin
  
  app.get "/dummies/admin", auth.connect(digest), (req, res, next) ->
    Dummy.find().exec (err, dummies) ->
      return next(err)  if err
      res.render("dummies/admin.jade", {dummies: dummies})