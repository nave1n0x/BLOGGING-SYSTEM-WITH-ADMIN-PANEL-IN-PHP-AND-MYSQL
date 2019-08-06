<?php require_once('Include/Sessions.php'); ?>
<?php require_once('Include/functions.php') ?>
<?php

?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Looptec</title>
    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <!-- Bootstrap core CSS -->

    <link href="css/bootstrap.min.css" rel="stylesheet">
    <!-- Material Design Bootstrap -->
    <link href="css/mdb.min.css" rel="stylesheet">
    <!-- Your custom styles (optional) -->
    <link href="css/style.min.css" rel="stylesheet">
</head>

<body>


    <!--Main Navigation-->
    <header>

        <!-- Navbar -->
        <nav class="navbar fixed-top navbar-expand-lg navbar-light white scrolling-navbar">
            <div class="container">

                <!-- Brand -->
                <a class="navbar-brand waves-effect wow flash" href="index.php" target="_blank">
                    <img src="Upload/Image/logo.jpg" width="200" height="30">
                </a>

                <!-- Collapse -->
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                    aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>

                <!-- Links -->
                <div class="collapse navbar-collapse" id="navbarSupportedContent">

                    <!-- Left -->
                  <ul class="navbar-nav mr-auto">
                        <li class="nav-item ">
                            <a class="nav-link waves-effect" href="index.php">Home
                                <span class="sr-only">(current)</span>
                            </a>
                        </li>
						
						 <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Categories</a>
                <div class="dropdown-menu dropdown-primary" aria-labelledby="navbarDropdownMenuLink">
                    <a class="dropdown-item" href="#">Tech News</a>
                    <a class="dropdown-item" href="#">Reviews</a>
                    <a class="dropdown-item" href="#">HowTo's</a>
					<a class="dropdown-item" href="#">Gadgets</a>
					<a class="dropdown-item" href="#">Top10</a>
                </div>
            </li>
                        <li class="nav-item">
                            <a class="nav-link waves-effect" href="About.html">Aboutus</a>
                        </li>
						 <li class="nav-item">
                            <a class="nav-link waves-effect" href="advertise.html" >Advertise</a>
                        </li>
                    </ul>

                    <!-- Right -->
					<form action="index.php" method="GET" class="form-inline">
            <div class="md-form my-0">
                <input class="form-control mr-sm-2" type="text" name="search" placeholder="Search" aria-label="Search">
            </div>
        </form>
	
                    <ul class="navbar-nav nav-flex-icons">
                        <li class="nav-item">
                            <a href="https://www.facebook.com/mdbootstrap" class="nav-link waves-effect" target="_blank">
                                <i class="fa fa-facebook"></i>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="https://twitter.com/MDBootstrap" class="nav-link waves-effect" target="_blank">
                                <i class="fa fa-twitter"></i>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="https://github.com/mdbootstrap/bootstrap-material-design" class="nav-link border border-light rounded waves-effect"
                                target="_blank">
                                <i class="fa fa-github mr-2"></i>Naveen GitHub
                            </a>
                        </li>
                    </ul>

                </div>

            </div>
        </nav>
        <!-- Navbar -->

    </header>

	 <!--END OF NAVBAR  -->
	 <main class="mt-5 pt-5">
        <div class="container">
	 <!--Section: Jumbotron-->
            <section class="card wow jello" style="background-image: url(http://www.designbolts.com/wp-content/uploads/2012/08/i_love_typography_typography-design-hd-wallpapers-desktop-backgrounds-16a.jpg);">

                <!-- Content -->
                <div class="card-body text-white text-center py-5 px-5 my-5">

                    <h1 class="mb-4">
                        <strong>BEST TECH NEWS AND PC TIPS</strong>
                    </h1>
                    <p>
                        <strong>Best & free softwares and apps </strong>
                    </p>
                    <p class="mb-4">
                        <strong>In this website you can get all types softwares and howto's and many more..</strong>
                    </p>
                    <a target="_blank" href="" class="btn btn-outline-white btn-lg">Lets dive in
                        <i class="fa fa-graduation-cap ml-2"></i>
                    </a>

                </div>
                <!-- Content -->
            </section>
			 <hr class="mb-5">
			<section class="pt-5">

                <!-- Heading & Description -->
                <div class="wow jello">
                    <!--Section heading-->
                    <h2 class="h1 text-center mb-5">What is Looptec?</h2>
                    <!--Section description-->
                    <p class="text-center">Looptec is world's most popular Material Design framework for building responsive, mobile-first websites
                        and apps. </p>
                    <p class="text-center mb-5 pb-5">Trusted by over
                        <strong>400 000</strong> developers and designers. Easy to use & customize. 400+ material UI elements, templates
                        & tutorials.</p>
                </div>
                <!-- Heading & Description -->
 <hr class="mb-5">
                <!--Grid row-->
                <div class="row wow wobble">
<?php
					$page = 1;
					$query = "";
					if ( isset($_GET['search'])) {
						if ( empty($_GET['search'])) {
							Redirect_To('blog.php');
						}else {
							$search = $_GET['search'];
							$query = "SELECT * FROM cms_post WHERE post_date_time LIKE '%$search%' OR title LIKE '%$search%' OR category LIKE '$search%' ";
						}
					}else if ( isset($_GET['category'])) {
						$query = "SELECT * FROM cms_post WHERE category = '$_GET[category]'";
					}else if ( isset($_GET['page'])){
						$page = $_GET['page'];
						$showPost = ($page * 5) - 5;
						if ($page <= 0) {
							$showPost = 0;
						}
						$query = "SELECT * FROM cms_post ORDER BY post_date_time DESC LIMIT $showPost,6	";

					}else{

						$query = "SELECT * FROM cms_post ORDER BY post_date_time DESC LIMIT 0,5	";						
					}

					$exec = Query($query) or die(mysqli_error($con));
					if( $exec ) {
						if (mysqli_num_rows($exec) > 0) {
							while ( $post = mysqli_fetch_assoc($exec) ) {
								$post_id = $post['post_id'];
								$post_date = $post['post_date_time'];
								$post_title = $post['title'];
								$post_category = $post['category'];
								$post_author = $post['author'];
								$post_image = $post['image'];
								$post_content = substr($post['post'], 0,150) . '...'; 
							?>
                    <!--Grid column-->
                    <div class="col-lg-5 col-xl-4 mb-4">
                        <!--Featured image-->
                        <div class="img-fluid z-depth-3 rounded">
                            <div class="view overlay">
                                <img class="card-img-top" src="Upload/Image/<?php echo $post_image; ?>">
                            </div>
                        </div>
                    </div>
                    <!--Grid column-->

                    <!--Grid column-->
                    <div class="col-lg-7 col-xl-7 ml-xl-4 mb-4">
                        <h3 class="mb-3 font-weight-bold dark-grey-text">
                            <strong><div class="post-title"><h1><?php echo htmlentities($post_title); ?></h1></div></strong>
                        </h3>
                        <p class="grey-text"><p class="lead"><?php echo htmlentities($post_content); ?></p></p>
                        <p>
                            <strong><p class="lead">
									Published on: <?php echo htmlentities($post_date); ?> | Category: <?php echo htmlentities($post_category);?>
									</p></strong>
                        </p>
						<p>
									<a href="Post.php?id=<?php echo $post_id;?>">
										<button class="btn btn-primary btn-md" >Read More</button>
										<i class="fa fa-play ml-2"></i>
									</a>
									<div class="clearfix"></div>
								</p>
								<hr class="mb-5">
                     
                    </div>
					
					
                    <!--Grid column-->
<?php
							}

						}else {
							echo "<span class='lead'>No result<span>";
						}
					}else {

					}

				?>

				<?php  if(!isset($_GET['category'])) { ?>
				<ul class="pagination pagination-sm">
				<?php
					if ($page > 1) {
						?>
						<li><a href="Blog.php?page=<?php echo $page - 1; ?>"><</a></li>
						<?php
					}
					$sql = "SELECT COUNT(*) FROM cms_post";
					$exec = Query($sql);
					$rowCount = mysqli_fetch_array($exec);
					$totalRow = array_shift($rowCount);
					$postPerPage = ceil($totalRow / 5);

					for ($count = 1; $count <= $postPerPage; $count++){
						if ($page == $count) {
							?>
							<li class="active"><a href="Blog.php?page=<?php echo $count ?>"><?php echo $count ?></a></li>
							<?php
						}else {
							?>
							<li><a href="Blog.php?page=<?php echo $count ?>"><?php echo $count ?></a></li>
							<?php
						}
					}
					if($page < $postPerPage) {
						?>
						<li><a href="Blog.php?page=<?php echo $page + 1; ?>">></a></li>
						<?php
					}
				?>
				<?php
					}
				?>
				</ul>
                </div>
				</section>
			</div>
			</main>
			<a href="https://publishers.propellerads.com/#/pub/auth/signUp?refId=pcX"><img src="http://promo.propellerads.com/468x60-popads_1.gif" alt="PropellerAds"></a><a href="https://publishers.propellerads.com/#/pub/auth/signUp?refId=pcX"><img src="http://promo.propellerads.com/468x60-propellerads-monetize-traffic.gif" alt="PropellerAds"></a><a href="https://publishers.propellerads.com/#/pub/auth/signUp?refId=pcX"><img src="http://promo.propellerads.com/468x60_02.jpg" alt="PropellerAds"></a>
			
<!-- Footer -->
<div class="wow jackInTheBox">
<footer class="page-footer font-small unique-color-dark mt-4">

  <div style="background-color: #6351ce;">
    <div class="container">

      <!-- Grid row-->
      <div class="row py-4 d-flex align-items-center">

        <!-- Grid column -->
        <div class="col-md-6 col-lg-5 text-center text-md-left mb-4 mb-md-0">
          <h6 class="mb-0">Get connected with us on social networks!</h6>
        </div>
        <!-- Grid column -->

        <!-- Grid column -->
        <div class="col-md-6 col-lg-7 text-center text-md-right">

          <!-- Facebook -->
          <a class="fb-ic">
            <i class="fa fa-facebook white-text mr-4"> </i>
          </a>
          <!-- Twitter -->
          <a class="tw-ic">
            <i class="fa fa-twitter white-text mr-4"> </i>
          </a>
          <!-- Google +-->
          <a class="gplus-ic">
            <i class="fa fa-google-plus white-text mr-4"> </i>
          </a>
          <!--Linkedin -->
          <a class="li-ic">
            <i class="fa fa-linkedin white-text mr-4"> </i>
          </a>
          <!--Instagram-->
          <a class="ins-ic">
            <i class="fa fa-instagram white-text"> </i>
          </a>

        </div>
        <!-- Grid column -->

      </div>
      <!-- Grid row-->

    </div>
  </div>

  <!-- Footer Links -->
  <div class="container text-center text-md-left mt-5">

    <!-- Grid row -->
    <div class="row mt-3">

      <!-- Grid column -->
      <div class="col-md-3 col-lg-4 col-xl-3 mx-auto mb-4">

        <!-- Content -->
        <h6 class="text-uppercase font-weight-bold">About US</h6>
        <hr class="deep-purple accent-2 mb-4 mt-0 d-inline-block mx-auto" style="width: 60px;">
        <p>IAM WEB DEVOLOPER AND MY AIM IS TO START A COMPANY AND OWN START UP</p>

      </div>
      <!-- Grid column -->

      <!-- Grid column -->
      <div class="col-md-2 col-lg-2 col-xl-2 mx-auto mb-4">
<h6 class="text-uppercase font-weight-bold">Recent Posts</h6>
        <hr class="deep-purple accent-2 mb-4 mt-0 d-inline-block mx-auto" style="width: 60px;">
        <?php
							$sql = "SELECT * FROM cms_post ORDER BY post_date_time LIMIT 5";
							$exec = Query($sql);
							while ($recentPost = mysqli_fetch_assoc($exec)) {
								$postID = $recentPost['post_id'];
								?>
								<nav>
									<ul class="nav-left-list">
										<li class="nav-left"><a href="Post.php?id=<?php echo $postID; ?>"><?php echo $recentPost['title'] ?></a></li>
									</ul>
								</nav>
								<?php
							}
						?>

      </div>
      <!-- Grid column -->

      <!-- Grid column -->
      <div class="col-md-3 col-lg-2 col-xl-2 mx-auto mb-4">

        <!-- Links -->
        <h6 class="text-uppercase font-weight-bold">Useful links</h6>
        <hr class="deep-purple accent-2 mb-4 mt-0 d-inline-block mx-auto" style="width: 60px;">
        <p>
          <a href="#!">Your Account</a>
        </p>
        <p>
          <a href="#!">Become an Affiliate</a>
        </p>
        <p>
          <a href="#!">Shipping Rates</a>
        </p>
        <p>
          <a href="#!">Help</a>
        </p>

      </div>
      <!-- Grid column -->

      <!-- Grid column -->
      <div class="col-md-4 col-lg-3 col-xl-3 mx-auto mb-md-0 mb-4">

        <!-- Links -->
        <h6 class="text-uppercase font-weight-bold">Contact</h6>
        <hr class="deep-purple accent-2 mb-4 mt-0 d-inline-block mx-auto" style="width: 60px;">
        <p>
          <i class="fa fa-home mr-3"></i> Venkatadri Nagar</p>
        <p>
          <i class="fa fa-envelope mr-3"></i> Techbuddy144@Gigatech.com</p>
        <p>
          <i class="fa fa-phone mr-3"></i> 9618654927</p>
        <p>
          <i class="fa fa-whatsapp mr-3"></i> 6301803263</p>

      </div>
      <!-- Grid column -->

    </div>
    <!-- Grid row -->

  </div>
  <!-- Footer Links -->

  <!-- Copyright -->
  <div class="footer-copyright text-center py-3">© 2018 Copyright:
    <a href="index.php"> Gigatech.com</a>
	<br>
	<a href="index.php"> PRIVACYPOLICY  </a>
	<a href="index.php"> ABOUTUS  </a>
	<a href="index.php"> CONTACTUS  </a>
  </div>
  <!-- Copyright -->

</footer>
</div>
<!-- Footer -->
<!-- SCRIPTS -->
    <!-- JQuery -->
	<script src="//fortpush.com/ntfc.php?p=1633096" data-cfasync="false" async></script>
	<script type="text/javascript" src="//go.oclasrv.com/apu.php?zoneid=1633097"></script>
	<script src="//go.mobtrks.com/notice.php?p=1464519&interstitial=1"></script>
    <script type="text/javascript" src="js/jquery-3.3.1.min.js"></script>
    <!-- Bootstrap tooltips -->
    <script type="text/javascript" src="js/popper.min.js"></script>
    <!-- Bootstrap core JavaScript -->
    <script type="text/javascript" src="js/bootstrap.min.js"></script>
    <!-- MDB core JavaScript -->
    <script type="text/javascript" src="js/mdb.min.js"></script>
    <!-- Initializations -->
    <script type="text/javascript">
        // Animations initialization
        new WOW().init();
    </script>
</body>
</html>