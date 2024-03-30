<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "Studentinfo";

$conn = new mysqli($servername, $username, $password, $dbname);

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

$sql = "SELECT * FROM Student";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
    while($row = $result->fetch_assoc()) {
        echo "ID: " . $row["ID"]. " - Email: " . $row["Email"]. " - Name: " . $row["Name"]. " - Status: " . $row["Status"]. "<br>";
    }
} else {
    echo "0 results";
}
$conn->close();
?>
