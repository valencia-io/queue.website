# The Model
# MEAN Boilerplate by @Jmlevick <https://twitter.com/Jmlevick>
# License: Coffeeware <https://github.com/Jmlevick/coffeeware-license>

mongoose = require('mongoose')
Schema = mongoose.Schema
db = mongoose.createConnection('localhost', 'geniusdb', 27017)

DummiesSchema = new Schema({
  foo: String,
  bar: String,
  baz: String
})

module.exports = db.model('Dummy', DummiesSchema)
