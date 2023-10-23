<?php
$host = "localhost";
$username = "root";
$password = "mysql";
$database = "bcs430w";

// Create connection
$conn = new mysqli($host, $username, $password, $database);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}



// Prepare and bind
$stmt = $conn->prepare("INSERT INTO reviews (first_name,last_name, email, rating, comments) VALUES (?, ?, ?, ?,?)");
$stmt->bind_param("sssis", $first_name,$last_name, $email, $rating, $comments);

 //Set parameters
 $first_name = $_POST['first_name'];
 $last_name = $_POST['last_name'];
 $email = $_POST['email'];
 $rating = $_POST['rating'];
 $comments = $_POST['comments'];



// Output values for debugging
var_dump($first_name,$last_name, $email, $rating, $comments);

// Execute statement and handle errors
if ($stmt->execute()) {
    echo <<<_END
	
<!DOCTYPE html>
<html lang="en">
<head>
<title>SelectSpec</title>
<meta charset="utf-8">
<link rel="stylesheet" href="css/styles.css">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href="https://fonts.googleapis.com/css?family=Francois+One|Roboto+Slab&display=swap" rel="stylesheet">
</head>
<body>

<header>
<a href="index.html"><img src="../resources/companylogo.png" alt="PC Parts Logo"></a>
</header>

<nav>
<ul>
<li><a href="index.html">Home</a></li>
<li><a href="addrecordsform.html">PC Part Tool</a></li>
<li><a href="userreviews.html">Leave a Review!</a></li>
<li><a href="">About Us</a></li>
<li><a href="">Contact Us</a></li>
<li><a href="createaccount.html">Create New Account</a></li>
<li><a href="login.html">Login</a></li>
</ul>
</nav>

<div id="hero-img" class="tablet-desktop">
<!-- Empty -->
</div>

<main>
<div class="form-container">
<h2>Your review has been submitted, thank you for your feedback!</h2>
</div>
</main>

<footer>
<p>&copy; Copyright 2021. All Rights Reserved.</p>
<p><a href="mailto:pcparts@picker.com">PCparts@picker.com</a><p>
</footer>

</div>

</body>
</html>
	
_END;

} else {
    echo "Error: " . $stmt->error;
}

// Close connection
$conn->close();
?>
