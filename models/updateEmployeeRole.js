// Update Employee Role Query to DB
const inquirer = require("inquirer")
const viewEmployees = require("./viewEmployees");
const viewAllRoles = require("./viewAllRoles");

async function updateEmployeeRole(connection, init){
    await connection.promise().query("SELECT * FROM employee", function(err, empResponse){
        console.log("response", empResponse);
    })
    .then(([rows])=>{
        let employees = rows;
        const employeeChoices = employees.map(({id, first_name, last_name})=>({
            name: `${first_name} ${last_name}`,
            value: id
        }));
        inquirer.prompt([
            {
                type: "list",
                name:"employeeId",
                message: "Which employees role do you want to update?",
                choices: employeeChoices
            }
        ]).then(empResponse => {
            let employeeId = empResponse.employeeId;
            connection.query("SELECT role.title FROM role ORDER BY role.title ASC", function(err, roleResponse){
                console.log("response", roleResponse);
            })
            .then(([rows])=>{
                let roles = rows;
                const roleChoices = roles.map(({id, title})=>({
                    name: title,
                    value: id
                }))
                inquirer.prompt([
                    {
                        type: "list",
                        name: "roleId",
                        message: "Which role do you want to assign the employee to?",
                        choices: roleChoices
                    }
                ]).then(roleResponse => {
                    let roleId = roleResponse.roleId;
                    console.log("EmPLOYEE AND ROLE ID", roleId, "EMP ID", employeeId);
                    connection.query("UPDATE employee SET role_id = ? WHERE id = ?",[roleId, employeeId], function(err){
                        if(err) throw err;
                
                        console.log("Updated employees Role!");
                        init();
                    })
                })
            })
        })
    })
}

module.exports = updateEmployeeRole;