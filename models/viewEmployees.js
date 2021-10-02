// View All Employees Query to DB

function viewEmployees(connection, init){
    connection.query("SELECT * FROM employee", function(err, empResult){
        if(err) throw err;

        console.table(empResult);
        init();
    })
}

module.exports = viewEmployees;