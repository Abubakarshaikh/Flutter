<?php
 // Create connection
 $servername = "localhost";
 $username = "root";
 $password = "";
 $db = "myDB";
 
 $conn = new mysqli($servername,$username,$password,$db);
 
 // Check connection
 if($conn->connect_error){
   die("connection failed". $conn->connect_error);
 }
 
 // Insert Data Into MySQL
 $sql = "INSERT INTO MyGuests(firstname, lastname, email)
 VALUES ('abubakar', 'shaikh', 'atifa2019@gmail.com')";
 
 //$conn->query($sql);
 if($conn->query($sql)=== TRUE){
  echo "New record created successfully";
 }
 else {
 echo "Error: " . $sql . "<br>" . $conn->error;
 }
?>
