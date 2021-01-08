<?php
 $servername = "localhost";
 $username = "username";
 $password = "";
 
 // Create connection
 $con = new mysqli($servername,$username,$password);
 
 if($con->connect_error){
   die("Connection failed: ".$conn->connect_error);
 }
 
 echo "Connect successfully";
?>
