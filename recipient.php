
<!DOCTYPE html>

<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Donar</title>
</head>

<body>


<?php


  if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    // Retrieve search parameters from form
    $blood_group = $_POST['blood-group'];
    $city = $_POST['city'];
    $state = $_POST['state'];
//    $pincode = $_POST['pincode'];

    // Connect to database
    $host = 'localhost';
    $user = 'root';
    $password = '';
    $database = 'blood_donation_project';
    $conn = mysqli_connect($host, $user, $password, $database);

    // Check connection
    if (!$conn) {
      die('Connection failed: ' . mysqli_connect_error());
    }

    // Construct SQL query
    $sql = "SELECT * FROM donars WHERE blood_group='$blood_group' AND city='$city' AND state='$state'";
    $result = mysqli_query($conn, $sql);

    // Check if any results were found
    if (mysqli_num_rows($result) > 0) {
      // Output results in table
      echo "<div class='recipient-results'>";
      echo "<h3>Search Results</h3>";
      echo "<table>";
      echo "<tr><th>Name</th><th>Email</th><th>Phone</th><th>Blood Group</th><th>City</th><th>State</th><th>";
      while($row = mysqli_fetch_assoc($result)) {
        echo "<tr><td>".$row["name"]."</td><td>".$row["email"]."</td><td>".$row["phone"]."</td><td>".$row["blood_group"]."</td><td>".$row["city"]."</td><td>".$row["state"]."</td><td>";
      }
      echo "</table>";
      echo "</div>";
    } else {
      // No results found
      echo "<div class='recipient-results'>";
      echo "<h3>Search Results</h3>";
      echo "<p>No results found.</p>";
      echo "</div>";
    }

    // Close connection
    mysqli_close($conn);
  }
?>

</body>

</html>
