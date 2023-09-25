<table border=1 >
    <tr>
    <th> BCS 430W PC Part Picker User Survey</th>
    </tr>
</table>
<br>
 <link rel="stylesheet" type="text/css" href="SurveyStyle.css">
<?php
    // If user is not logged in, return to registration page...

    //Testing new branch

  session_start();
  if(!isset($_SESSION['username'])) {
  echo "You are not logged in, please return to registration page";
  echo"<p><a href='../login/login.html'>Return to Login</a></p>";
  exit;
  }


?>
<body>
<p>Click the Button Below to return to the Main Menu</p>
<a href="../Menu.html">Main Menu</a>
</body>

    <br>
  
<!--
Text field Forms - Need to add user survey to find out what kind of PC they require
-->
<h1> Please fill out the Survey below: </h1>
<br>

    <tr>
        <form method="post" action="addrecords.php">

        <fieldset>
                            <legend>What is your Spending Budget to buy a computer?</legend>
                          <p>
                           We’ll do our best to find the best matching computer for the price you’re looking for.
                          </p>

                            <label>
                                <input type="radio" name="q1" value="200$"> My budget is 200$, or less.
                            </label>
                            <br>
                            <label>
                                <input type="radio" name="q1" value="500$"> My budget is 500$, or less.
                            </label>
                            <br>
                            <label>
                                <input type="radio" name="q1" value="1000$"> My budget is 1000$, or less.
                            </label>
                            <br>
                            <label>
                                <input type="radio" name="q1" value="1500$"> My budget is 1500$, or less.
                            </label>
                            <br>
                            <label>
                            <input type="radio" name="q1" value="NoBudget"> I Don't have a limit on my budget.
                           </label>
                        </fieldset>

         <fieldset>
                    <legend>Do you Travel often? Or would a desktop home PC suffice?</legend>
                    <label>
                        <input type="radio" name="q2" value="TravelOften"> Yes, I travel often and work on the go!
                    </label>
                    <br>
                    <label>
                        <input type="radio" name="q2" value="DoesntTravel"> No, I don't leave my house often.
                    </label>
                    <br>
                    <label>
                        <input type="radio" name="q2" value="portableDesktop"> I prefer a desktop that is portable!
                    </label>
                    <br>
                    <label>
                        <input type="radio" name="q2" value="laptop"> I prefer a laptop, it makes life easier!
                    </label>
                </fieldset>




        <fieldset>
                            <legend>Do you plan on playing Video Games with this computer</legend>
                            <label>
                                <input type="radio" name="q3" value="YesGames"> Yes, I play many different games!
                            </label>
                            <br>
                            <label>
                                <input type="radio" name="q3" value="NoGames"> No, I don't play games at all.
                            </label>
                            <br>
                            <label>
                                <input type="radio" name="q3" value="LightGaming"> Yes, but I don't play frequently.
                            </label>
                            <br>
                            <label>
                                <input type="radio" name="q3" value="PossibleGaming"> Maybe in the future.
                            </label>
                        </fieldset>

                        <fieldset>
                            <legend>If you play games, what kind of Gamer are you?</legend>
                            <label>
                                <input type="radio" name="q3" value="YesGames">  MUST HAVE EXTREME EVERYTHING
                            </label>
                            <br>
                            <label>
                                <input type="radio" name="q3" value="NoGames"> I want a Virtual Reality ready PC
                            </label>
                            <br>
                            <label>
                                <input type="radio" name="q3" value="LightGaming"> Casual gamer who wants to play the latest games
                            </label>
                            <br>
                            <label>
                                <input type="radio" name="q3" value="PossibleGaming">   I only play Minecraft or classic games
                            </label>
                             <br>
                            <label>
                                <input type="radio" name="q3" value="PossibleGaming">   I don't play games.
                            </label>
                        </fieldset>

                        <fieldset>
                            <legend>Do you stream video games or other media online?</legend>
                            <label>
                                <input type="radio" name="q4" value="YesStreaming"> Yes, I plan on streaming in Hi-def.
                            </label>
                            <br>
                            <label>
                                <input type="radio" name="q4" value="NoGames"> No, I wont stream games or anything like that.
                            </label>
                            <br>
                            <label>
                                <input type="radio" name="q4" value="LightGaming"> I stream, but it doesn't have to be in hi-def.
                            </label>
                          
                        </fieldset>

        <fieldset>
                            <legend>Do you plan on streaming High-Definition movies or shows</legend>
                            <label>
                                <input type="radio" name="q5" value="YesMedia"> Yes, I prefer to watch in Hi-Def.
                            </label>
                            <br>
                            <label>
                                <input type="radio" name="q5" value="NoMedia"> No, I won't watch media on this computer.
                            </label>
                            <br>
                            <label>
                                <input type="radio" name="q5" value="LightMedia"> I will watch Movies and Shows, but it doesn't need to be Hi-Def.
                            </label>
                            <br>
                            <label>
                                <input type="radio" name="q5" value="PossibleMedia"> Maybe in the future.
                            </label>
                        </fieldset>


        <fieldset>
                            <legend>Will this PC be for company usage or for Schoolwork purposes? (Microsoft Applications? - Excel, Word, PPT?)</legend>
                            <br>
                            <label>
                                <input type="radio" name="q6" value="YesMicrosoft"> This PC will be used for Document Writing and browsing the web only.
                            </label>
                            <br>
                            <label>
                                <input type="radio" name="q6" value="NoMicrosoft"> No, this is a personal computer.
                            </label>

                            <br>
                            <label>
                                <input type="radio" name="q6" value="PossibleMicrosoft"> This PC will be used for Programming or Engineering Software.
                            </label>

                            <br>
                            <label>
                                <input type="radio" name="q6" value="PossibleMicrosoft"> This PC will be used for Audio production, video production, art and photo editing and design
                            </label>
                        </fieldset>

        <fieldset>
                            <legend>Will you store many videos, pictures, or games on this PC? </legend>

                            <p>
                            Computer storage is like a digital filing cabinet or a virtual closet for a computer.
                            It's a place where a computer keeps all the information and files it needs to do its job.
                            Hard drive storage is like the computer's long-term memory.
                            It's where the computer stores things that it wants to remember even when it's turned off.
                            </p>
                            <br>
                            <label>
                                <input type="radio" name="q7" value="LargeStorage"> Yes, I need a lot of storage.
                            </label>
                            <br>
                            <label>
                                <input type="radio" name="q7" value="LowStorage"> No, I dont need a lot of storage.
                            </label>

                            <br>
                            <label>
                                <input type="radio" name="q7" value="DecentStorage"> I need a decent amount of storage.
                            </label>
                        </fieldset>


        <fieldset>
                            <legend>What Size Desktop or Laptop would you prefer? </legend>
                            <p>
                            A desktop computer is a stationary device that stays in one place, typically more powerful and easily upgradable,
                             while a laptop is a portable computer designed for mobility.
                             </p>

                            <label>
                                <input type="radio" name="q8" value="ATX"> I can fit a large desktop in my office/home.
                            </label>
                            <br>
                            <label>
                                <input type="radio" name="q8" value="MiniATX"> I can fit a small desktop in my office/home.
                            </label>

                            <br>
                            <label>
                                <input type="radio" name="q8" value="LargeLaptop"> I need a large laptop
                            </label>

                            <br>
                             <label>
                                 <input type="radio" name="q8" value="DecentLaptop"> I need a Decent Size laptop
                             </label>
                        </fieldset>

        <fieldset>
                            <legend>Will you modify this PC or Laptop in the future by adding different components to it?  </legend>
                            <label>
                                <input type="radio" name="q9" value="Modular"> Yes, I will upgrade this PC/Laptop in the future.
                            </label>
                            <br>
                            <label>
                                <input type="radio" name="q9" value="NonModular"> No, I won't change out any parts.
                            </label>
                        </fieldset>






  <br>

<!--
submit form (Insert Record into Database)
-->
<table>

<tr><td><input type="submit" value="Submit Record" /></td>
    </tr>

</form>
</table>    