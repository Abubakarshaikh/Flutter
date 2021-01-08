<?php
 // Create connection:
 $servername = "localhost";
 $username = "root";
 $password = "";
 
 $conn = new mysqli($servername, $username, $password);
 
 if($conn -> connect_error){
  die("connection failed". $conn->connect_error);
 }
 
 // Create database:
 $sql = "CREATE DATABASE test2";
 
 if($conn -> query($sql) === TRUE){
  echo "Database created successfully";
 } 
 else {
  echo "Error creating database: " . $conn->error;
  }
 
 $conn->close();

?>
