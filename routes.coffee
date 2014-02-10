# App Routes
# MEAN Boilerplate by @Jmlevick - http://twitter.com/Jmlevick
# License: Beerware

module.exports = (app) ->

  # Basic

  app.get "/", (req, res) ->
    res.render("dummies/index.jade")

  # Imports

  require('./entities/dummies/controller')(app)