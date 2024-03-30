<?php
include('config.php');

// Retrieve form data
$itemName = $_POST['item_name'];
$quantity = $_POST['quantity'];
$price = $_POST['price'];

// Insert new item into the database
$sql = "INSERT INTO Items (ItemName, Quantity, Price) VALUES ('$itemName', $quantity, $price)";

if ($conn->query($sql) === TRUE) {
    echo "New item added successfully<br>";
    echo "<a href='index.php'><button>See Items Now</button></a>";
} else {
    echo "Error: " . $sql . "<br>" . $conn->error;
}

$conn->close();
?>
