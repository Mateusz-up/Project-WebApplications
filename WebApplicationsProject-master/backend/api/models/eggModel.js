'user strict';
var sql = require('./db.js');

//Egg object constructor
var Egg = function(egg){
    this.egg = egg.egg;
    this.egg_name = egg.egg_name;
    this.egg_price = egg.egg_price;
    this.time_of_grow_up = egg.time_of_grow_up;
    this.vaule = egg.value;
};


Egg.createEgg = function (newEgg, result) {    
        sql.query("INSERT INTO eggs set ?", newEgg, function (err, res) {
                
                if(err) {
                    console.log("error: ", err);
                    result(err, null);
                }
                else{
                    console.log(res.insertId);
                    result(null, res.insertId);
                }
            });           
};



Egg.getEggById = function (eggId, result) {
        sql.query("Select * from eggs where id = ? ", eggId, function (err, res) {             
                if(err) {
                    console.log("error: ", err);
                    result(err, null);
                }
                else{
                    result(null, res);
              
                }
            });   
};



Egg.getAllEgg = function (result) {
        sql.query("Select * from eggs", function (err, res) {

                if(err) {
                    console.log("error: ", err);
                    result(null, err);
                }
                else{
                  console.log('eggs : ', res);  

                 result(null, res);
                }
            });   
};



Egg.updateById = function(id, egg, result){
  sql.query("UPDATE eggs SET egg = ? WHERE id = ?", [egg.egg, id], function (err, res) {
          if(err) {
              console.log("error: ", err);
                result(null, err);
             }
           else{   
             result(null, res);
                }
            }); 
};



Egg.remove = function(id, result){
     sql.query("DELETE FROM eggs WHERE id = ?", [id], function (err, res) {

                if(err) {
                    console.log("error: ", err);
                    result(null, err);
                }
                else{
               
                 result(null, res);
                }
            }); 
};

module.exports= Egg;