<!DOCTYPE html>
<html lang="en">
<?php
include("connection/connect.php");
include_once 'product-action.php';
error_reporting(0);
session_start();
if(empty($_SESSION["user_id"]))
{
	header('location:login.php');
}
else{

										  
												foreach ($_SESSION["cart_item"] as $item)
												{
											
												$item_total += ($item["price"]*$item["quantity"]);
												
													if($_POST['submit'])
													{
						
													$SQL="insert into users_orders(u_id,title,quantity,price) values('".$_SESSION["user_id"]."','".$item["title"]."','".$item["quantity"]."','".$item["price"]."')";
						
														mysqli_query($db,$SQL);
														
														$success = "Thankyou ! Your Order Placed successfully!<p>Redirecting in <span id='counter'>5</span> second(s)</p>";
                                                       // alert ("Thankyou! Your Order Placed successfully!");
                                                        header("refresh: 5; url=index.php");
														unset($_SESSION["cart_item"]);
														
														
													}
												}
?>


<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="icon" href="#">
    <title>UbiEats -Food Ordering for Ubisoft</title>
    <!-- Bootstrap core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/font-awesome.min.css" rel="stylesheet">
    <link href="css/animsition.min.css" rel="stylesheet">
    <link href="css/animate.css" rel="stylesheet">
    
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

    <!-- Custom styles for this template -->
    <link href="css/style.css" rel="stylesheet"> 
    
    <link rel="shortcut icon" href="images/favicon.png">
    </head>
<body>
     <div class="site-wrapper animsition" data-animsition-in="fade-in" data-animsition-out="fade-out">
    <div class="site-wrapper">
        <!--header starts-->
        <header id="header" class="header-scroll top-header headrom">
            <!-- .navbar -->
            <nav class="navbar navbar-dark">
                <div class="container">
                    <button class="navbar-toggler hidden-lg-up" type="button" data-toggle="collapse" data-target="#mainNavbarCollapse">&#9776;</button>
                    <a class="navbar-brand" href="index.php"> <img class="img-rounded" src="images/Ubieats_long.png" alt="" height= "50" width="150"> </a>
                    <div class="collapse navbar-toggleable-md  float-lg-right" id="mainNavbarCollapse">
                        <ul class="nav navbar-nav">
                            <li class="nav-item"> <a class="nav-link active" href="index.php">Home <span class="sr-only">(current)</span></a> </li>
                            <li class="nav-item"> <a class="nav-link active" href="restaurants.php">Restaurants <span class="sr-only"></span></a> </li>
                            
							<?php
						if(empty($_SESSION["user_id"]))
							{
								echo '<li class="nav-item"><a href="login.php" class="nav-link active">Login</a> </li>
							  <li class="nav-item"><a href="registration.php" class="nav-link active">Signup</a> </li>';
							}
						else
							{
									
									
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
        <div class="page-wrapper">
            <div class="top-links">
                <div class="container">
                    <ul class="row links">
                      
                        <li class="col-xs-12 col-sm-4 link-item"><span>1</span><a href="restaurants.php">Choose Restaurant</a></li>
                        <li class="col-xs-12 col-sm-4 link-item "><span>2</span><a href="#">Pick Your favorite food</a></li>
                        <li class="col-xs-12 col-sm-4 link-item active" ><span>3</span><a href="checkout.php">Order and Pay online</a></li>
                    </ul>
                </div>
            </div>
			
                <div class="container">
                 
					   <span style="color:green;">
								<?php echo $success; ?>
										</span>
					
                </div>
            
			
			
				  
            <div class="container m-t-30">
			<form action="" method="post">
                <div class="widget clearfix">
                    
                    <div class="widget-body">
                        <form method="post" action="#">
                            <div class="row">
                                
                                <div class="col-sm-12">
                                    <div class="cart-totals margin-b-20">
                                        <div class="cart-totals-title">
                                            <h4>Cart Summary</h4> </div>
                                        <div class="cart-totals-fields">
										
                                            <table class="table">
											<tbody>
                                          
												 
											   
                                                    <tr>
                                                        <td>Cart Subtotal</td>
                                                        <td> <?php echo "₹".$item_total; ?></td>
                                                    </tr>
                                                    <tr>
                                                        <td>Taxes</td>
                                                        <td>  --  </td>
                                                    </tr>
                                                    <tr>
                                                        <td class="text-color"><strong>Total</strong></td>
                                                        <td class="text-color"><strong> <?php echo "₹".$item_total; ?></strong></td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                    <!--cart summary-->
                                    <div class="payment-option">
                                                <div style = "width:100%;padding-bottom: 20px;padding-top: 20px;" " class="custom-control custom-radio  ">
                                                    <input name="mod" id="radioStacked1" checked value="COD" type="radio" class="custom-control-input"> 
                                                    <span class="custom-control-indicator" style="top: 20px;"></span> <span class="custom-control-description">Payment on delivery </span>
                                                    <span style = "margin-left:-700px" class="pull-right"><a href="images/googlepay.jpg">Pay Via UPI </a> </span>
                                                    <span style = "margin-left:-700px" class="pull-right"> <button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModal">Open QR Code</button> </span>
                                                    <!-- <br> <span >Please pay while you pick-up your food in the canteen.</span> -->
                                            </div>
                                            <!-- <li class="custom-control custom-radio ">
                                                    <input name="mod"  type="radio" value="paypal" disabled class="custom-control-input"> <span class="custom-control-indicator"></span> <span class="custom-control-description">Paypal <img src="images/paypal.jpg" alt="" width="90"></span>
                                            </li> -->
                                            </div>
                                        <p class="text-xs-center" style="border-style:solid ;border-width:1px; color:#5cb85c"> <input type="submit"  onclick="return confirm('Are you sure?');" name="submit"  class="btn btn-outline-success btn-block" value="Order Now"> </p>
                                        <!-- QR Code Modal -->
                                    <div class="modal fade" id="myModal" role="dialog">
                                        <div class="modal-dialog">
                                        
                                        <!-- Modal content-->
                                        <div class="modal-content">
                                            <div class="modal-header">
                                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                                            <h4 class="modal-title">UPI QR Code</h4>
                                            </div>
                                            <div class="modal-body">
                                            <p><img src="images/googlepay.jpg" alt="GooglePay"></p>
                                            </div>
                                            <div class="modal-footer">
                                            <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                                            </div>
                                        </div>
                                        </div>
                                    </div>                        

                                    </div>
									</form>
                                </div>
                            </div>
                       
                    </div>
                </div>
				 </form>
            </div>
            
            <!-- start: FOOTER -->
            <footer class="footer">
                <div class="container">
                    <!-- top footer statrs -->
                <div class="row top-footer">
                    <div class="col-xs-12 col-sm-3 footer-logo-block color-gray">
                    <a href="#"> <center><img src="images/ubieats_sq.png" alt="Footer logo" height= "200" weidth="200"> </a> <span>Order Delivery &amp; Take-Out </span> </center> </div>
                    <div class="col-xs-12 col-sm-2 about color-gray">
                        <h5>About Us</h5>
                        <ul>
                            <li><a href="#">About us</a> </li>
                            <li><a href="#">Our Team</a> </li>
                            
                        </ul>
                    </div>
                     <div class="col-xs-12 col-sm-2 how-it-works-links color-gray">
                        <h5>How it Works</h5>
                        <ul>
                           <!-- <li><a href="#">Enter your location</a> </li> -->
                           <li><a href="registration.php">User Sign Up Page</a> </li> 
                            <li><a href="https://pay.google.com/about/learn/">Pay via UPI or Cash </a> </li> 
                           
                        </ul>
                    </div> 
                     <div class="col-xs-12 col-sm-2 pages color-gray">
                        <h5>Pages</h5>
                        <ul>
                            <li><a href="index.php">Search results page</a> </li>
                            <li><a href="https://www.facebook.com/UbisoftIndiaStudios/">Facebook</a> </li>
                            <li><a href="https://www.instagram.com/ubisoftindiastudios/?hl=en">Instagram</a> </li>
                            <li><a href="https://www.youtube.com/channel/UCYtwZG5LFaSw6RBS158V5sQ">Youtube</a> </li>
                            
                            
                        </ul>
                    </div>
                    <div class="col-xs-12 col-sm-3 popular-locations color-gray">
                        <h5>Popular locations</h5>
                        <ul>
                            <li><a href="https://www.ubisoft.com/en-US/studio/pune.aspx">Pune</a> </li>
                            <li><a href="https://www.ubisoft.com/en-US/studio/mumbai.aspx">Mumbai</a> </li>
                          
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
                            <h5>Phone: <a href="tel:+080000012222">080 000012 222</a></h5> </div>
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
        <!-- end:page wrapper -->
         </div>
    </div>
    <!--/end:Site wrapper -->
     <!-- Bootstrap core JavaScript
    ================================================== -->
    <script src="js/jquery.min.js"></script>
    <script src="js/tether.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/animsition.min.js"></script>
    <script src="js/bootstrap-slider.min.js"></script>
    <script src="js/jquery.isotope.min.js"></script>
    <script src="js/headroom.js"></script>
    <script src="js/foodpicky.min.js"></script>
    <script type='text/javascript'>
                            function countdown() {
                              var i = document.getElementById('counter');
                              if (parseInt(i.innerHTML)<=0) {
                                location.href = 'index.php';
                              }
                              i.innerHTML = parseInt(i.innerHTML)-1;
                            }
                            setInterval(function(){ countdown(); },1000);
                            </script>'";
</body>

</html>

<?php
}
?>
