# Admin Digest Auth Middleware
# MEAN Boilerplate by @Jmlevick - http://twitter.com/Jmlevick
# License: Coffeeware

auth = require('http-auth')
crypto = require('crypto')
salt = require('./cryptography')
config = require('yaml-config');
settings = config.readConfig('./config/app.yaml'); 

SALT01 = salt() 
SALT02 = salt()

adminuser = settings.adminuser
password = settings.password
section_token = settings.section_token
uToken = [adminuser,section_token,password].join(":")
uEnforce = crypto.createHash("md5").update(uToken).digest("hex")

SALTY = SALT01 + uEnforce + SALT02

module.exports = auth.digest(realm: section_token, (username, callback) ->
  eToken = [username,section_token,password].join(":")
  eEnforce = crypto.createHash("md5").update(eToken).digest("hex")
  if SALT01 + eEnforce + SALT02 == SALTY
    callback crypto.createHash("md5").update(adminuser + ":" + section_token + ":" + password).digest("hex")
  else
    callback()
    return
  )