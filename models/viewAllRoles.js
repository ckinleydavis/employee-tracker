// View Alll Roles Query to DB

function viewAllRoles(connection, init){
    connection.query("SELECT role.title FROM role ORDER BY role.title ASC", function(err, empResult){
        if(err) throw err;

        console.table(empResult);
        init();
    })
}

module.exports = viewAllRoles;