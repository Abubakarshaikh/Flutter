<?php
 $servername = "localhost";
 $username = "root";
 $password = "";
 $dbname = "myDB";
 
 $conn = new mysqli($servername,$username,$password,$dbname);
 
 if($conn->connect_error){
  die("connection failed" . $conn->connect_error);
 }
 
 //access
 $sql = "SELECT id,firstname,lastname FROM MyGuests ORDER BY lastname";
 
 $result = $conn->query($sql);
 
 if($result->num_rows > 0){
  // output data of each row
  while($row = $result->fetch_assoc()) {
    echo "id: " . $row["id"]. " - Name: " . $row["firstname"]. " " . $row["lastname"]. "<br>";
  }
 }
 else {
   echo "0 results";
 }
 
 $conn->close();
?>
