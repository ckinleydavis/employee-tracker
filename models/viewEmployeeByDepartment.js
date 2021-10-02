// Querying DB to get employees organized by their department id's

function viewEmployeeByDepartment(connection, init){
    connection.query("SELECT employee.first_name, employee.last_name, department.name FROM employee INNER JOIN role ON role.id = employee.role_id INNER JOIN department ON department.id = role.department_id", function(err, empResult){

        if(err) throw err;

    console.table(empResult) 
    init();

    })
}

module.exports = viewEmployeeByDepartment;