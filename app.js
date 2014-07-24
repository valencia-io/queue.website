
/**
 * Module dependencies.
 */

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
var errorHandler = require('errorhandler')

var app = express();
var port = 3000;
var server = app.listen(port);

// Models
var Dummy = require('./entities/dummies/model');

// all environments
app.set('views', path.join(__dirname, 'views'));
app.set('view engine', 'jade');
app.use(favicon(path.join(__dirname, 'public/favicon.ico'))); 
app.use(logger('dev'));
app.use(bodyParser.urlencoded({extended: true}));
app.use(bodyParser.json());
app.use(methodOverride());
var routes = require('./routes')(app);
app.use(require('less-middleware')(path.join(__dirname, 'public')));
app.use(static(path.join(__dirname, 'public')));


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
  app.use(errorHandler());
}

http.createServer(app).listen(app.get(port), function(){
  console.log('Express server listening on port ' + port);

});
