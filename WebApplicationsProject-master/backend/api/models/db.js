'user strict';

var mysql = require('mysql');

//local mysql db connection
var connection = mysql.createConnection({
  host: 'localhost',
  user: 'waProject',
  password: 'passw56',
  database: 'waProj'
});

connection.connect(function(err) {
    if (err) throw err;
});

module.exports = connection;