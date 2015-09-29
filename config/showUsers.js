mongoose = require('mongoose');
bcrypt = require('bcrypt');
salt = bcrypt.genSaltSync(10);
path = require('path');
root = path.dirname(__dirname);
yaml_file = root + "/config/app.yaml";
config = require('yaml-config');
settings = config.readConfig(yaml_file);
hash = bcrypt.hashSync("#{process.env.npm_config_password}", salt);
var prettyjson = require('prettyjson');
mongoose.connect(settings.mongodb_uri);
User = mongoose.model('User', {
  username: String,
  password: String,
  is_admin: Boolean
});

// var users = require("../entities/users/model.coffee");
User.find({}, function(err, docs) {
  // console.log(JSON.stringify(docs));
  console.log(prettyjson.render(docs, {
    noColor: true
  }));
});
