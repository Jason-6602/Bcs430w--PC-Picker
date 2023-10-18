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
$stmt = $conn->prepare("INSERT INTO reviews (name, email, rating, comments) VALUES (?, ?, ?, ?)");
$stmt->bind_param("ssis", $name, $email, $rating, $comments);

 //Set parameters
 $name = $_POST['name'];
 $email = $_POST['email'];
 $rating = $_POST['rating'];
 $comments = $_POST['comments'];



// Output values for debugging
var_dump($name, $email, $rating, $comments);

// Execute statement and handle errors
if ($stmt->execute()) {
    echo "Review submitted successfully!";
} else {
    echo "Error: " . $stmt->error;
}

// Close connection
$conn->close();
?>
