<?php
// Database configuration
$dbhost = "localhost"; 
$dbuser = "root"; 
$dbpass = ""; 
$dbname = "fifa2022"; 

// Create connection
$conn = new mysqli($dbhost, $dbuser, $dbpass, $dbname);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}
?>
