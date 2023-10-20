<?php  

      //Changing the test comment again
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
    else {
		echo <<<_END
		
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

		<div class="login">
		<table class="signup" border="0" cellpadding="2" cellspacing="5">
		<th colspan="2" align="center">Incorrect Username/Password Combination!</th>
		<form method="post" action="login.php">
		<tr><td>Username</td>
		<td><input type="text" maxlength="32" name="username"></td></tr>
		<tr><td>Password</td>
		<td><input type="password" maxlength="12" name="password"></td></tr>
		<tr><td colspan="2" align="center"><input type="submit" value="Login"></td></tr>
		</form>
		</table>
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
	}
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
