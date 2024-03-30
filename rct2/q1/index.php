<?php
include('config.php');

// Fetch inventory items from the database
$sql = "SELECT * FROM Items";
$result = $conn->query($sql);
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Inventory Management System</title>
</head>
<body>
    <h1>Inventory Items</h1>
    <table border="1">
        <tr>
            <th>Item Name</th>
            <th>Quantity</th>
            <th>Price</th>
        </tr>
        <?php
        // Output data of each row
        while($row = $result->fetch_assoc()) {
            echo "<tr><td>".$row["ItemName"]."</td><td>".$row["Quantity"]."</td><td>".$row["Price"]."</td></tr>";
        }
        ?>
    </table>
    <br>
    <h2>Add New Item</h2>
    <form action="add_item.php" method="POST">
        Item Name: <input type="text" name="item_name"><br>
        Quantity: <input type="number" name="quantity"><br>
        Price: <input type="number" step="0.01" name="price"><br>
        <input type="submit" value="Add Item">
    </form>
</body>
</html>

<?php
$conn->close();
?>
