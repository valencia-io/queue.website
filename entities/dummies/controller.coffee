# The Controller
# MEAN Boilerplate by @Jmlevick <https://twitter.com/Jmlevick>
# License: Coffeeware <https://github.com/Jmlevick/coffeeware-license>

module.exports = (app, auth, digest) ->

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
      res.render("entity_views/dummies/admin.jade", {dummies: dummies})