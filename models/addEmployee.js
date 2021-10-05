// Add New Employee Query to DB

function addEmployee(connect, init){
    connection.query("", function(err, empResult){
        if(err) throw err;

        console.table(empResult);
        init();
    })
}