<?php  


      require_once 'logindb.php';
      $connection = new mysqli($hn, $un, $pw, $db);
 
      if ($connection->connect_error) die("Unable to Connect to database"); // database connection

  $username = $password =  "";

  //Fix_String used to sanitize user input . 

  if (isset($_POST['username']) && isset($_POST['password'])){

    $username = mysql_fix_string($connection,$_POST['username']);
    $password  = mysql_fix_string($connection,$_POST['password']);
    $query   = "SELECT * FROM user WHERE user_name='$username'";
    $result  = $connection->query($query);

    if (!$result) die("User not found");
    elseif ($result->num_rows)
    {
      $row = $result->fetch_array(MYSQLI_NUM);

      $result->close();

      if (password_verify($password, $row[4]))   {
        session_start();
        $_SESSION['username'] = $row[5];
        $_SESSION['password']= $row[4];
        echo htmlspecialchars("You are now logged in as '$row[1]' '$row[2]' ");
        die("<p><a href='../home/index.html'>Click here to continue</a></p>");
      }
      else echo("Invalid username/password combination");
      echo"<p><a href='login.html'>Return to Login</a></p>";
      
    }
    else echo("Invalid username/password combination");
    echo"<p><a href='login.html'>Return to Login</a></p>";
  }
  else
  {
    header('WWW-Authenticate: Basic realm="Restricted Area"');
    header('HTTP/1.0 401 Unauthorized');
    die ("Please enter your username and password");
  }

  $connection->close();

  function mysql_entities_fix_string($connection, $string)
  {
    return htmlentities(mysql_fix_string($connection, $string));
  }	

  function mysql_fix_string($connection, $string)
  {
    if (get_magic_quotes_gpc()) $string = stripslashes($string);
    return $connection->real_escape_string($string);
  }




 
  
 
?>
