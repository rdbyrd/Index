<?php
require_once 'includes/header.php';
require_once 'includes/database.php';
?>

<div class="jumbotron jumbotron-fluid">
    <div class="container">
        <h1>Local History File Index</h1>
        <h2>Search Results</h2>
    </div>
</div>

<div class="container">

<?php
//checks for data posted in the search form
if (!empty($_POST['search'])) {

    //prevent unwanted characters from harming the SQL database, then pass posted data as a string
    $search = mysqli_real_escape_string($db, filter_input(INPUT_POST, 'search', FILTER_SANITIZE_STRING));
    $sql = "SELECT * FROM files WHERE
            filename LIKE '%$search%' 
            OR category LIKE '%$search%'
            OR subcategory LIKE '%$search%' 
                " .
            //Exclude file location, state, county, township from search. Re-implement only on request by deleting comment // tags
//            OR file_location LIKE '%$search%' 
//            OR state LIKE '%$search%' 
//            OR county LIKE '%$search%'
//            OR township LIKE '%$search%' 
//            OR city LIKE '%$search%'
            "
            OR related LIKE '%$search%'
            OR alias LIKE '%$search%'
            OR keywords LIKE '%$search%'";

    //execute the search and call up all matching attributes
    $result = mysqli_query($db, $sql);

    //display all results
    $queryResult = mysqli_num_rows($result);

    //display number of results discovered
    echo "Results: " . $queryResult . "<hr/>";

// display records in a table
    echo "<table class='table table-hover'>";

// set table headers
    echo "<tr class='table-secondary'><th>File Name</th><th>Category</th><th>Subcategory</th>"
    . "<th width='15%'>File Location</th><th>Related Resources</th><th>Alias/Other Names</th><th>Keyword</th></tr>";


    // tbody is implemented here to make the filter work on every single row of data while excluding the headers.
    echo "<tbody id='myTable'>";

    //provide a snippet from the results to be represented to the user
    if ($queryResult > 0) {
        while ($row = mysqli_fetch_assoc($result)) {
// set up a row for each record
            echo "<tr>";
            echo "<td><b><a href='display_file.php?id=" . $row['id'] . "'</a>" . $row['filename'] . "</b></td>";
            echo "<td>" . $row['category'] . "</td>";
            echo "<td>" . $row['subcategory'] . "</td>";
            echo "<td>" . $row['file_location'] . "</td>";
            echo "<td>" . $row['related'] . "</td>";
            echo "<td>" . $row['alias'] . "</td>";
            echo "<td>" . $row['keywords'] . "</td>";
            echo "</tr>";
        }

        echo "</tbody>";
        echo "</table>";
    }


//Report this message if no data could be found.
} else {
    echo "No results.";
}

$db->close();
?>

</div>

<?php
require_once 'includes/footer.php';
