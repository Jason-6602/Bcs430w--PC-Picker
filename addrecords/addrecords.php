<?php 
  require_once 'logindb.php';
 //Testing

  $conn = new mysqli($hn, $un, $pw, $db);
  if ($conn->connect_error) die("Fatal Error");


  //Checks to see if the forms were filled
  if (isset($_POST['firstname'])   &&
      isset($_POST['lastname'])    &&
      isset($_POST['email']) &&
      isset($_POST['status']))
  {
    $firstname   = mysqli_real_escape_string($conn, $_POST['firstname']);
    $lastname    = mysqli_real_escape_string($conn,$_POST['lastname']);
    $email = mysqli_real_escape_string($conn,$_POST['email']);
    $status     = mysqli_real_escape_string($conn,$_POST['status']);
    
    $query    = "INSERT INTO application (firstname,lastname,email,status)
     VALUES('$firstname', '$lastname', '$email', '$status');";
    $result   = $conn->query($query);
    
    if (!$result) echo "INSERT failed<br><br>"; //if unable, throw error
  }

  //Query to display results
  $query  = "SELECT * FROM application";
  $result = $conn->query($query);
  if (!$result) die ("Database access failed");

  $rows = $result->num_rows; //Result of the rows

  //Iterate through the rows and sanitize the input
  //Prevents XSS attacks
  for ($j = 0 ; $j < $rows ; ++$j)
  {
    $row = $result->fetch_array(MYSQLI_NUM);

    $r0 = htmlspecialchars($row[0]);
    $r1 = htmlspecialchars($row[1]);
    $r2 = htmlspecialchars($row[2]);
    $r3 = htmlspecialchars($row[3]);
    $r4 = htmlspecialchars($row[4]);
    
    echo <<<_END
  <pre>
    StudentID: $r0
     FirstName: $r1
     LastName: $r2
     Email:  $r3
     Academic Status: $r4
  </pre>
_END;
  }

  //Close database to free up resources
  $result->close();
  $conn->close();


  
?>