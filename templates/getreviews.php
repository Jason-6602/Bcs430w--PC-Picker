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

// Fetch reviews from the database
$sql = "SELECT * FROM reviews";
$result = $conn->query($sql);

$reviews = array();

if ($result->num_rows > 0) {
    // Output data of each row
    while ($row = $result->fetch_assoc()) {
        $reviews[] = array(
			'first_name' => $row['first_name'],
			'last_name' => $row['last_name'],
            'email' => $row['email'],
            'rating' => $row['rating'],
            'comments' => $row['comments'],
            'date' => $row['submission_date']
        );
    }
}

// Close connection
$conn->close();

// Send reviews as JSON response
header('Content-Type: application/json');
echo json_encode($reviews);
?>
