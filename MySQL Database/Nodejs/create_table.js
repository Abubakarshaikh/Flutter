 // create connection
 var mysql = require("mysql");
 var conn = mysql.createConnection({
  host: "localhost",
  user: "root",
  password: "",
  database:"nodeDB"
 });
 
 // check connection
 conn.connect(function(err){
  if(err) throw err;
  console.log("connect!");
 
 // create database
  var sql = "CREATE TABLE MyGuests(id INT PRIMARY KEY, name VARCHAR(255), email VARCHAR(255))"; 
  conn.query(sql,function(err,result){
   if(err) throw err;
    console.log("Table create successfully");
   });
  });
