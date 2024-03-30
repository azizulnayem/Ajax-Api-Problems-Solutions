<?php
include 'dbconfig.php';

// Check if POST data is set
if(isset($_POST['employeeId']) && isset($_POST['leaveCount'])) {
    $employeeId = $_POST['employeeId'];
    $requiredLeaves = $_POST['leaveCount'];

    // Retrieve employee data from the database
    $sql = "SELECT Total_Leaves, Leave_Taken FROM LeaveManagement WHERE ID = $employeeId";
    $result = $conn->query($sql);

    if ($result->num_rows > 0) {
        $row = $result->fetch_assoc();
        $totalLeaves = $row['Total_Leaves'];
        $leaveTaken = $row['Leave_Taken'];

        // Check if leave request can be granted
        if ($requiredLeaves + $leaveTaken <= $totalLeaves) {
            $message = "Leave Request Granted";
            $leaveTaken += $requiredLeaves;

            // Update leave taken in the database
            $sql_update = "UPDATE LeaveManagement SET Leave_Taken = $leaveTaken WHERE ID = $employeeId";
            if ($conn->query($sql_update) === FALSE) {
                $message = "Error updating record: " . $conn->error;
            }
        } else {
            $message = "Leave Request Rejected";
        }
        $availableLeaves = $totalLeaves - $leaveTaken;
    } else {
        $message = "Employee not found";
        $availableLeaves = 0;
    }

    // Prepare response data
    $response = array('message' => $message, 'availableLeaves' => $availableLeaves);
    echo json_encode($response);
} else {
    // Handle if POST data is not set
    echo json_encode(array('error' => 'POST data not set'));
}

$conn->close();
?>
