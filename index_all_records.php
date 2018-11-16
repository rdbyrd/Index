<?php
/*
 * Ryan Byrd
 * 9/10/2018
 * Get all records from the database and display them by file name.
 */

require_once 'includes/database.php';
require_once 'includes/header.php';
?>

<div class="jumbotron jumbotron-fluid">
    <div class="container">
        <h1>Local History File Index</h1>
        <h2>All Records</h2>
    </div>
</div>

<div class="container">

    <!--generate a filter to search data-->
    <h3>Filter:</h3>
    <input class="form-control" id="myInput" type="text" placeholder="A search that updates results as you type">
    <br>

    <div>
        <?php
// get the records from the database
        $result = mysqli_query($db, "SELECT * FROM files ORDER BY filename ASC");

// display records if there are records to display
        if ($result->num_rows > 0) {

// display records in a table
            echo "<table id='myTable2' class='table table-hover'>";

// set table headers
            echo "<tr class='table-secondary'>"
            . "<th>File Name</th>"
            . "<th onclick='sortTable(1)'>Category</th>"
            . "<th onclick='sortTable(2)'>Subcategory</th>"
            . "<th onclick='sortTable(3)' width='15%'>File Location</th>"
            . "<th onclick='sortTable(4)'>Related Resources</th>"
            . "<th onclick='sortTable(5)'>Alias/Other Names</th>"
            . "<th onclick='sortTable(6)'>Keywords</th>"
            . "</tr>";

// tbody is implemented here to make the filter work on every single row of data while excluding the headers.
//            echo "<tbody >";
            while ($row = $result->fetch_object()) {

// set up a row for each record
                echo "<tbody id='myTable'>";
                echo "<tr>";
                echo "<td><b><a href='display_file.php?id=" . $row->id . "'</a>" . $row->filename . "</b></td>";
                echo "<td>" . $row->category . "</td>";
                echo "<td>" . $row->subcategory . "</td>";
                echo "<td>" . $row->file_location . "</td>";
                echo "<td>" . $row->related . "</td>";
                echo "<td>" . $row->alias . "</td>";
                echo "<td>" . $row->keywords . "</td>";
                echo "</tr>";
                echo "</tbody>";
            }

//            echo "</tbody>";
            echo "</table>";
        }

//Report this message if no data could be found.
        else {
            echo "This database contains no records.";
        }

// close database connection
        $db->close();
        ?>

    </div>
</div>

<script>
//    This is an AJAX query designed to filter the table. DO NOT TOUCH THIS. Comment or uncomment to add the filter.
    $(document).ready(function () {
        $("#myInput").on("keyup", function () {
            var value = $(this).val().toLowerCase();
            $("#myTable tr").filter(function () {
                $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1);
            });
        });
    });

//Warning: While this allows for column sorting by alphabetizing, it lags the database once it reaches too high of a count. 
//Do not return this unless you are sure that it works well.

//    function sortTable(n) {
//        var table, rows, switching, i, x, y, shouldSwitch, dir, switchcount = 0;
//        table = document.getElementById("myTable2");
//        switching = true;
//        // Set the sorting direction to ascending:
//        dir = "asc";
//        /* Make a loop that will continue until
//         no switching has been done: */
//        while (switching) {
//            // Start by saying: no switching is done:
//            switching = false;
//            rows = table.getElementsByTagName("TR");
//            /* Loop through all table rows (except the
//             first, which contains table headers): */
//            for (i = 1; i < (rows.length - 1); i++) {
//                // Start by saying there should be no switching:
//                shouldSwitch = false;
//                /* Get the two elements you want to compare,
//                 one from current row and one from the next: */
//                x = rows[i].getElementsByTagName("TD")[n];
//                y = rows[i + 1].getElementsByTagName("TD")[n];
//                /* Check if the two rows should switch place,
//                 based on the direction, asc or desc: */
//                if (dir == "asc") {
//                    if (x.innerHTML.toLowerCase() > y.innerHTML.toLowerCase()) {
//                        // If so, mark as a switch and break the loop:
//                        shouldSwitch = true;
//                        break;
//                    }
//                } else if (dir == "desc") {
//                    if (x.innerHTML.toLowerCase() < y.innerHTML.toLowerCase()) {
//                        // If so, mark as a switch and break the loop:
//                        shouldSwitch = true;
//                        break;
//                    }
//                }
//            }
//            if (shouldSwitch) {
//                /* If a switch has been marked, make the switch
//                 and mark that a switch has been done: */
//                rows[i].parentNode.insertBefore(rows[i + 1], rows[i]);
//                switching = true;
//                // Each time a switch is done, increase this count by 1:
//                switchcount++;
//            } else {
//                /* If no switching has been done AND the direction is "asc",
//                 set the direction to "desc" and run the while loop again. */
//                if (switchcount == 0 && dir == "asc") {
//                    dir = "desc";
//                    switching = true;
//                }
//            }
//        }
//    }
</script>

<?php
require_once 'includes/footer.php';
