/**
* The Core of our app...!
* MEAN Boilerplate by @Jmlevick <https://twitter.com/Jmlevick>
* License: Coffeeware <https://github.com/Jmlevick/coffeeware-license>
*/

// Module Dependencies
require('coffee-script');

var express = require('express');
var http = require('http');
var path = require('path');
var auth = require('http-auth');
var favicon = require('serve-favicon');
var logger = require('morgan');
var bodyParser = require('body-parser');
var methodOverride = require('method-override');
var static = require('serve-static');
var errorHandler = require('errorhandler');
var crypto = require('crypto')
var cluster = require('cluster');
var cookieParser = require('cookie-parser');
var session = require('express-session');
var MongoStore = require('connect-mongo')(session);
var timeout = require('connect-timeout');
var flash = require('connect-flash');
var multer = require('multer');
var device = require('express-device');
var digest = require('./extras/crypto-auth-mean')(auth, crypto);

// YAML Load
var config = require('yaml-config');
var settings = config.readConfig('config/app.yaml');

// The application
if (cluster.isMaster) {
  cpuCount = require("os").cpus().length;
  i = 0;
  while (i < cpuCount) {
    cluster.fork();
    i += 1;
  }
} else {

  var app = express();
  var port = 3000;
  var server = app.listen(port);

  // Extras
  app.use(multer({ dest: './uploads/',
     rename: function (fieldname, filename) {
        return filename+Date.now();
      },
    onFileUploadStart: function (file) {
      console.log(file.originalname + ' is starting ...')
    },
    onFileUploadComplete: function (file) {
      console.log(file.fieldname + ' uploaded to  ' + file.path)
      done=true;
    }
    }));

  // all environments
  app.set('views', path.join(__dirname, 'views'));
  app.set('view engine', 'jade');
  app.use(favicon(path.join(__dirname, 'public/favicon.ico'))); 
  app.use(logger('dev'));
  app.use(cookieParser());
  app.use(bodyParser.json());
  app.use(device.capture());
  app.use(bodyParser.urlencoded({extended: true}));

  app.use(session({
      secret: settings.sessions_secret,
      cookie: { maxAge: 24 * 60 * 60, expires: null },
      saveUninitialized: true,
      resave: true,
      store: new MongoStore({url: settings.mongodb_uri + "/sessions"})
    }));
  
  app.use(flash());
  app.use(methodOverride());
  require('./extras/middleware')(app);
  var routes = require('./routes')(app, auth, digest);
  app.use(require('less-middleware')(path.join(__dirname, 'public')));
  app.use(static(path.join(__dirname, 'public')));


  // Error Handling (Uncomment in production!)
  // 404
  // app.use(function(req, res) {
  //  res.status(404).send("404: Not Found");
  // });

  // 500
  // app.use(function(err, req, res, next) {
  //  res.status(500).send(err: "500: Server Error");
  // });

  // Development only
  if ('development' == app.get('env')) {
    app.use(errorHandler());
  }

  http.createServer(app).listen(app.get(port), function(){
    cpuNum = parseInt(cluster.worker.id) - 1
    cpuNum = cpuNum.toString()
    console.log('Express server listening on port ' + port + ', cpu:worker:' + cpuNum);
  });
}

cluster.on('exit', function (worker) {
    cpuNum = parseInt(worker.id) - 1
    cpuNum = cpuNum.toString()
    console.log('cpu:worker:' + cpuNum + ' died unexpectedly, respawning...');
    cluster.fork();
});