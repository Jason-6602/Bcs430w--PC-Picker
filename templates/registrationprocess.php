<?php
require_once 'logindb.php';


// Create connection to database
$connection = new mysqli($hn, $un, $pw, $db);

// Check connectivity ... if unable to connect throw an error
if ($connection->connect_error) {  die("Unable to Connect to database: ");
}


//PHP FUNCTIONS FOR FORM VALIDATION

function validate_username($field)
  {
    if ($field == "") return "No Username was entered<br>";
    else if (strlen($field) < 5)
      return "Usernames must be at least 5 characters<br>";
    else if (preg_match("/[^a-zA-Z0-9_-]/", $field))
      return "Only letters, numbers, - and _ in usernames<br>";

      //Verify that username isnt already taken
      if (isset($_POST['user_name'])){
      $username = fix_string($_POST['user_name']);

      //Connect to database
      $hn = 'localhost';
      $db = 'bcs430w';
      $un = 'root';
      $pw = 'mysql';
      $connection = new mysqli($hn, $un, $pw, $db);


      // Handle Database Connectivity Issue
      if ($connection->connect_error){
      die("Unable to connect to database");
      }


      $query= "Select * from user WHERE user_name= ?";

      //Prepared statements prevent SQL Injection
      $result= $connection->prepare($query);

      if($result){
      $result->bind_param('s', $username);
      $result->execute();
      $result->store_result();
      }else{
      die("Prepare failed: (" . $connection->errno . ") " . $connection->error);

       }


      if($result->num_rows > 0) {
		$result->close();
		$connection->close();
		echo <<<_END
<!DOCTYPE html>
<html lang="en">
<head>
<title>PC Parts Picker Tool</title>
<meta charset="utf-8">
<link rel="stylesheet" href="css/styles.css">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href="https://fonts.googleapis.com/css?family=Francois+One|Roboto+Slab&display=swap" rel="stylesheet">
</head>
<body>

<div id="container">

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

<div class="createaccount">
<form action="registrationprocess.php" method="post">
<h2>That Username Already Exists!</h2>
<label for="first_name">First Name:</label>
<input type="text" id="first_name" name="first_name" required><br>

<label for="last_name">Last Name:</label>
<input type="text" id="last_name" name="last_name" required><br>

<label for="email">Email:</label>
<input type="email" id="email" name="email" required><br>

<label for="password">Password:</label>
<input type="password" id="password" name="password" required><br>

<label for="user_name">Username:</label>
<input type="text" id="user_name" name="user_name" required><br>

<input class="submitbutton" type="submit" value="Register">
</form>

<script>
window.onload = function() {
document.getElementById('password').value = '';
};
</script>
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
      //header("location:CreateAccount.html");
      exit;
      }
      //Free up Memory Resources
      $result->close();
      $connection->close();
      }

    // If everything is fine return null
    return null;
  }


function validate_password($field)
  {
    if ($field == "") return "No Password was entered<br>";
    else if (strlen($field) < 6)
      return "Passwords must be at least 6 characters<br>";
    else if (!preg_match("/[a-z]/", $field) ||
             !preg_match("/[A-Z]/", $field) ||
             !preg_match("/[0-9]/", $field))
      return "Passwords require 1 each of a-z, A-Z and 0-9<br>";
    return "";
  }

  function validate_confirm($field){
    if (isset($_POST['password']))
    $password  = fix_string($_POST['password']);
    if($field != $password) return "Passwords do not match";
    else if (strlen($field)<6) return "Password must be at least 6 characters";
    return "";
  }

  function validate_email($field)
  {
    if ($field == "") return "No Email was entered<br>";
      else if (!((strpos($field, ".") > 0) &&
                 (strpos($field, "@") > 0)) ||
                  preg_match("/[^a-zA-Z0-9.@_-]/", $field))
        return "The Email address is invalid<br>";
    return "";
  }

  //Protects against Injection attacks
  function fix_string($string)
  {
    if (get_magic_quotes_gpc()) $string = stripslashes($string);
    return htmlentities ($string);
  }

  function add_user($connection, $first_name, $last_name, $email, $password, $username)
  {
    $stmt = $connection->prepare('INSERT INTO user (first_name, last_name, email, password, user_name) VALUES(?,?,?,?,?)');

     //Check for errors in the prepare statement
     if (!$stmt) {
     die("Prepare failed: (" . $connection->errno . ") " . $connection->error);
        }


    // bind_param -> Binds parameters to the SQL query and tells the database what the paramaters are: 'sss' = 3 string values
    $stmt->bind_param('sssss', $first_name, $last_name, $email, $password, $username);
    // Check for errors in bind_param
    if (!$stmt) {
    die("Bind failed: (" . $stmt->errno . ") " . $stmt->error);
        }
    $stmt->execute();

    // Check for errors in execute
        if (!$stmt) {
        die("Execute failed: (" . $stmt->errno . ") " . $stmt->error);
        }
    $stmt->close();
  }

    function validateFirstName($first_name) {
    // Check if the first name is non-empty
    if (empty($first_name)) {
        return "First name is required.";
    }

    // Check if the first name contains only letters
    if (!preg_match("/^[a-zA-Z]+$/", $first_name)) {
        return "First name should contain only letters.";
    }
    return null;
}

function validateLastName($last_name) {
    // Check if the last name is non-empty
    if (empty($last_name)) {
        return "Last name is required.";
    }

    // Check if the last name contains only letters
    if (!preg_match("/^[a-zA-Z]+$/", $last_name)) {
        return "Last name should contain only letters.";
    }
    return null;
}


// ---- END OF FUNCTION DECLARATION ------

// Fetch user input from the form
//Use Fix_String to sanitize user input before storing into database

// ------ FORM PROCESSING -----------

if (isset($_POST['first_name']))
    $first_name = fix_string($_POST['first_name']);
  if (isset($_POST['last_name']))
    $last_name  = fix_string($_POST['last_name']);
  if (isset($_POST['email']))
    $email = fix_string($_POST['email']);
  if (isset($_POST['password']))
   $password  = fix_string($_POST['password']);
   if (isset($_POST['user_name']))
      $username  = fix_string($_POST['user_name']);

  $fail = validate_username($username);
  $fail .= validate_password($password);
  $fail .= validate_email($email);
  $fail .= validateFirstName($first_name);
  $fail .= validateLastName($last_name);

  if ($fail == "")
    {
		echo <<<_END
<!DOCTYPE html>
<html lang="en">
<head>
<title>PC Parts Picker Tool</title>
<meta charset="utf-8">
<link rel="stylesheet" href="css/styles.css">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href="https://fonts.googleapis.com/css?family=Francois+One|Roboto+Slab&display=swap" rel="stylesheet">
</head>
<body>

<div id="container">

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

<div class="createaccount">
<div>
<h2>Success! Account Created!</h2>
<h3>Name: $first_name $last_name</h3>
<h3>Username: $username</h3>
<h3>Email: $email</h3>

<h3><a href="login.html">Click Here To Login!</a></h3>
</div>
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

// Hash the password for security
$hashed_password = password_hash($password, PASSWORD_DEFAULT);

//Check if you are unable to connect to database
 if ($connection->connect_error) die("Unable to Connect to database");

// Insert user data into the database
add_user($connection, $first_name, $last_name, $email, $hashed_password, $username);
die("User added?");
}

else {
	echo $fail;
}
// Close the database connection
$connection->close();
?>
