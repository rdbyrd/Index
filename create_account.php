<?php
require_once 'includes/header.php';
?>

<div class="jumbotron jumbotron-fluid">
    <div class="container">
        <h1>Local History File Index</h1>
        <h2>Create an Account</h2>
    </div>
</div>

<div class="container">

    <form action="#" method="post">

        <div class="form-row">
            <div class="form-group col-md-5">
                <label for="firstname">Full Name</label>
                <input type="text" class="form-control" placeholder="Full name" autofocus required>
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

        <button type="submit" class="btn btn-success">Create</button>
        <input class="btn btn-info" type="reset" value="Reset">
    </form>

</div>

<?php
require_once 'includes/footer.php';
