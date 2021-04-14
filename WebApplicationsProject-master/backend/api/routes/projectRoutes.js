'use strict';
module.exports = function(app) {
  var egg = require('../controllers/eggController.js');
  var user = require('../controllers/userController.js');

  // egg Routes
  app.route('/api/eggs')
    .get(egg.list_all_eggs)
    .post(egg.create_an_egg);
   
  app.route('/api/eggs/:eggId')
    .get(egg.read_an_egg)
    .put(egg.update_an_egg)
    .delete(egg.delete_an_egg);
  
  // user Routes

  app.route('/api/users')
    .get(user.list_all_users);
  
  app.route('/api/users/:userId')
    .get(user.read_an_user);

  app.route('/api/user/:login/:password')
    .post(user.login);

  // app.route('/api/cart/:userId')
  //   .get(project.read_cart);


  // app.route('/api/cart/:userId/:itemId')
  //   .put(project.add_item_to_cart)
  //   .delete(project.delete_item_from_cart);
  
  // app.route('/api/zamowienia')
  //   .get(project.list_users_orders)
  //   .put(project.add_user_order)
  //   .delete(project.delet_user_order);

     };