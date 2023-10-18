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

// Get form data
$name = $_POST['name'];
$email = $_POST['email'];
$rating = $_POST['rating'];
$comments = $_POST['comments'];

// Insert review into the database
$sql = "INSERT INTO reviews (name, email, rating, comments) VALUES ('$name', '$email', $rating, '$comments')";

if ($conn->query($sql) === TRUE) {
    echo "Review submitted successfully!";
} else {
    echo "Error: " . $sql . "<br>" . $conn->error;
}

// Close connection
$conn->close();
?>
