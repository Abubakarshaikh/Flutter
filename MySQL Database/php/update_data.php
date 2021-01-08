<?php
 $servername = "localhost";
 $username = "root";
 $password = "";
 $dbname = "myDB";
 
 $conn = new mysqli($servername,$username,$password,$dbname);
 if($conn->connect_error){
  die("connection failed " . $conn->connect_error);
 }
 
 $sql ="UPDATE MyGuests SET firstname='faheem uz zaman', lastname='pathan', email='faheemuzzaman@exaple.com' WHERE id=11";
 
 
 if($conn->query($sql) === TRUE){
  echo "Update data Succesfully";
 }
 else {
  echo "something wrong " . $conn->error;
 }
 
 $conn->close();
?>
