<?php
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

	<main>

	</main>
	_END;

	require_once 'logindb.php';
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
				
				echo "<h2 id='result-text'>From the selection you provided, you are recommended the following options:<br></h2><br>";
				
				echo <<<_END
				<div id="results">
				_END;
				
				for ($i = 0; $i < $numRows; ++$i) {
					$result->data_seek($i);
					$make = htmlspecialchars($result->fetch_assoc()['make']);
					$result->data_seek($i);
					$name = htmlspecialchars($result->fetch_assoc()['name']);
					$result->data_seek($i);
					$price = htmlspecialchars($result->fetch_assoc()['price']);
					$result->data_seek($i);
					$url = htmlspecialchars($result->fetch_assoc()['url']);
					$result->data_seek($i);
					$image_path = htmlspecialchars($result->fetch_assoc()['image_path']);
					
					echo <<<_END
					<div id="result-card">
					<a href="$url" target=_blank><img src="$image_path" alt="Result Card Image"></a>
					<h2>Make: $make</h2>
					<ul>
					<li><p>$name</p></li>
					<li><p>$price</p></li>
					<li><p><a href="$url" target=_blank>Link</a></p></li>
					</ul>
					</div>
					_END;
				}
				
				echo <<<_END
				</div>
				_END;
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
				
				echo "<h2 id='result-text'>From the selection you provided, you are recommended the following options:<br></h2><br>";
				
				echo <<<_END
				<div id="results">
				_END;
				
				for ($i = 0; $i < $numRows; ++$i) {
					$result->data_seek($i);
					$make = htmlspecialchars($result->fetch_assoc()['make']);
					$result->data_seek($i);
					$name = htmlspecialchars($result->fetch_assoc()['name']);
					$result->data_seek($i);
					$price = htmlspecialchars($result->fetch_assoc()['price']);
					$result->data_seek($i);
					$url = htmlspecialchars($result->fetch_assoc()['url']);
					$result->data_seek($i);
					$image_path = htmlspecialchars($result->fetch_assoc()['image_path']);
					
					echo <<<_END
					<div id="result-card">
					<a href="$url" target=_blank><img src="$image_path" alt="Result Card Image"></a>
					<h2>Make: $make</h2>
					<ul>
					<li><p>$name</p></li>
					<li><p>$price</p></li>
					<li><p><a href="$url" target=_blank>Link</a></p></li>
					</ul>
					</div>
					_END;
				}
				
				echo <<<_END
				</div>
				_END;
			}
		}
	}
	
	echo <<<_END
	<footer>
	<p>&copy; Copyright 2021. All Rights Reserved.</p>
	<p><a href="mailto:pcparts@picker.com">PCparts@picker.com</a><p>
	</footer>

	</div>
	</body>
	</html>
	_END;
?>