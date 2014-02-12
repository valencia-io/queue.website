
/**
 * Module dependencies.
 */

require('coffee-script');

var express = require('express');
var http = require('http');
var path = require('path');
var auth = require('http-auth');

var app = express();
var port = 3000;
var server = app.listen(port);

// Models
var Dummy = require('./entities/dummies/model');

// all environments
app.set('views', path.join(__dirname, 'views'));
app.set('view engine', 'jade');
app.use(express.favicon(path.join(__dirname, 'public/favicon.ico'))); 
app.use(express.logger('dev'));
app.use(express.json());
app.use(express.urlencoded());
app.use(express.bodyParser());
app.use(express.methodOverride());
var routes = require('./routes')(app);
app.use(app.router);
app.use(require('less-middleware')({ src: path.join(__dirname, 'public') }));
app.use(express.static(path.join(__dirname, 'public')));


// Error Handling

// 404
app.use(function(req, res) {
  res.send(404, "404: Not Found");
});

// 500
app.use(function(err, req, res, next) {
  res.send(500, "500: Server Error");
});


// Development only
if ('development' == app.get('env')) {
  app.use(express.errorHandler());
}

http.createServer(app).listen(app.get(port), function(){
  console.log('Express server listening on port ' + port);

});
