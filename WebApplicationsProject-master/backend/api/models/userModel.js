'user strict';
var sql = require('./db.js');

//User object constructor
var User = function(user){
    this.user = user.user;
    this.login = user.login;
    this.pass = user.pass;
    this.email = user.email;
    this.gold = user.gold;
};


User.getUserById = function (userId, result) {
        sql.query("Select * from users where id = ? ", userId, function (err, res) {             
                if(err) {
                    console.log("error: ", err);
                    result(err, null);
                }
                else{
                    result(null, res);
              
                }
            });   
};



User.getAllUser = function (result) {
        sql.query("Select * from users", function (err, res) {

                if(err) {
                    console.log("error: ", err);
                    result(null, err);
                }
                else{
                  console.log('users : ', res);  

                 result(null, res);
                }
            });   
};

User.exists = function(userLogin, userPassword ,result) {
    sql.query("SELECT * FROM users WHERE login = ? AND pass = ? LIMIT 1", [userLogin,userPassword], function (err, res) {
        
        if(err) {
            console.log("error: ", err);
            result(null, err);
        }
        else{
          console.log('users : ', res);  

         result(null, res);
        }
    });
}


module.exports= User;