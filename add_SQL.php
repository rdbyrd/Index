<?php

require_once 'includes/database.php';

/*
 * The following functions are protective features
 * mysqli_real_escape_string prevents JavaScript commands from being inserted into the database
 * trim eliminates unnecessary whitespace from the beginning and end of the form (space remover)
 * stripslashes removes slashes. This is probably the least necessary feature.
 * htmlspecialchars reads all keyboard icons as icons rather than HTML (i.e. it ignores tags like <p> and inserts it as is rather than modify them when input
 */

$filename = mysqli_real_escape_string($db, trim(stripslashes(filter_input(INPUT_POST, 'filename', FILTER_SANITIZE_STRING))));
$category = mysqli_real_escape_string($db, trim(stripslashes(filter_input(INPUT_POST, 'category', FILTER_SANITIZE_STRING))));
$subcategory = mysqli_real_escape_string($db, trim(stripslashes(filter_input(INPUT_POST, 'subcategory', FILTER_SANITIZE_STRING))));
$file_location = mysqli_real_escape_string($db, (trim(stripslashes(filter_input(INPUT_POST, 'file_location', FILTER_SANITIZE_STRING)))));
$state = mysqli_real_escape_string($db, (trim(stripslashes(filter_input(INPUT_POST, 'state', FILTER_SANITIZE_STRING)))));
$county = mysqli_real_escape_string($db, (trim(stripslashes(filter_input(INPUT_POST, 'county', FILTER_SANITIZE_STRING)))));
$township = mysqli_real_escape_string($db, (trim(stripslashes(filter_input(INPUT_POST, 'township', FILTER_SANITIZE_STRING)))));
$city = mysqli_real_escape_string($db, (stripslashes(filter_input(INPUT_POST, 'city', FILTER_SANITIZE_STRING))));
$related = mysqli_real_escape_string($db, (trim(stripslashes(filter_input(INPUT_POST, 'related', FILTER_SANITIZE_STRING)))));
$alias = mysqli_real_escape_string($db, (trim(stripslashes(filter_input(INPUT_POST, 'alias', FILTER_SANITIZE_STRING)))));
$keywords = mysqli_real_escape_string($db, (trim(stripslashes(filter_input(INPUT_POST, 'keywords', FILTER_SANITIZE_STRING)))));

//insertion statements for the database. The question ? marks specify parameters.
$query = "INSERT INTO files (filename, category, subcategory, file_location, state,
        county, township, city, related, alias, keywords) VALUES (?, ?, ?, ?, ?,
        ?, ?, ?, ?, ?, ?)";

//initiate prepared statement to (hopefully) prevent SQL injection.
if ($statement = $db->prepare($query)) {


//restrict paramaters to string datatypes only for each column insertion.
    $statement->bind_param("sssssssssss", $filename, $category, $subcategory, $file_location, $state, $county, $township, $city, $related, $alias, $keywords);
} else {

    //check if an error exists in a column for the database
    $error = $db->errno . ' ' . $db->error;
    echo $error;
}

//execute the prepared SQL statement. Render data to show number of rows affected (should return 0 if failure or none).
$execute = $statement->execute();
if ($execute) {
//close connection to free up resources.
    $statement->close();
    header("Location: add_successful.php");
} else {
//close connection to free up resources.
    $error_message = $db->error;
    $statement->close();
    header("Location: error.php");
}
