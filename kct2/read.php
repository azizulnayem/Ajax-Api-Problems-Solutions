<?php
include 'dbconfig.php';

$type = $_GET['type'];

if ($type === 'GroupX') {
    $sql = "SELECT * FROM GroupX";
} elseif ($type === 'MatchY') {
    $sql = "SELECT * FROM MatchY";
}

$result = $conn->query($sql);

if ($result->num_rows > 0) {
    // Output data of each row
    echo "<table border='1'><tr>";
    while ($row = $result->fetch_assoc()) {
        echo "<tr>";
        foreach ($row as $value) {
            echo "<td>".$value."</td>";
        }
        echo "</tr>";
    }
    echo "</table>";
} else {
    echo "0 results";
}
$conn->close();
?>
