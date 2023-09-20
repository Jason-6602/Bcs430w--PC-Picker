<?php  
      // Capstone- Jason Vasquez-BCS350- I certify that this is my own original work
      // testing commit to githhub
      require_once 'logindb.php';
      $connection = new mysqli($hn, $un, $pw, $db);
 
      if ($connection->connect_error) die("Unable to Connect to database"); // database connection

  $username = $password = $confirm = $email = "";

  //Fix_String used to sanitize user input before storing into database. 

  if (isset($_POST['username']))
    $username = fix_string($_POST['username']);
  if (isset($_POST['password']))
    $password  = fix_string($_POST['password']);
  if (isset($_POST['confirm']))
    $confirm = fix_string($_POST['confirm']);
  if (isset($_POST['email']))
    $email    = fix_string($_POST['email']);

  $fail = validate_username($username);
  $fail .= validate_password($password);
  $fail .= validate_confirm($confirm);
  $fail .= validate_email($email);

  echo "<!DOCTYPE html>\n<html><head><title>User Signup form</title></head>";

  if ($fail == "")
  {
    echo "<!DOCTYPE html><body><pre>Form data successfully validated:
     Username: $username
     Password: $password
     Email: $email</pre></body></html>";

    $hash   = password_hash($password, PASSWORD_DEFAULT);

    // Enter database and insert user information.
    // hash encrypt password before inserting into database, no plain text!
    add_user($connection, $username, $hash, $email);


    if ($connection->connect_error) die("Unable to Connect to database");

	exit;
  }

  // The PHP functions

 
  
  function validate_username($field)
  {
    if ($field == "") return "No Username was entered<br>";
    else if (strlen($field) < 5)
      return "Usernames must be at least 5 characters<br>";
    else if (preg_match("/[^a-zA-Z0-9_-]/", $field))
      return "Only letters, numbers, - and _ in usernames<br>";
      
      //Verify that username isnt already taken
      if (isset($_POST['username']))
      $username = fix_string($_POST['username']);

      //Connect to database
      $hn = 'localhost';
      $db = 'bcs350sp23';
      $un = 'root';
      $pw = 'mysql';
      $connection = new mysqli($hn, $un, $pw, $db);

      $query= "Select * from users WHERE username= '$username'";

      $result   = $connection->query($query);
      $rows = $result->num_rows;

      if($result->num_rows > 0) {
      echo "Username already exists!: Please try again";
      header("location:adduserform.html");
      }
      // Free up memory resources
      
    return "";		
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
  
  function fix_string($string)
  {
    if (get_magic_quotes_gpc()) $string = stripslashes($string);
    return htmlentities ($string);
  }

  function add_user($connection, $username, $password, $email)
  {
    $stmt = $connection->prepare('INSERT INTO users VALUES(?,?,?)');
    // bind_param -> Binds parameters to the SQL query and tells the database what the paramaters are: 'sss' = 3 string values
    $stmt->bind_param('sss', $username, $password, $email);
    $stmt->execute();
    $stmt->close();
  }
?>
