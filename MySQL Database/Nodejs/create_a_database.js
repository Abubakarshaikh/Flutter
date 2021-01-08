 var mysql = require('mysql');
 var conn = mysql.createConnection({
 host: "localhost",
 user: "root",
 password:"",
 });
 
 conn.connect(function(err){
 if(err) throw err;
 console.log("connect!");
  conn.query("CREATE DATABASE nodeDB",function(err,result){
   if(err) throw err;
   console.log("New database created! ");
  });
 });
