

 var mysql = require('mysql');
 var conn = mysql.createConnection({
  host: "localhost",
  user: "root",
  password: "",
  database: "nodeDB"
 });
 
 // Insert single Record:
 // var sql = "INSERT INTO MyGuests(id,name,email) VALUES(1,'abubakare','atifa2019@gmail.com')";
 
 // Insert Multiple Records:
 var sql = "INSERT INTO MyGuests(id,name,email) VALUES ?";
 
 var values = [
  [2,"usman","usman@gmail.com"],
  [3,"omar","omar@gmail.com"],
  [4,"zubair","zubair@gmail.com"],
  [5,"ali","ali@gmail.com"],
  [6,"abdullah","abdullah@gmail.com"],
 ];
 
 conn.connect(function(err){
  if(err) throw err;
  
  conn.query(sql, [values],function(err){
   if(err) throw err;
   console.log("Data insert into database");
  });
 });
