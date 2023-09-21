<table border=1 >
    <tr>
    <th> BCS 350- Capstone Project : Add Records</th>
    </tr>
</table>
<br>
<?php
    // If user is not logged in, return to registration page...
    // Test Test 123
    //

  session_start();
  if(!isset($_SESSION['username'])) {
  echo "You are not logged in, please return to registration page";
  echo"<p><a href='../login/login.html'>Return to Login</a></p>";
  exit;
  }


?>
<ul>
<li><a href="../Menu.html">Main Menu</a></li>
</ul>
    <br>
  
<!--
Text field Forms
-->
<h1> Please fill out the form below: </h1>
<br>
<table>
    <tr>
        <form method="post" action="addrecords.php">
        <td>Enter FirstName </td>
        <td><input type="text" name="firstname" required></td> </tr>
       <tr> <td>Enter LastName: </td>
        <td><input type="text" name="lastname" required></td> </tr>
        <tr><td>Enter Email: </td>
        <td><input type="text" name="email" required></td></tr>
       <tr> <td>Enter Academic status: </td>
        <td><input type="text" name="status" required></td></tr>
       <td> (Freshman, Sophomore, Junior, Senior)</td>
    
      
    </table><br>

<!--
submit form (Insert Record into Database)
-->
<table>

<tr><td><input type="submit" value="Submit Record" /></td>
    </tr>

</form>
</table>    