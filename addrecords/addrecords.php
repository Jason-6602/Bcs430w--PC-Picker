<?php
	require_once '../login/logindb.php';
	$conn = new mysqli($hn, $un, $pw, $db);
	if ($conn->connect_error) die("Fatal Error");
	
	if (!isset($_POST['q1']) || !isset($_POST['q2'])) {
		echo "You did not enter valid form data, please go back and try again!";
	}
	
	else {
		$ans1 = $_POST['q1'];
		$ans2 = $_POST['q2'];
		
		if ($ans2 == "DesktopPC") {
			if (!isset($_POST['q5']) || !isset($_POST['q6'])) {
				echo "You did not enter valid form data, please go back and try again!";
			}
			
			else {
				if ($ans1 == "NoBudget") {
					$query  = "SELECT * FROM desktop WHERE price <= 50000";
				}
				
				else {
					$query  = "SELECT * FROM desktop WHERE price <= $ans1";
				}
				
				$result = $conn->query($query);
				$numRows = $result->num_rows;
		
				$ans5 = $_POST['q5'];
				$ans6 = $_POST['q6'];
				
				echo "From the selection you provided, you are recommended the following options:<br>";
				
				for ($i = 0; $i < $numRows; ++$i) {
					$result->data_seek($i);
					$make = htmlspecialchars($result->fetch_assoc()['make']);
					$result->data_seek($i);
					$name = htmlspecialchars($result->fetch_assoc()['name']);
					$result->data_seek($i);
					$price = htmlspecialchars($result->fetch_assoc()['price']);
					$result->data_seek($i);
					$url = htmlspecialchars($result->fetch_assoc()['url']);
					
					echo "<br> Make: $make <br>";
					echo "Name: $name <br>";
					echo "Price: $price <br>";
					echo "URL: $url; <br><br>";
				}
			}
		}
		
		else {
			if (!isset($_POST['q3']) || !isset($_POST['q4'])) {
				echo "You did not enter valid form data, please go back and try again!";
			}
			
			else {
				if ($ans1 == "NoBudget") {
					$query  = "SELECT * FROM laptop WHERE price <= 50000";
				}
				
				else {
					$query  = "SELECT * FROM laptop WHERE price <= $ans1";
				}
				
				$result = $conn->query($query);
				$numRows = $result->num_rows;
				
				$ans3 = $_POST['q3'];
				$ans4 = $_POST['q4'];
				
				echo "From the selection you provided, you are recommended the following options:<br>";
				
				for ($i = 0; $i < $numRows; ++$i) {
					$result->data_seek($i);
					$make = htmlspecialchars($result->fetch_assoc()['make']);
					$result->data_seek($i);
					$name = htmlspecialchars($result->fetch_assoc()['name']);
					$result->data_seek($i);
					$price = htmlspecialchars($result->fetch_assoc()['price']);
					$result->data_seek($i);
					$url = htmlspecialchars($result->fetch_assoc()['url']);
					
					echo "<br> Make: $make <br>";
					echo "Name: $name <br>";
					echo "Price: $price <br>";
					echo "URL: $url; <br><br>";
				}
			}
		}
	}
?>