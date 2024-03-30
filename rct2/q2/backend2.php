<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "studentinfo";

$conn = new mysqli($servername, $username, $password, $dbname);

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

$id = $_GET['id'];

$sql = "SELECT * FROM Student WHERE ID=$id";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
    $row = $result->fetch_assoc();
    if ($row["Status"] == "Passed") {
        echo "ID: " . $row["ID"]. " - Email: " . $row["Email"]. " - Name: " . $row["Name"]. " - Status: " . $row["Status"];
    } else {
        $sql = "DELETE FROM Student WHERE ID=$id";
        if ($conn->query($sql) === TRUE) {
            echo "Student information deleted successfully.";
        } else {
            echo "Error deleting student information: " . $conn->error;
        }
    }
} else {
    echo "Student not found.";
}

$conn->close();
?>
