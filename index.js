const inquirer = require("inquirer");
const connection = require('.db/server.js');
const cTable = require('console.table')

function start(){
    inquirer
        .prompt({
            name: "action",
            type: "list",
            message: "What would you like to do?",
            choices: [
                "View all employees",
                "View all employees by department",
                "View all employees by manager",
                "Add employee",
                "Remove employee",
            ]
        })
}