<?php
require_once 'includes/header.php';
?>

<div class="jumbotron jumbotron-fluid">
    <div class="container">
        <h1>Local History File Index</h1>
        <h2>Update Account</h2>
    </div>
</div>

<div class="container">

    <form action="#" method="post">

        <div class="form-row">
            <div class="form-group col-md-5">
                <label for="firstname">First name</label>
                <input type="text" class="form-control" placeholder="First name" required>
            </div>
            <div class="form-group col-md-5">
                <label for="firstname">Last name</label>
                <input type="text" class="form-control" placeholder="Last name" required>
            </div>
        </div>

        <div class="form-row">
            <div class="form-group col-md-5">
                <label for="email">Email</label>
                <input type="email" class="form-control" placeholder="example_email@example.com" required>
            </div>
            <div class="form-group col-md-5">
                <label for="Password">Password</label>
                <input type="password" class="form-control" placeholder="Password" required>
            </div>
        </div>

        <button type="submit" class="btn btn-success">Update</button>
        <a href="home.php" class="btn btn-info" role="button">Cancel</a>
    </form>
    <br/>
    <form action="#" method="post" onsubmit="return confirm('Confirming this action will delete your account forever!')">
        <button type="submit" class="btn btn-danger" data-toggle="modal" data-target="deleteButton">Delete</button>
    </form>

    <?php
    require_once 'includes/footer.php';
    