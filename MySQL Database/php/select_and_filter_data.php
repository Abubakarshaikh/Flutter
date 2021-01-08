<html>
</body>
<?php
 // Connection database:
 $servername = "localhost";
 $username = "root";
 $password = "";
 $dbname = "myDB";
 
 $conn = new mysqli($servername,$username,$password,$dbname);
 
 // check database:
 if($conn->connect_error){
  die("connection failed" . $conn->connect_errro);
 }
 
 $sql = "SELECT id,firstname,lastname,email FROM MyGuests WHERE lastname='moe' ";
 $result = $conn->query($sql);
 
 // ** The fetch_assoc() / mysqli_fetch_assoc() function fetches a result row as an associative array.
 if($result -> num_rows > 0){
  while($row = $result->fetch_assoc()){
    echo "id: " . $row["id"]. " - Name: " . $row["firstname"]. " " . $row["lastname"]. "<br>";
  }
 }
 else {
   echo "0 results";
 }
 $conn->close();
?>

</body>
</html>
