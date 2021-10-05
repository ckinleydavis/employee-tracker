// Add New Role Query to DB

function addRole(connect, init){
    connection.query("", function(err, empResult){
        if(err) throw err;

        console.table(empResult);
        init();
    })
}