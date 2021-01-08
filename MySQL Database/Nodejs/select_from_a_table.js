 // create connection
 var mysql = require('mysql');
 var conn = mysql.createConnection({
  host: "localhost",
  user: "root",
  password: "",
  database:"nodeDB"
 });
 
 // select data from tabel:
 var sql = "SELECT id,name,email FROM MyGuests";
 conn.connect(function(err){
  if(err) throw err;
  conn.query(sql,function(err,result,field){
   if(err) throw err;
   console.log(result);
  });
 });
 
 
