<?php
  if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    // Retrieve search parameters from form
    $blood_group = $_POST['blood-group'];
    $city = $_POST['city'];
    $state = $_POST['state'];

    // Connect to database
    require_once "config.php";

    // Construct SQL query
    $sql = "SELECT * FROM donars WHERE blood_group='$blood_group' AND city='$city' AND state='$state'";
    $result = mysqli_query($link, $sql);

    // Check if any results were found
    if (mysqli_num_rows($result) > 0) {
      // Output results in table
      echo "<table>";
      echo "<tr><th>Name</th><th>Email</th><th>Phone</th><th>Blood Group</th><th>City</th><th>State</th><th>";
      while($row = mysqli_fetch_assoc($result)) {
        echo "<tr><td>".$row["name"]."</td><td>".$row["email"]."</td><td>".$row["phone"]."</td><td>".$row["blood_group"]."</td><td>".$row["city"]."</td><td>".$row["state"]."</td><td>";
      }
      echo "</table>";
    } else {
      // No results found
      echo "<p>No results found.</p>";
    }

    // Close connection
    mysqli_close($link);
  }
?>
