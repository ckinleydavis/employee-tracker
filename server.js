const mysql = require("mysql2");
const inquirer = require("inquirer");
const viewEmployees = require("./models/viewEmployees");
const viewEmployeeByDepartment = require("./models/viewEmployeeByDepartment");



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
    choices: ["View All Employees", "View All Employees by Department", "Add Employee", "Update Employee Role", "View All Roles", "Add Role", "Quit"]
}).then(function(answer){
    if(answer.main === "View All Employees"){
        viewEmployees(connection, init);
    } else if(answer.main === "View All Employees by Department"){
        viewEmployeeByDepartment(connection, init);
    }
})
}