<?php
// Establish database connection
require_once "config.php";
// Get form data
$name =$_POST["name"];
$email =$_POST["email"];
$comments =$_POST["comments"];


// Insert data into donors table
$sql = "INSERT INTO comment (name, email, comments)
        VALUES ('$name', '$email', '$comments')";

if ($conn->query($sql) === TRUE) {
//    echo "<script> swal('Good job!, Donor Information Update!, successfully'); </script>";

header("Location: aboutus.html"); 

} 
else { echo "Error: " . $sql . "<br>" . $conn->error;
    }

    $conn->close();

    ?>