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
	$upit= "SELECT * FROM `Pica` LIMIT 0, 30 ";
    mysqli_set_charset($conn, "utf8");

if ($rezultat = mysqli_query($conn,$upit))
{
	//kreiranje liste
	echo "<ul>";
	 while ($obj=mysqli_fetch_object($rezultat))
	 {
		echo "<li>",$obj->IME,"</li>";
		echo $obj->CIJENA," kn</br>";
	 }
	echo "</ul>"; 
}
?>