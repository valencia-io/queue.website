# The Model
# MEAN Boilerplate by @Jmlevick <https://twitter.com/Jmlevick>
# License: Coffeeware <https://github.com/Jmlevick/coffeeware-license>

mongoose = require('mongoose')
config = require('yaml-config')
settings = config.readConfig('config/app.yaml')

Schema = mongoose.Schema
db = mongoose.createConnection(settings.mongodb_uri)

DummiesSchema = new Schema({
  foo: String,
  bar: String,
  baz: String
})

module.exports = db.model('Dummy', DummiesSchema)
