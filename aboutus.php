<!DOCTYPE html>
<html lang="en">
<?php
include("connection/connect.php");  //include connection file
error_reporting(0);  // using to hide undefine undex errors
session_start(); //start temp session until logout/browser closed

?>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="#">
    <title>UbiEats -Food Ordering for Ubisoft</title>
    <!-- Bootstrap core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/font-awesome.min.css" rel="stylesheet">
    <link href="css/animsition.min.css" rel="stylesheet">
    <link href="css/animate.css" rel="stylesheet">
    <!-- Custom styles for this template -->
    <link href="css/style.css" rel="stylesheet">

    <link rel="shortcut icon" href="images/favicon.png">
    </head>

<body class="home">
    <div class="site-wrapper animsition" data-animsition-in="fade-in" data-animsition-out="fade-out">
        <!--header starts-->
        <header id="header" class="header-scroll top-header headrom">
            <!-- .navbar -->
            <nav class="navbar navbar-dark">
                <div class="container">
                    <button class="navbar-toggler hidden-lg-up" type="button" data-toggle="collapse" data-target="#mainNavbarCollapse">&#9776;</button>
                    <a class="navbar-brand" href="index.php"> <img class="img-rounded" src="images/Ubieats_long.png" alt="" height= "50" width="150"> </a>
                    <div class="collapse navbar-toggleable-md  float-lg-right" id="mainNavbarCollapse">
                        <ul class="nav navbar-nav">
                            <li class="nav-item"> <a class="nav-link active" href="https://goto.ubisoft.org/jevef" target="_blank" >Weekly Menu <span class="sr-only">(current)</span></a> </li>
                            <li class="nav-item"> <a class="nav-link active" href="index.php">Home <span class="sr-only">(current)</span></a> </li>
                            <li class="nav-item"> <a class="nav-link active" href="restaurants.php">Canteens <span class="sr-only"></span></a> </li>
                            
                           
							<?php
						if(empty($_SESSION["user_id"])) // if user is not login
							{
								echo '<li class="nav-item"><a href="login.php" class="nav-link active">Login</a> </li>
                              <li class="nav-item"><a href="registration.php" class="nav-link active">Signup</a> </li>
                              <!--  <li class="nav-item"><a href="/food/admin/index.php" class="nav-link active">Admin</a> </li> -->';
							}
						else
							{
									//if user is login
									
									echo  '<li class="nav-item"><a href="your_orders.php" class="nav-link active">Your Orders</a> </li>';
									echo  '<li class="nav-item"><a href="logout.php" class="nav-link active">Logout</a> </li>';
							}

						?>
							 
                        </ul>
						 
                    </div>
                </div>
            </nav>
            <!-- /.navbar -->
        </header>


<!-- How it works block starts -->
<section class="how-it-works">
            <div class="container" align="center" class="col-xs-12 col-sm-12 col-md-4 how-it-works-steps white-txt col1" style="border:1px solid white; padding-left: 0px;padding-right: 0px;">
            <div class="pen-title" class="col-xs-12 col-sm-12 col-md-4 how-it-works-steps white-txt col1" align="center" style="border:1px solid white">
  <h1 class="font-white space-xs">About Us</h1> 
</div >
            <br><br><br><br>
<h5 class="font-white space-xs">Ubisoft is a creator of worlds, committed to enriching players' lives with original and memorable gaming experiences.
A young, vibrant and passionate studio focused on building expertise on Mobile and Console Gaming and a Quality Control team dedicated to ensuring high quality games.
Ubisoft opened its doors in Pune in 2008, and has never looked back. 2019 marks the 11th year of our presence in Pune. We are proud to be the only fully integrated gaming studio in India with 900+ talented employees.
 The studio works in collaboration with worldwide Ubisoft studios on developing HD and mobile games and also hosts one of the biggest Quality Control teams in the group. 
 We are a young and motivated workforce which has helped us build a very vibrant and passionate culture. We love games, we love gamers and we are thrilled to meet them in India. Check us out on our Social Media pages. </h5>
                <!-- 3 block sections ends -->
                        </br></br></br></br>
            </div>
                        </div>
        </section>
        <!-- How it works block ends -->
        <!-- start: FOOTER -->
        <footer class="footer">
            <div class="container">
                <!-- top footer statrs -->
                <div class="row top-footer">
                    <div class="col-xs-12 col-sm-3 footer-logo-block color-gray">
                    <a href="#"> <center><img src="images/ubieats_sq.png" alt="Footer logo" height= "200" weidth="200"> </a> <span>Order Delivery &amp; Take-Out </span> </center> </div>
                    
                     <div class="col-xs-12 col-sm-2 how-it-works-links color-gray">
                        <h5>How it Works</h5>
                        <ul>
                           <!-- <li><a href="#">Enter your location</a> </li> -->
                           <li><a href="registration.php">User Sign Up Page</a> </li> 
                            <li><a href="https://pay.google.com/about/learn/" target="Blank">Pay via UPI or Cash </a> </li> 
                           
                        </ul>
                    </div> 
                     <div class="col-xs-12 col-sm-2 pages color-gray">
                        <h5>Pages</h5>
                        <ul>
                           
                            <li><a href="https://www.facebook.com/UbisoftIndiaStudios/" target="Blank">Facebook</a> </li>
                            <li><a href="https://www.instagram.com/ubisoftindiastudios/?hl=en" target="Blank">Instagram</a> </li>
                            <li><a href="https://www.youtube.com/channel/UCYtwZG5LFaSw6RBS158V5sQ" target="Blank">Youtube</a> </li>
                            
                            
                        </ul>
                    </div>
                    <div class="col-xs-12 col-sm-3 popular-locations color-gray">
                        <h5>Popular locations</h5>
                        <ul>
                            <li><a href="https://www.ubisoft.com/en-US/studio/pune.aspx" target="blank">Pune</a> </li>
                            <li><a href="https://www.ubisoft.com/en-US/studio/mumbai.aspx" target="Blank">Mumbai</a> </li>
                          
                        </ul>
                    </div> 
                </div>
                <!-- top footer ends -->
                <!-- bottom footer statrs -->
                <div class="bottom-footer">
                    <div class="row">
                        <div class="col-xs-12 col-sm-3 payment-options color-gray">
                            <h5>Payment Options</h5>
                            <ul>
                                <li>
                                   <img src="images/Gpay.png" alt="Gpay"> </a>
                                </li>
                                <li>
                                    <img src="images/UPI.png" alt="UPI"> </a>
                                </li>
                                <li>
                                    <img src="images/PayTM.png" alt="PayTM"> </a>
                                </li>
                                <li>
                                    <img src="images/PhonePay.png" alt="PhonePay"> </a>
                                </li>
                                <li>
                                    <img src="images/Rupee.png" alt="Rupee"> </a>
                                </li>
                                <li>
                                    <img src="images/mobikwik.png" alt="mobikwik"> </a>
                                </li>
                            </ul>
                        </div>
                        <div class="col-xs-12 col-sm-4 address color-gray">
                            <h5>Address</h5>
                            <p>Kumar, Cerebrum IT Park, B3-5th & 6th floor, Marigold complex, Cybage Tower Rd, Kalyani Nagar, Pune, Maharashtra 411014</p>
                            <h5>Phone: <a href="tel:+02066424500">020 6642 4500</a></h5> </div>
                        <div class="col-xs-12 col-sm-5 additional-info color-gray">
                            <h5>Addition informations</h5>
                            <p>Join the thousands of other Ubisoft employees who benefit from having their menus on their Desk</p>
                        </div>
                    </div>
                </div>
                <!-- bottom footer ends -->
            </div>
        </footer>
        <!-- end:Footer -->
    </div>
    <!--/end:Site wrapper -->
    <!-- Bootstrap core JavaScript
    ================================================== -->
    <script src="js/jquery.min.js"></script>
	<!-- neha start code -->
    <script type="text/javascript">    
    $(document).ready(function() {    
    $('#exampleInputAmount').keypress(function(e) {
    if (e.which === 13)
     {
        setTimeout(function() {
  window.location.href = "restaurants.php";
}, 1);   }
    })
});
</script>
<!-- neha end code -->
	
    <script src="js/tether.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/animsition.min.js"></script>
    <script src="js/bootstrap-slider.min.js"></script>
    <script src="js/jquery.isotope.min.js"></script>
    <script src="js/headroom.js"></script>
    <script src="js/foodpicky.min.js"></script>
</body>

</html>
