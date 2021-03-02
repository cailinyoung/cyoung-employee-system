const util = require("util");
const mysql = require("mysql");

// setting up localhost connection
const connection = mysql.createConnection({
    host: 'localhost',
    port: 3001,
    user: 'root',
    password: 'password',
    database: 'employee_trackerDB'
});

connection.connect()

connection.query = util.promisify(connection.query);

module.exports = connection;



