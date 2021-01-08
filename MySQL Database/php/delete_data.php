<?php
 //create connection & check connection
 $conn = new mysqli("localhost","root","","myDB");
 if($conn->connect_error){
  die("connection failed". $conn->connect_error);
 }
 
 $sql = "DELETE FROM MyGuests WHERE id=23";
 if($conn->query($sql) === TRUE){
  echo "Record deleted successfully";
 }
 else {
  echo "Error deleting record: " . $conn->error;
 }

 $conn->close();
 
?>
