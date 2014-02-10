# Random Salt Generator
# MEAN Boilerplate by @Jmlevick - http://twitter.com/Jmlevick
# License: Beerware

crypto = require('crypto')

module.exports = ->
  text = ""
  possible = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789"
  i = 0

  while i < 512
    text += possible.charAt(Math.floor(Math.random() * possible.length))
    i++
  data = text
  data

  hash = crypto.createHash("md5").update(data).digest("hex")
  hash