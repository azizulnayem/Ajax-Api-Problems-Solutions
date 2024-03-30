<?php
include('config.php');

// Fetch inventory items from the database
$sql = "SELECT * FROM Items";
$result = $conn->query($sql);

// Prepare response data
$items = array();
if ($result->num_rows > 0) {
    while($row = $result->fetch_assoc()) {
        $items[] = $row;
    }
}

// Send JSON response
header('Content-Type: application/json');
echo json_encode($items);

$conn->close();
?>
