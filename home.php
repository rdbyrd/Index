<?php
require_once 'includes/header.php';
?>

<!--Jumbotron identifying what the page is-->
<div class="jumbotron jumbotron-fluid">
    <div class="container">
        <h1>Lawrenceburg Public Library</h1> 
            <h2>Local History Files Index</h2>
    </div>
</div>

<!--Carousel using Bootstrap 4-->
<div class='container'>
    <h3>Search for Local History Vertical Files:</h3><br/>

    <!--Search feature-->
    <form action="search_results.php" method="post" class="form-inline">
        <input class="form-control mr-sm-2" type="search" name="search" placeholder="Type in a search term" aria-label="Search">
        <button class="btn btn-outline-info my-2 my-sm-0" type="submit">Search</button>
    </form>
    <br/>
    <div id="carouselExampleControls" class="carousel slide" data-ride="carousel">
        <div class="carousel-inner">

            <!--Identify the carousel image and make it a hyperlink-->
            <div class="carousel-item active">
                <a href="#">
                    <img class="d-block w-100" src="images/genealogy.png" alt="Genealogy">
                </a>
            </div>
            <div class="carousel-item">
                <a href="#">
                    <img class="d-block w-100" src="images/localhistory reserve.jpg" alt="Local History">
                </a>
            </div>
        </div>

        <!--Carousel buttons to force them to shift left and right-->
        <a class="carousel-control-prev" href="#carouselExampleControls" role="button" data-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
        </a>
        <a class="carousel-control-next" href="#carouselExampleControls" role="button" data-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
        </a>
    </div>
    <br/>
    <br/>

    <!--Tentative information that the library would want users to know-->
    <h2>Our Purpose</h2>
    <br/>

    <p>The Lawrenceburg Public Library Local History Files Index's intention with this site is to supplement 
        library patrons and staff with a reliable index. The index's design is to 
        enable users to discover the location of various miscellaneous and vertical files
        within the genealogy and local history department.
    </p>

</div>
<?php
require_once 'includes/footer.php';
