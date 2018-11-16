<?php
/*
 * Ryan Byrd
 * 10/05/2018
 * login.php
 * Login form for using the system as admin
 */

//get files to start session
require_once('includes/database.php');
require_once('includes/header.php');
?>

<div class="jumbotron jumbotron-fluid">
    <div class="container">
        <h1>Local History File Index</h1>
        <h2>Log in</h2>
    </div>
</div>

<!--Format the page to have all content contained towards the center and left-aligned.-->
<div class='container'>
    <div class='row'>
        <div class = 'col-md-6'>    
            <form method='post' action='login_user.php'>
                <?php
//set message variable to empty. Display message on different login sessions.
                $message = "";

//check the login status
                $login_status = '';

//check login status to see if the user has already signed on
                if (isset($_SESSION['login_status'])) {
                    $login_status = $_SESSION['login_status'];
                }

//the user's last login attempt succeeded. Send a message to remind them of being online.
                if ($login_status == 1) {
                    echo "<h3>Welcome back, " . $_SESSION['login'] . ".</h3>";
                    echo "<br/>";
                    
                    echo "<a class='btn btn-outline-success' href='add.php'>Add Records</a><br/><br/>";
                    echo "<a class='btn btn-outline-info' href='index_all_records.php'>Edit Records</a><br/><br/>";

                    include 'includes/footer.php';
                    exit();
                }

//the user's last login attempt failed
                if ($login_status == 2) {
                    $message = "Login attempt failed. <br/>";
                }
                ?>


                <?php echo $message; ?></br>

                <label for="username">Username:</label>
                <input type="text" name="username" class="form-control" placeholder="Username" autofocus required>
                <br/>

                <label for="password"> Password: </label>
                <input type='password' class="form-control" name='password' placeholder="Password" required>
                <br/>

                <input type='submit' class="btn btn-success btn-block" value='Login'>
                <input type="button" class="btn btn-info btn-block" name="Cancel" value="Cancel" onclick="window.location.href = 'home.php'" />                      

            </form>
        </div>
    </div>
</div>
<?php
require_once 'includes/footer.php';