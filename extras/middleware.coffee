# Your own middleware goes here...
# MEAN Boilerplate by @Jmlevick <https://twitter.com/Jmlevick>
# License: Coffeeware <https://github.com/Jmlevick/coffeeware-license>

express = require('express')

module.exports = (app) ->
  app.use((req, res, next) ->
    res.locals.foo = "foo"
    next())