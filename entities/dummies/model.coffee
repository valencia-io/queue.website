# The Model
# MEAN Boilerplate by @Jmlevick - http://twitter.com/Jmlevick
# License: Beerware

mongoose = require('mongoose')

db = mongoose.createConnection('localhost', 'test', 27017)

DummiesSchema = new mongoose.Schema({
  foo: String,
  bar: String,
  baz: String
})

module.exports = db.model('Dummy', DummiesSchema)
