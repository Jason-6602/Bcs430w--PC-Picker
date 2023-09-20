<?php  
      // Capstone- Jason Vasquez-BCS350- I certify that this is my own original work
      //testlogin123 -Mytest123
      
     
      session_start();
    
      if (isset($_SESSION['username']))
      {
        $username = $_SESSION['username'];
        $surname  = $_SESSION['password'];
    
        destroy_session_and_data();
        echo htmlspecialchars("User: $username");
        echo " You have been successfully logged out... Please return to login page <p><a href='../login/login.html'>Return to Login</a></p>";
      }else echo " You are not logged in... Please return to login pagee <p><a href='../login/login.html'>Return to Login</a></p>";

      
      function destroy_session_and_data()
      {
        $_SESSION = array();
        setcookie(session_name(), '', time() - 2592000, '/');
        session_destroy();
      }
  
?>
