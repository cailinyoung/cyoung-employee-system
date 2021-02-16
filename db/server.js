const util = require("util");
const mysql = require("mysql");

// setting up localhost connection
const connection = mysql.createConnection({
    host: "local connection",
    port: 3306,
    user: "root",
    password: "password",
    database: "employee_trackerDB"
});

connection.connect();

module.exports = connection;



