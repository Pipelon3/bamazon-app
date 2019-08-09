var mysql = require("mysql");
var inquirer = require("inquirer");

var connection = mysql.createConnection({
  host: "localhost",
  port: 3306,
  user: "root",
  password: "root",
  database: "Bamazon_inventory"
});

function runSearch() {
  inquirer
    .prompt({
      name: "action",
      type: "rawlist",
      message: "What would you like to do?",
      choices: [
        "Find product by name",
        "Find product by ID"
      ]
    })
    .then(function(answer) {
      switch (answer.action) {
      case "Find product by name":
        productSearch();
        break;

      case "Find product by ID":
        idSearch();
        break;
      }
    });
}

function productSearch() {
  inquirer
    .prompt({
      name: "product",
      type: "input",
      message: "What product would you like to search for?"
    })
    .then(function(answer) {
      var query = "";
      connection.query(query, { product: answer.product }, function(err, res) {
        for (var i = 0; i < res.length; i++) {
        
        }
        runSearch();
      });
    });
}

function idSearch() {
  var query = "";
  connection.query(query, function(err, res) {
    for (var i = 0; i < res.length; i++) {
      console.log(res[i].product);
    }
    runSearch();
  });
}
