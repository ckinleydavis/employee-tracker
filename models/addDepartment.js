// Add New Department Query to DB
const inquirer = require("inquirer")

function addDepartment(connection, init){
    inquirer.prompt([
        {
            type: "input",
            name: 'name',
            message: "What is the name of the department you want to add?"
        }
    ]).then(response =>{
        let departmentName = response;
        connection.query("INSERT INTO department SET ?", departmentName, function(err){
            if(err) throw err;
    
            console.log(`Inserted ${departmentName.name} into the database.`)
            init();
        })
    }) 
   
}

module.exports = addDepartment;