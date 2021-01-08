<?php
 // create connection
 $servername = "localhost";
 $username = "root";
 $password = "";
 $db = "myDB";
 
 $conn = new mysqli($servername,$username,$password,$db);
 
 // check connection
 if($conn->connect_error){
  die("connection failed " . $conn->connect_error);
 }
 
 // prepare and bind
 $stmt = $conn->prepare("INSERT INTO MyGuests(firstname, lastname, email)
 VALUES (?, ?, ?)"); 
 
 // bind
 $stmt->bind_param("sss",$firstname, $lastname, $email);
 
 // set parameters
 $firstname = "abubakar";
 $lastname = "shaikh";
 $email = "abubakar@example.com";
 $stmt->execute();
 
 $firstname = "osman";
 $lastname = "shaikh";
 $email = "osman@gmail.com";
 $stmt->execute();
 
 $firstname = "umar";
 $lastname = "shaikh";
 $email = "umar@example.com";
 $stmt->execute();
 
 echo "New records created successfully";
 
 $stmt->close();
 $conn->close();
?>
