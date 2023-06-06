<?php

require_once "config.php";
if(!mysqli_select_db($link, 'blood_donation_project')){
    echo 'Database is not connected';
}

// Get the form data
$name = $_POST['name'];
$email = $_POST['email'];
$phone = $_POST['phone'];
$bloodGroup = $_POST['blood-group'];
$city = $_POST['city'];
$state = $_POST['state'];

$sql = "UPDATE donars SET name='$name', email='$email', phone='$phone', blood_group='$bloodGroup', city='$city', state='$state' WHERE email='$email'";

if ($link->query($sql) === TRUE) {
 
  header("Location: updatedonor.html"); 
} else {
  echo 'Error updating donor information: ' . $link->error;
}

$link->close();
?>