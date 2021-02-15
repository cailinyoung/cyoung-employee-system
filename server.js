const util = require("util");
const mysql = require("mysql");

// setting up localhost connection
const connection = mysql.createConnection({
    host: "localhost",
    port: 3306,
    user: "root",
    password: "password",
    database: "employee-trackerDB"
});

connection.connect();

module.exports = connection;