'use strict';

var User = require('../models/userModel.js');

exports.list_all_users = function(req, res) {
    User.getAllUsers(function(err, user) {
  
      console.log('controller')
      if (err)
        res.send(err);
        console.log('res', user);
      res.send(user);
    });
  };
  
  
  exports.read_an_user = function(req, res) {
    User.getUserById(req.params.userId, function(err, user) {
      if (err)
        res.send(err);
      res.json(user);
    });
  };

  exports.login = function(req, res) {
      User.exists(req.params.login, req.params.password, function(err, user){
          if(err)
            res.send(err);
          res.json(user);
      })
  }
