<?php

/* 
 * Ryan Byrd
 * 9/21/2018
 * delete_sql.php
 * The purpose of this file is to process the delete command from the database after pressing delete on edit_file.php.
 * It exists exclusively for back-end functionality, and should never be seen by the public.
 */

require_once 'includes/database.php';
require_once 'includes/header.php';

$id = filter_input(INPUT_POST, 'id', FILTER_SANITIZE_NUMBER_INT);

// sql to delete a record
$sql = "DELETE FROM files WHERE id='$id'";

// Return if-else statements to show the user they have removed data from the database.
if ($db->query($sql) === TRUE) {
    ?>

    <div class="jumbotron jumbotron-fluid">
    <div class="container">
        <h1>Local History File Index</h1>
        <h2>Record deleted. Return <a href="home.php">Home</a> or go to the <a href="index_all_records.php">Index</a>.</h2>
    </div>
</div>
    <?php
} else {
    echo "Error deleting record: " . $db->error;
}

$db->close();

?>

