<?php
// Include database configuration
include 'dbconfig.php';

// Check if the table parameter is set
if (isset($_GET['table'])) {
    $table = $_GET['table'];

    // Fetch data from the specified table
    $query = "SELECT * FROM $table";
    $result = $conn->query($query);

    // Display table data as HTML
    if ($result->num_rows > 0) {
        echo "<table border='1'>";
        // Output column names
        echo "<tr>";
        while ($column = $result->fetch_field()) {
            echo "<th>" . $column->name . "</th>";
        }
        echo "</tr>";
        // Output data
        while ($row = $result->fetch_assoc()) {
            echo "<tr>";
            foreach ($row as $value) {
                echo "<td>$value</td>";
            }
            echo "</tr>";
        }
        echo "</table>";
    } else {
        echo "No records found";
    }
} else {
    echo "Table parameter is not set";
}
$conn->close();
?>
