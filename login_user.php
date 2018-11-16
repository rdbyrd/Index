<?php
/*
 * Ryan Byrd
 * 10/05/2018
 * login.php
 * Login form for using the system as admin
 */

require_once 'includes/header.php';
require_once 'includes/database.php';

//shows login
$_SESSION['login_status'] = 2;

//initialize variables for username and password
$username = $password = "";

//retrieve user name and password 

if (isset($_POST['username'])) {
    $username = $db->real_escape_string(trim($_POST['username']));
}

if (isset($_POST['password'])) {
    $password = $db->real_escape_string(trim($_POST['password']));
}

//validate user name and password against a record in the users table in the database
//select statement
$sql = "SELECT * FROM users WHERE username='$username' AND password='$password'";
//execute the query 
$query = @$db->query($sql);

//fetch results
if ($query->num_rows) {

    //It is a valid user. Need to store the user in session variables
    $row = $query->fetch_assoc();
    $_SESSION['login'] = $username;
    $_SESSION['username'] = $row['username'];

    //update the login status
    $_SESSION['login_status'] = 1;
}
?>

<div class="jumbotron jumbotron-fluid">
    <div class="container">
        <h1>Local History File Index</h1>
        <h2>Administrator Controls</h2>
    </div>
</div>

<div class="container">
    <?php
//check if role is set and at the value of 2 (administrator access number). If admin username and password not entered, throw an error
    if (isset($row['role']) && $row['role'] == 2) {

//if Admnin is recognized, send user to administrator.php. Administrator.php exists separate from this PHP page 
//and allows for better HTML changes should design changes be wanted or needed
        header("Location: administrator.php");

//Default code if redirect above is removed. Otherwise, it does nothing
        echo "<a class='btn btn-outline-success' href='add.php'>Add Records</a><br/><br/>";
        echo "<a class='btn btn-outline-info' href='index_all_records.php'>Edit Records</a><br/><br/>";

//make sure variable role is initialized
        $_SESSION['role'] = $row['role'];
    } else {

//Throw an error if credentials are not properly inserted
        echo "<h3 style='padding-left: 30px'>You need a valid username and password to access this page.";
    }
    ?>

</div>
<?php
//close the connection
$db->close();

require_once 'includes/footer.php';
