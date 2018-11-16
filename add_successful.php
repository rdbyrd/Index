<?php

/*
 * Ryan Byrd
 * 10/24/2018
 * add_successful.php
 * The purpose of this page is to give users a confirmation saying that they added
 * a new record to the database.
 * 
 */
require_once 'includes/header.php';

if (($_SESSION['role']) == null) {
    header("Location: login.php");
}
?>
<script src="main.js" type="text/javascript"></script>

<div class="jumbotron jumbotron-fluid">
    <div class="container">
        <h1>Local History File Index</h1>
        <h2>Add Document to Index</h2>
    </div>
</div>
<div class="container">
    <div class="alert alert-success alert-dismissible fade show" role="alert">
        <strong>Record added!</strong> Continue on this page.
        <button type="button" class="close" data-dismiss="alert" aria-label="Close">
            <span aria-hidden="true">&times;</span>
        </button>
    </div>

    <form action="add_SQL.php" method="post">
        <h3>Core Information</h3>

        <div class="form-row">
            <div class="form-group col-md-4">
                <label for="filename">File Name</label>
                <input type="text" name="filename" class="form-control" placeholder="File name" autofocus required>
            </div>
            <div class="form-group col-md-4">
                <label for="subject">Category</label>
                <input type="text" name="category" class="form-control" placeholder="Category" required>
            </div>
            <div class="form-group col-md-4">
                <label for="subcategory">Sub-category</label>
                <input type="text" name="subcategory" class="form-control" placeholder="Sub-category">
            </div>
            <div class="form-group col-md-4">
                <label for="file_location">File Drawer Location</label>
                <input type="text" name="file_location" class="form-control" placeholder="As found in library">
            </div>
            <div class="form-group col-md-4">
                <label for="state">Select state (choose one):</label>
                <select class="form-control" id="state" name="state" required>
                    <option>Indiana</option>
                    <option>Ohio</option>
                    <option>Kentucky</option>
                </select>
            </div>
        </div>
        <hr/>
        <br/>
        <h3>Additional Information</h3>
        <div class="form-row">
            <div class="form-group col-md-4">
                <label for="alias">Keywords</label>
                <input type="text" name="keywords" class="form-control" placeholder="Keywords">
            </div>

            <div class="form-group col-md-4">
                <label for="related files">Related Resources</label>
                <input type="text" name="related" class="form-control" placeholder="Related resources">
            </div>
            <div class="form-group col-md-4">
                <label for="alias">Alias/Other Names</label>
                <input type="text" name="alias" class="form-control" placeholder="Other names">
            </div>
        </div>


        <div class="form-row">
            <div class="form-group col-md-4">
                <label for="county">Select county (choose one):</label>
                <select class="form-control" id="county" name="county">
                    <option></option>
                    <!--frequently used counties-->
                    <option>Dearborn</option>
                    <option>Hamilton</option>
                    <option>Boone</option>
                    <!--Indiana Counties-->
                    <option>Adams</option>
                    <option>Allen</option>
                    <option>Bartholomew</option>
                    <option>Benton</option>
                    <option>Blackford</option>
                    <option>Boone</option>
                    <option>Brown</option>
                    <option>Carroll</option>
                    <option>Cass</option>
                    <option>Clark</option>
                    <option>Clay</option>
                    <option>Clinton</option>
                    <option>Crawford</option>
                    <option>Daviess</option>
                    <option>Decatur</option>
                    <option>De Kalb</option>
                    <option>Delaware</option>
                    <option>Dubois</option>
                    <option>Elkhart</option>
                    <option>Fayette</option>
                    <option>Floyd</option>
                    <option>Fountain</option>
                    <option>Franklin</option>
                    <option>Fulton</option>
                    <option>Gibson</option>
                    <option>Grant</option>
                    <option>Greene</option>
                    <option>Hamilton</option>
                    <option>Hancock</option>
                    <option>Harrison</option>
                    <option>Hendricks</option>
                    <option>Howard</option>
                    <option>Huntington</option>
                    <option>Jackson</option>
                    <option>Jasper</option>
                    <option>Jay</option>
                    <option>Jefferson</option>
                    <option>Jennings</option>
                    <option>Johnson</option>
                    <option>Knox</option>
                    <option>Kosciusko</option>
                    <option>La Porte</option>
                    <option>Lagrange</option>
                    <option>Lake</option>
                    <option>Lawrence</option>
                    <option>Madison</option>
                    <option>Marion</option>
                    <option>Marshall</option>
                    <option>Martin</option>
                    <option>Miami</option>
                    <option>Monroe</option>
                    <option>Montgomery</option>
                    <option>Morgan</option>
                    <option>Newton</option>
                    <option>Noble</option>
                    <option>Ohio</option>
                    <option>Orange</option>
                    <option>Owen</option>
                    <option>Parke</option>
                    <option>Perry</option>
                    <option>Pike</option>
                    <option>Porter</option>
                    <option>Posey</option>
                    <option>Pulaski</option>
                    <option>Putnam</option>
                    <option>Randolph</option>
                    <option>Ripley</option>
                    <option>Rush</option>
                    <option>St. Joseph</option>
                    <option>Scott</option>
                    <option>Shelby</option>
                    <option>Spencer</option>
                    <option>Starke</option>
                    <option>Steuben</option>
                    <option>Sullivan</option>
                    <option>Switzerland</option>
                    <option>Tippecanoe</option>
                    <option>Tipton</option>
                    <option>Union</option>
                    <option>Vanderburgh</option>
                    <option>Vermillion</option>
                    <option>Vigo</option>
                    <option>Wabash</option>
                    <option>Warren</option>
                    <option>Warrick</option>
                    <option>Washington</option>
                    <option>Wayne</option>
                    <option>Wells</option>
                    <option>White</option>
                    <option>Whitley</option>
                    <!--Ohio counties-->
                    <option>	Adams	</option>
                    <option>	Allen	</option>
                    <option>	Ashland	</option>
                    <option>	Ashtabula	</option>
                    <option>	Athens	</option>
                    <option>	Auglaize	</option>
                    <option>	Belmont	</option>
                    <option>	Brown	</option>
                    <option>	Butler	</option>
                    <option>	Carroll	</option>
                    <option>	Champaign	</option>
                    <option>	Clark	</option>
                    <option>	Clermont	</option>
                    <option>	Clinton	</option>
                    <option>	Columbiana	</option>
                    <option>	Coshocton	</option>
                    <option>	Crawford	</option>
                    <option>	Cuyahoga	</option>
                    <option>	Darke	</option>
                    <option>	Defiance	</option>
                    <option>	Delaware	</option>
                    <option>	Erie	</option>
                    <option>	Fairfield	</option>
                    <option>	Fayette	</option>
                    <option>	Franklin	</option>
                    <option>	Fulton	</option>
                    <option>	Gallia	</option>
                    <option>	Geauga	</option>
                    <option>	Greene	</option>
                    <option>	Guernsey	</option>
                    <option>	Hancock	</option>
                    <option>	Hardin	</option>
                    <option>	Harrison	</option>
                    <option>	Henry	</option>
                    <option>	Highland	</option>
                    <option>	Hocking	</option>
                    <option>	Holmes	</option>
                    <option>	Huron	</option>
                    <option>	Jackson	</option>
                    <option>	Jefferson	</option>
                    <option>	Knox	</option>
                    <option>	Lake	</option>
                    <option>	Lawrence	</option>
                    <option>	Licking	</option>
                    <option>	Logan	</option>
                    <option>	Lorain	</option>
                    <option>	Lucas	</option>
                    <option>	Madison	</option>
                    <option>	Mahoning	</option>
                    <option>	Marion	</option>
                    <option>	Medina	</option>
                    <option>	Meigs	</option>
                    <option>	Mercer	</option>
                    <option>	Miami	</option>
                    <option>	Monroe	</option>
                    <option>	Montgomery	</option>
                    <option>	Morgan	</option>
                    <option>	Morrow	</option>
                    <option>	Muskingum	</option>
                    <option>	Noble	</option>
                    <option>	Ottawa	</option>
                    <option>	Paulding	</option>
                    <option>	Perry	</option>
                    <option>	Pickaway	</option>
                    <option>	Pike	</option>
                    <option>	Portage	</option>
                    <option>	Preble	</option>
                    <option>	Putnam	</option>
                    <option>	Richland	</option>
                    <option>	Ross	</option>
                    <option>	Sandusky	</option>
                    <option>	Scioto	</option>
                    <option>	Seneca	</option>
                    <option>	Shelby	</option>
                    <option>	Stark	</option>
                    <option>	Summit	</option>
                    <option>	Trumbull	</option>
                    <option>	Tuscarawas	</option>
                    <option>	Union	</option>
                    <option>	Van Wert	</option>
                    <option>	Vinton	</option>
                    <option>	Warren	</option>
                    <option>	Washington	</option>
                    <option>	Wayne	</option>
                    <option>	Williams	</option>
                    <option>	Wood	</option>
                    <option>	Wyandot	</option>
                    <!--Kentucky Counties-->
                    <option>	Adair	</option>
                    <option>	Allen	</option>
                    <option>	Anderson	</option>
                    <option>	Ballard	</option>
                    <option>	Barren	</option>
                    <option>	Bath	</option>
                    <option>	Bell	</option>
                    <option>	Bourbon	</option>
                    <option>	Boyd	</option>
                    <option>	Boyle	</option>
                    <option>	Bracken	</option>
                    <option>	Breathitt	</option>
                    <option>	Breckinridge	</option>
                    <option>	Bullitt	</option>
                    <option>	Butler	</option>
                    <option>	Caldwell	</option>
                    <option>	Calloway	</option>
                    <option>	Campbell	</option>
                    <option>	Carlisle	</option>
                    <option>	Carroll	</option>
                    <option>	Carter	</option>
                    <option>	Casey	</option>
                    <option>	Christian	</option>
                    <option>	Clark	</option>
                    <option>	Clay	</option>
                    <option>	Clinton	</option>
                    <option>	Crittenden	</option>
                    <option>	Cumberland	</option>
                    <option>	Daviess	</option>
                    <option>	Edmonson	</option>
                    <option>	Elliott	</option>
                    <option>	Estill	</option>
                    <option>	Fayette	</option>
                    <option>	Fleming	</option>
                    <option>	Floyd	</option>
                    <option>	Franklin	</option>
                    <option>	Fulton	</option>
                    <option>	Gallatin	</option>
                    <option>	Garrard	</option>
                    <option>	Grant	</option>
                    <option>	Graves	</option>
                    <option>	Grayson	</option>
                    <option>	Green	</option>
                    <option>	Greenup	</option>
                    <option>	Hancock	</option>
                    <option>	Hardin	</option>
                    <option>	Harlan	</option>
                    <option>	Harrison	</option>
                    <option>	Hart	</option>
                    <option>	Henderson	</option>
                    <option>	Henry	</option>
                    <option>	Hickman	</option>
                    <option>	Hopkins	</option>
                    <option>	Jackson	</option>
                    <option>	Jefferson	</option>
                    <option>	Jessamine	</option>
                    <option>	Johnson	</option>
                    <option>	Kenton	</option>
                    <option>	Knott	</option>
                    <option>	Knox	</option>
                    <option>	Larue	</option>
                    <option>	Laurel	</option>
                    <option>	Lawrence	</option>
                    <option>	Lee	</option>
                    <option>	Leslie	</option>
                    <option>	Letcher	</option>
                    <option>	Lewis	</option>
                    <option>	Lincoln	</option>
                    <option>	Livingston	</option>
                    <option>	Logan	</option>
                    <option>	Lyon	</option>
                    <option>	McCracken	</option>
                    <option>	McCreary	</option>
                    <option>	McLean	</option>
                    <option>	Madison	</option>
                    <option>	Magoffin	</option>
                    <option>	Marion	</option>
                    <option>	Marshall	</option>
                    <option>	Martin	</option>
                    <option>	Mason	</option>
                    <option>	Meade	</option>
                    <option>	Menifee	</option>
                    <option>	Mercer	</option>
                    <option>	Metcalfe	</option>
                    <option>	Monroe	</option>
                    <option>	Montgomery	</option>
                    <option>	Morgan	</option>
                    <option>	Muhlenberg	</option>
                    <option>	Nelson	</option>
                    <option>	Nicholas	</option>
                    <option>	Ohio	</option>
                    <option>	Oldham	</option>
                    <option>	Owen	</option>
                    <option>	Owsley	</option>
                    <option>	Pendleton	</option>
                    <option>	Perry	</option>
                    <option>	Pike	</option>
                    <option>	Powell	</option>
                    <option>	Pulaski	</option>
                    <option>	Robertson	</option>
                    <option>	Rockcastle	</option>
                    <option>	Rowan	</option>
                    <option>	Russell	</option>
                    <option>	Scott	</option>
                    <option>	Shelby	</option>
                    <option>	Simpson	</option>
                    <option>	Spencer	</option>
                    <option>	Taylor	</option>
                    <option>	Todd	</option>
                    <option>	Trigg	</option>
                    <option>	Trimble	</option>
                    <option>	Union	</option>
                    <option>	Warren	</option>
                    <option>	Washington	</option>
                    <option>	Wayne	</option>
                    <option>	Webster	</option>
                    <option>	Whitley	</option>
                    <option>	Wolfe	</option>
                    <option>	Woodford	</option>
                </select>
            </div>

            <div class="form-group col-md-4">
                <label for="township">Township</label>
                <input type="text" name="township" class="form-control" placeholder="Township">
            </div>
            <div class="form-group col-md-4">
                <label for="city">City</label>
                <input type="text" name="city" class="form-control" placeholder="City">
            </div>
        </div>



        <!--Experimental code template for adding documents into the database-->
        <!--<div class="form-row">
            <div class="form-group">
                <label for="file">Upload File</label>
                <input type="file" name="file" class="form-control-file" id="file">
            </div>
        </div>-->

        <button type="submit" class="btn btn-success btn-lg btn-block">Create</button> 
        <br/>
    </form>
</div>

<?php

require_once 'includes/footer.php';
