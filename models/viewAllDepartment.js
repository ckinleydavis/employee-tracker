
function viewAllDepartment(connection, init){
    connection.query("SELECT * FROM department", function(err, empResult){
        if (err) throw err;

        console.table(empResult)
        init();
    });  

}

module.exports = viewAllDepartment;