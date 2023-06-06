<?php
// Establish database connection
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "blood_donation_project";

$conn = new mysqli($servername, $username, $password, $dbname);

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Get form data
$name = $_POST["name"];
$email = $_POST["email"];
$phone = $_POST["phone"];
$blood_group = $_POST["blood-group"];
$city = $_POST["city"];
$state = $_POST["state"];

// Insert data into donors table
$sql = "INSERT INTO donars (name, email, phone, blood_group, city, state)
        VALUES ('$name', '$email', '$phone', '$blood_group', '$city', '$state')";

if ($conn->query($sql) === TRUE) {
  
header("Location: donar.html"); 

} 


else { echo "Error: " . $sql . "<br>" . $conn->error;
    }

    $conn->close();

    ?>