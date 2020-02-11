<!DOCTYPE html>
<html lang="en">
<?php

session_start(); //temp session
error_reporting(0); // hide undefine index

include("connection/connect.php"); // connection





if(isset($_POST['submit'] )) {
  
    if(empty($_POST['firstname']) || empty($_POST['lastname']) || empty($_POST['email']) || empty($_POST['phone']) || empty($_POST['password'])|| empty($_POST['cpassword']) ) {
      $message = 'Please fill mentioned details: ';
      $appendM = ''; $space = ' , ';
      $fn = 'First Name'; $ln = 'Last Name'; $e = 'Email'; $p = 'Phone Number'; $pass = 'Password'; $cpass = 'Confirm Password';
      $u = 'Username';

      if(empty($_POST['username'])){
        if(empty($appendM)){
          $appendM = $appendM.$u;  
        } 
      }

      if(empty($_POST['firstname'])){
        if(empty($appendM)){
          $appendM = $appendM.$fn;  
        } else {
          $appendM = $appendM.", ".$fn;
        }
      } 

      if(empty($_POST['lastname'])){
        if(empty($appendM)){
          $appendM = $appendM.$ln;  
        } else {
          $appendM = $appendM.", ".$ln;
        }
      }

      if(empty($_POST['email'])){
        if(empty($appendM)){
          $appendM = $appendM.$e;  
        } else {
          $appendM = $appendM.", ".$e;
        }
      }

      if(empty($_POST['phone'])){
        if(empty($appendM)){
          $appendM = $appendM.$p;  
        } else {
          $appendM = $appendM.", ".$p;
        }
      }

      if(empty($_POST['password'])){
        if(empty($appendM)){
          $appendM = $appendM.$pass;  
        } else {
          $appendM = $appendM.", ".$pass;
        }
      }

      if(empty($_POST['cpassword'])){
        if(empty($appendM)){
          $appendM = $appendM.$cpass;  
        } else {
          $appendM = $appendM.", ".$cpass;
        }
      }
      $message = $message.$appendM;
    }  else {
      $message = '';
      
      if(strlen($_POST['username']) < 4) {
        $message = 'Username should be of atleast 4 characters';
      } elseif (!preg_match('/^[A-Za-z][A-Za-z0-9]{7,19}$/', $_POST['username'])) {
        $message = 'Please enter valid username';
      } elseif(mysqli_num_rows(mysqli_query($db, "SELECT username FROM users where username = '".$_POST['username']."' ")) > 0) {
        $message = 'Username taken! Please choose a different one.';
      } elseif (!filter_var($_POST['email'], FILTER_VALIDATE_EMAIL))  {
        $message = "Invalid Email Address";
      } /*elseif (!preg_match('^[\w.+\-]+@ubisoft\.com$', $_POST['email'] ) ) {
        $message = 'Please enter Ubisoft Email Address';
      } */elseif(mysqli_num_rows(mysqli_query($db, "SELECT email FROM users where email = '".$_POST['email']."' ")) > 0)  {
        $message = 'Email is already registered';
      }  /*elseif(!preg_match('^[789]\d{9}$', $_POST['phone'])) { 
        $message = "Enter a valid phone number";
      }  elseif(!preg_match('^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$', $_POST['password'])) { 
        $message = "Enter Valid Password: Minimum 8 characters, at least one uppercase letter, one lowercase letter, one number and one special character:";
      } */elseif($_POST['password'] != $_POST['cpassword']){ 
        $message = "Password must match";
      }else {
        $mql = "INSERT INTO users(username,f_name,l_name,email,phone,password,address) VALUES('".$_POST['username']."','".$_POST['firstname']."','".$_POST['lastname']."','".$_POST['email']."','".$_POST['phone']."','".md5($_POST['password'])."','".$_POST['address']."')";
        mysqli_query($db, $mql);
        $success = "Account Created successfully! <p>You will be redirected in <span id='counter'>5</span> second(s).</p>
                            <script type='text/javascript'>
                            function countdown() {
                              var i = document.getElementById('counter');
                              if (parseInt(i.innerHTML)<=0) {
                                location.href = 'login.php';
                              }
                              i.innerHTML = parseInt(i.innerHTML)-1;
                            }
                            setInterval(function(){ countdown(); },1000);
                            </script>'";
  
      header("refresh:5;url=login.php"); // redireted once inserted success
      }
  
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
<body>

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
              <li class="nav-item"> <a class="nav-link active" href="index.php">Home <span class="sr-only">(current)</span></a> </li>
                            <li class="nav-item"> <a class="nav-link active" href="restaurants.php">Restaurants <span class="sr-only"></span></a> </li>
                            
              <?php
            if(empty($_SESSION["user_id"]))
              {
                echo '<li class="nav-item"><a href="login.php" class="nav-link active">login</a> </li>
                <li class="nav-item"><a href="registration.php" class="nav-link active">signup</a> </li>';
              }
            else
              {
                  
                  
                    echo  '<li class="nav-item"><a href="your_orders.php" class="nav-link active">your orders</a> </li>';
                  echo  '<li class="nav-item"><a href="logout.php" class="nav-link active">logout</a> </li>';
              }

            ?>
               
                        </ul>
                  </div>
               </div>
            </nav>
            <!-- /.navbar -->
         </header>
            <section class="contact-page inner-page">
                <div class="page-wrapper">
            <div class="breadcrumb">
               <div class="container">
                  <ul>
                     <li><a href="#" class="active">
            <span style="color:red;"><?php echo $message; ?></span>
             <span style="color:green;">
                <?php echo $success; ?>
                    </span>
             
          </a></li>
                    
                  </ul>
               </div>
            </div>
              <div class="container">

                  <div class="row">
                     <!-- REGISTER -->
                     <div class="col-md-8">
                        <div class="widget">
                           <div class="widget-body">
                              
                              <form action="" method="post">
                                 <div class="row">
                                    <div class="form-group col-sm-12">
                                       <label for="exampleInputEmail1">Username</label>
                                       <input class="form-control" type="text" name="username" id="example-text-input" placeholder="Ubisoft User Name" value="<?php echo isset($_POST["username"]) ? $_POST["username"] : ''; ?>"> 
                                    </div>
                                    <div class="form-group col-sm-6">
                                       <label for="exampleInputEmail1">First Name</label>
                                       <input class="form-control" type="text" name="firstname" id="example-text-input" placeholder="First Name" value="<?php echo isset($_POST["firstname"]) ? $_POST["firstname"] : ''; ?>"> 
                                    </div>
                                    <div class="form-group col-sm-6">
                                       <label for="exampleInputEmail1">Last Name</label>
                                       <input class="form-control" type="text" name="lastname" id="example-text-input-2" placeholder="Last Name" value="<?php echo isset($_POST["lastname"]) ? $_POST["lastname"] : ''; ?>"> 
                                    </div>
                                    <div class="form-group col-sm-6">
                                       <label for="exampleInputEmail1">Email address</label>
                                       <input type="text" class="form-control" name="email" onblur="validateEmail(this);" id="exampleInputEmail1" 
                                       value="<?php echo isset($_POST["email"]) ? $_POST["email"] : ''; ?>"
                                       aria-describedby="emailHelp" placeholder="Enter Ubisoft email"> <small id="emailHelp" class="form-text text-muted">We"ll never share your email with anyone else.</small> 
                                    </div>
                                    <div class="form-group col-sm-6">
                                       <label for="exampleInputEmail1">Phone number</label>
                                       <input class="form-control only-numeric" type="text" name="phone" maxlength="10"   id="example-tel-input-3" 
                                        value="<?php echo isset($_POST["phone"]) ? $_POST["phone"] : ''; ?>"
                                       placeholder="Contact Number"> <small class="form-text text-muted">We"ll never share your phone number with anyone else.</small> 
                                    </div>
                                    <div class="form-group col-sm-6">
                                       <label for="exampleInputPassword1">Password</label>
                                       <input type="password" class="form-control" name="password" id="exampleInputPassword1"
                                        placeholder="Password"> 
                                    </div>
                                    <div class="form-group col-sm-6">
                                       <label for="exampleInputPassword1">Repeat password</label>
                                       <input type="password" class="form-control" name="cpassword" id="exampleInputPassword2" placeholder="Password" > 
                                    </div>
                   <div class="form-group col-sm-12">
                                       <label for="exampleTextarea">Delivery Address</label>
                                       <textarea class="form-control" id="exampleTextarea" placeholder="Emp ID,&#10;Project Name,&#10;Floor No,&#10;Sub Team&#10;" name="address" rows="5"></textarea>
                                    </div>
                                   
                                 </div>
                                
                                 <div class="row">
                                    <div class="col-sm-4">
                                       <p> <input type="submit" value="Register" name="submit" class="btn theme-btn"> </p>
                                    </div>
                                 </div>
                              </form>
                           
               </div>
                           <!-- end: Widget -->
                        </div>
                        <!-- /REGISTER -->
                     </div>
                     <!-- WHY?++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ -->
                     <div class="col-md-4">
                        <h4>Registration is fast, easy, and free.</h4>
                        <p>Once you're registered, you can order tasty food from your desk in a minute</p>
                        <hr>
                         
                        <!-- <video height="400" width="500" poster="" autoplay="" loop="" mute="">
                           <source src="images/1080_Square_60fps.mp4"
                                    type="video/mp4">
                           <source src="images/1080_Square_60fps.mp4"
                                    type="video/mp4">
                           Sorry, your browser doesn't support embedded videos.
                        </video> -->
                        <video controlls muted height="400" width="500" poster="" autoplay="" loop="">
                           <source src="images/1080_Square_60fps.mp4">
                           <source src="images/1080_Square_60fps.mp4">
                           <p class="warning">Your browser does not support HTML5 video.</p>
                        </video>

<!-- +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ -->
                        
                        <div class="panel">
                           <div class="panel-heading">
                              <h4 class="panel-title"><a data-parent="#accordion" data-toggle="collapse" class="panel-toggle collapsed" href="#faq1" aria-expanded="false"><i class="ti-info-alt" aria-hidden="true"></i>What food can i order from this website ?</a></h4>
                           </div>
                           <div class="panel-collapse collapse" id="faq1" aria-expanded="false" role="article" style="height: 0px;">
                              <div class="panel-body"> You can order anything available in Ubisoft's floor canteen. May be it a small packet of your favourite biscute or be it your favourite type of maggi. </div>
                           </div>
                        </div>
                        <!-- end:panel -->
                        <div class="panel">
                           <div class="panel-heading">
                              <h4 class="panel-title"><a data-parent="#accordion" data-toggle="collapse" class="panel-toggle" href="#faq2" aria-expanded="true"><i class="ti-info-alt" aria-hidden="true"></i>What food can i order from this website ?</a></h4>
                           </div>
                           <div class="panel-collapse collapse" id="faq2" aria-expanded="true" role="article">
                              <div class="panel-body"> You can order anything available in Ubisoft's floor canteen. May be it a small packet of your favourite biscute or be it your favourite type of maggi.</div>
                           </div>
                        </div>
                        <!-- end:Panel -->
                        <h4 class="m-t-20">Contact Customer Support</h4>
                        <p> If you're looking for more help or have a question to ask, or any suggestion for us, please </p>
                        <p> <a href="mailto:hrushikesh.tavadarkar@ubisoft.com?Subject=Ubieats" class="btn theme-btn m-t-15">contact us</a> </p>
                        <!--<a href="mailto:someone@example.com?Subject=Hello%20again" target="_top">Send Mail</a> -->
                     </div>
                     <!-- /WHY? -->
                  </div>
               </div>
            </section>
            
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
                            <li><a href="restaurants.php">Choose restaurant</a> </li>
                            <li><a href="restaurants.php">Pricing page</a> </li>
                            <li><a href="restaurants.php">Make order</a> </li>
                            <li><a href="restaurants.php">Add to cart</a> </li>
                           <!--  <li><a href="#">Choose meal</a> </li> -->
                            <li><a href="https://pay.google.com/about/learn/">Pay via UPI or Cash </a> </li> 
                            <li><a href="restaurants.php">Wait for delivery</a> </li>
                        </ul>
                    </div> 
                     <div class="col-xs-12 col-sm-2 pages color-gray">
                        <h5>Pages</h5>
                        <ul>
                            <li><a href="index.php">Search results page</a> </li>
                            <li><a href="registration.php">User Sign Up Page</a> </li>
                            
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
                  <div class="row bottom-footer">
                     <div class="container">
                        <div class="row">
                           <div class="col-xs-12 col-sm-3 payment-options color-gray">
                              <h5>Payment Options</h5>
                              <ul>
                                 <li>
                                    <a href="#"> <img src="images/paypal.png" alt="Paypal"> </a>
                                 </li>
                                 <li>
                                    <a href="#"> <img src="images/mastercard.png" alt="Mastercard"> </a>
                                 </li>
                                 <li>
                                    <a href="#"> <img src="images/maestro.png" alt="Maestro"> </a>
                                 </li>
                                 <li>
                                    <a href="#"> <img src="images/stripe.png" alt="Stripe"> </a>
                                 </li>
                                 <li>
                                    <a href="#"> <img src="images/bitcoin.png" alt="Bitcoin"> </a>
                                 </li>
                              </ul>
                           </div>
                           <div class="col-xs-12 col-sm-4 address color-gray">
                              <h5>Address</h5>
                              <p>Kumar, Cerebrum IT Park, B3-5th & 6th floor, Marigold complex, Cybage Tower Rd, Kalyani Nagar, Pune, Maharashtra 411014</p>
                              <h5>Phone: <a href="tel:+080000012222">080 000012 222</a></h5>
                           </div>
                           <div class="col-xs-12 col-sm-5 additional-info color-gray">
                              <h5>Addition informations</h5>
                              <p>Join the thousands of other Ubisoft employees who benefit from having their menus on their Desk</p>
                           </div>
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

<script type="text/javascript">
    
    $(document).ready(function() {
      $(".only-numeric").bind("keypress", function (e) {
          var keyCode = e.which ? e.which : e.keyCode
               
          if (!(keyCode >= 48 && keyCode <= 57)) {
            $(".error").css("display", "inline");
            return false;
          }else{
            $(".error").css("display", "none");
          }
      });
    });
     
	 function validateEmail(emailField){
        var reg = /.+@(ubisoft)\.com$/;

        if (reg.test(emailField.value) == false) 
        {
            alert('Invalid Email Address');
            return false;
        }

        return true;

}
</script>
</body>

</html>
