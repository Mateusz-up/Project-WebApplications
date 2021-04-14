const express = require('express'),
  project = express(),
  bodyParser = require('body-parser');
  port = process.env.PORT || 3000;

  project.use(function(req, res, next) {

    res.header("Access-Control-Allow-Origin", "*");
  
    res.header("Access-Control-Allow-Headers", "Origin, X-Requested-With, Content-Type, Accept");
  
    next();
  
  });


const mysql = require('mysql');

const mc = mysql.createConnection({
  host: 'localhost',
  user: 'waProject',
  password: 'passw56',
  database: 'waProj'
});
 
mc.connect();

project.listen(port);

console.log('API server started on: ' + port);

project.use(bodyParser.urlencoded({ extended: true }));
project.use(bodyParser.json());

var routes = require('./api/routes/projectRoutes.js');
routes(project);