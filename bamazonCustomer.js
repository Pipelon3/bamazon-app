var mysql = require("mysql");
var inquirer = require("inquirer");

var connection = mysql.createConnection({
  host: "localhost",
  port: 3306,
  user: "root",
  password: "root",
  database: "Bamazon_inventory"
});

connection.connect(function (err){
  if (err) throw err;
  connection.query("SELECT * FROM products", function (err, res) {
      if (err) throw err;
     
  });
})

function mySystem() {
  inquirer    
      .prompt([
          {
              name: "item",
              type: "list",
              message: "What item would you like to select?",
              choices: [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13]
          },
          {
              name:"quantity",
              type:'input',
              message: 'How many would you like to select?'
          }
      ]).then(function(answers) {
          updateDB(answers.item, answers.quantity);
      });
}

function updateDB(item, count) {
  console.log(item)
  connection.query('select stock_quantity, price from products where item_id = ?', item, function(err, res) {
    if (err) throw err;
    console.log(res)
    if(res[0].stock_quantity <= 0) {
        console.log('Sorry, that item is out of stock');
    } else if (res[0].stock_quantity < count) {
        console.log('Sorry, there is not enough stock of this item. Please enter a lower quantity');
    }else {
        connection.query('update products set stock_quantity = stock_quantity - ? where item_id = ?', [count, item], function(err) {
            if (err) throw err;
          console.log('Here is your order of' + count + '' + item)
          console.log('Your total comes out to $' + (count * parseFloat(res[0].price)).toFixed(2));
          console.log('Thank your for shopping with us at Bamazon!');
        });
    }
    connection.end();
  });
}
mySystem();