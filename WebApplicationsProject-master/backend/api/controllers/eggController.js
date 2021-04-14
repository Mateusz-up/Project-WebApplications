'use strict';

var Egg = require('../models/eggModel.js');

exports.list_all_eggs = function(req, res) {
  Egg.getAllEgg(function(err, egg) {

    console.log('controller')
    if (err)
      res.send(err);
      console.log('res', egg);
    res.send(egg);
  });
};



exports.create_an_egg = function(req, res) {
  var new_egg = new Egg(req.body);

  //handles null error 
   if(!new_egg.egg || !new_egg.status){

            res.status(400).send({ error:true, message: 'Please provide egg' });

        }
else{
  
  Egg.createEgg(new_egg, function(err, egg) {
    
    if (err)
      res.send(err);
    res.json(egg);
  });
}
};


exports.read_an_egg = function(req, res) {
  Egg.getEggById(req.params.eggId, function(err, egg) {
    if (err)
      res.send(err);
    res.json(egg);
  });
};


exports.update_an_egg = function(req, res) {
  Egg.updateById(req.params.eggId, new Egg(req.body), function(err, egg) {
    if (err)
      res.send(err);
    res.json(egg);
  });
};


exports.delete_an_egg = function(req, res) {


  Egg.remove( req.params.eggId, function(err, egg) {
    if (err)
      res.send(err);
    res.json({ message: 'Egg successfully deleted' });
  });
};