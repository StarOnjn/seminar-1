 <?php
session_start();

$servername = "localhost";
$username = "root";
$password = "123";
$database = "seminar1";

// Create connection
$conn = mysqli_connect($servername, $username, $password,$database);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
} 
//ovaj dio je kriv, ID je potrebno uzeti iz sesije ili već od kuda se namjesti
	$upit= "SELECT * FROM `Jela` WHERE ID='3'";	
$rezultat = mysqli_query($conn,$upit);
$obj=mysqli_fetch_object($rezultat);
?> 
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>Stari tramvaj - jelovnik</title>

    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
	<link href="css/master.css" rel="stylesheet">

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>
  <body>
	<header>
    <h1>Stari tramvaj</h1>
	<?php
	echo "<h2>",$obj->IME,"</h2>";
	?>
	</header>
	<article id="article-l">
	<!--Radi gumb za povratak na početak-->
	<a href="index.php" id="back_slika">
	<img src="/img/back.png" style="width:40px;height:40px">
	</a>
	</br>
	</br>
	<!--Ispisuje detaljniji opis na Hrvatskom, dok Engleski naziv skriven čeka JS skriptu-->
	<span id="opis_hrv">
	<?php
	echo "<p>",$obj->OPIS,"</p>";
	?>
	</span>
	<span id="opis_engl">
	<?php
	echo "<p>",$obj->OPIS_ENG,"</p>";
	?>
	</span>
	</article>
	<article id="article-d">
	<img src="/img/uk.png" id="zastava_slika" onclick="jezik()" style="float:right; width:6%;height:6%;">
	<script>
	function jezik(){
		 var eng = document.getElementById('opis_engl');
		 var hr = document.getElementById('opis_hrv');
		 var zastava = document.getElementById('zastava_slika');
		 if (hr.style.display="block"){
			 eng.style.display="block";
			 hr.style.display="none";
			 zastava.src="/img/cro.gif";
		 }
		 //ne radi kako treba, ne mogu otkriti gdje je greška u logici
		 else if (eng.style.display="block"){
			 eng.style.display="none";
			 hr.style.display="block";
			 zastava.src="/img/uk.png";
		 }		 
	}
	</script>
	</br>
	</br>
	<div id="slika">
	<?php
	echo "<img src=\"",$obj->SLIKA,"\" alt=\"",$obj->IME,"\" style=\"width:90%;height:90%\">";
	?>
	</div>
	

	</article>
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <!--<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script> -->
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
  </body>
</html>