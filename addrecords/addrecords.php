<?php 
  require_once 'logindb.php';

  //Connect to the Database
  $conn = new mysqli($hn, $un, $pw, $db);
  if ($conn->connect_error) die("Fatal Error");


  //Checks to see if the forms were filled
  if (isset($_POST['q1'])   &&
      isset($_POST['q2'])   &&
      isset($_POST['q3']) &&
      isset($_POST['q4']) &&
      isset($_POST['q5']) &&
      isset($_POST['q6']) &&
      isset($_POST['q7']) &&
      isset($_POST['q8']) &&
      isset($_POST['q9']))
  {
    // Set the User's Answers to local variables for processing
    $q1_answer = isset($_POST['q1']) ? $_POST['q1'] : null;
    $q2_answer = isset($_POST['q2']) ? $_POST['q2'] : null;
    $q3_answer = isset($_POST['q3']) ? $_POST['q3'] : null;
    $q4_answer = isset($_POST['q4']) ? $_POST['q4'] : null;
    $q5_answer = isset($_POST['q5']) ? $_POST['q5'] : null;
    $q6_answer = isset($_POST['q6']) ? $_POST['q6'] : null;
    $q7_answer = isset($_POST['q7']) ? $_POST['q7'] : null;
    $q8_answer = isset($_POST['q8']) ? $_POST['q8'] : null;
    $q9_answer = isset($_POST['q9']) ? $_POST['q9'] : null;


    echo "Thank you for Using the PC Part Picker Tool! Here are your answers: <br>";
    echo "Question 1 : $q1_answer <br>";
    echo "Question 2 : $q2_answer <br>";
    echo "Question 3 : $q3_answer <br>";
    echo "Question 4 : $q4_answer <br>";
    echo "Question 5 : $q5_answer <br>";
    echo "Question 6 : $q6_answer<br>";
    echo "Question 7 : $q7_answer<br>";
    echo "Question 8 : $q8_answer<br>";
    echo "Question 9 : $q9_answer<br>";




     //Display the answers that the user chose (Will be used for testing)



    /*
    SYNTAX for inserting into a table
    $query    = "INSERT INTO tablename (field,field,field)
     VALUES('$firstname', '$lastname', '$email', '$status');";

     //Connect to a mysqldatabase
    $result   = $conn->query($query);

    - How to throw an error if your query doesnt work
    if (!$result) echo "INSERT failed<br><br>"; //if unable, throw error
     */
  }

    // Process User Survey here
    // Need to create PseudoCode for user survey

/*
  //Query to display results from a table
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
*/

/*
  //Close database to free up resources
  $result->close();
  $conn->close();
*/

  
?>