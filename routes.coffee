# App Routes
# MEAN Boilerplate by @Jmlevick <https://twitter.com/Jmlevick>
# License: Coffeeware <https://github.com/Jmlevick/coffeeware-license>

module.exports = (app, auth, digest) ->

  # Basic

  app.get "/", (req, res) ->
    res.render("home.jade")

  # Imports

  require('./entities/dummies/controller')(app, auth, digest)