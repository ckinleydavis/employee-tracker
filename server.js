const mysql = require("mysql2");
const inquirer = require("inquirer");
const viewEmployees = require("./models/viewEmployees");
const viewEmployeeByDepartment = require("./models/viewEmployeeByDepartment");
const viewAllRoles = require("./models/viewAllRoles");
const addEmployee = require("./models/addEmployee");
const addDepartment = require("./models/addDepartment");
const viewAllDepartment = require("./models/viewAllDepartment");
const addRole = require("./models/addRole");
const updateEmployeeRole = require("./models/updateEmployeeRole");
const { exit } = require("process");

const connection = mysql.createConnection({
    host: "localhost",
    user: "root",
    password: "8E!eve-YAH",
    database: "employee_db"
});

connection.connect(function(err){
    if(err) throw err;

    init();
});

function init(){
inquirer.prompt({
    name: "main",
    type: "list",
    message: "What would you like to do?",
    choices: ["View All Employees", "View All Employees by Department", "View All Roles", "Add Employee", "Add Department", "Add Role", "Update Employee Role", "View All Departments", "Quit"]
}).then(function(answer){
    if(answer.main === "View All Employees"){
        viewEmployees(connection, init);
    } else if(answer.main === "View All Employees by Department"){
        viewEmployeeByDepartment(connection, init);
    } else if(answer.main === "View All Roles"){
        viewAllRoles(connection, init);
    } else if(answer.main === "Add Employee"){
        addEmployee(connection, init);
    } else if(answer.main === "Add Department"){
        addDepartment(connection, init);
    } else if(answer.main === "Add Role"){
        addRole(connection, init);
    } else if(answer.main === "Update Employee Role"){
        updateEmployeeRole(connection, init);
    }else if(answer.main === "View All Departments"){
        viewAllDepartment(connection, init);
    } else if(answer.main === "Quit"){
        connection.end();
    }
})
}