var mysql = require('mysql');
var inquirer = require("inquirer");

var connection = mysql.createConnection({
    host: 'localhost',
    port: 3306,
    user: 'root',
    password: '',
    database: 'bamazon'
});

connection.query('SELECT * FROM products', function (error, res, fields) {
    if (error) throw err;
    for (var i = 0; i < res.length; i++) {
        console.log(res[i].item_id + " | " + res[i].product_name + " | " + "$" + res[i].price);
    }

    inquirer.prompt([
        {
            type: 'input',
            name: 'quantity',
            message: '\nEnter ID of the item that you want to purchase',
            validate: function (value) {
                var wholeNumber = parseFloat(value);
                // for (var i = 0; i < res.length; i++) {
                //     console.log(res[i].item_id);
                //     // if (wholeNumber === res[i].item_id) {
                //     //     return wholeNumber;
                //     // }
                //     // else {
                //     //     return 'Please enter valid ID';
                //     // }
                // }
                if (value > res.length || isNaN(value) === true || Number.isInteger(wholeNumber) === false) {
                    return 'Please enter valid ID';
                }
                else {
                    return true;
                }    
            }
        },
        {
            type: 'input',
            name: 'quantity',
            message: 'Enter the amount of items that you want to purchase',
            validate: function (value) {
                var wholeNumber = parseFloat(value);

                if (isNaN(value) === true) {
                    return 'Please enter a number';
                }
                else if (Number.isInteger(wholeNumber) === false) {
                    return 'Please enter an appropriate number';
                }
                else if (wholeNumber > res.stock_quantity) {
                    return 'Insufficient quantity!'
                }
                else {
                    return true;
                }
            }
        }
    ]).then(function (input) {
        console.log('\nOrder receipt:');
        console.log(JSON.stringify(input, null, '   '));
    });

});

connection.end();

