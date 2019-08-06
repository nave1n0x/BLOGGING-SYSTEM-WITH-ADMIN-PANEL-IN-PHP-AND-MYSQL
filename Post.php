<?php require_once('Include/Sessions.php'); ?>
<?php require_once('Include/functions.php') ?>
<?php 
	if ( isset($_GET['id']) ) {
		$post_id = $_GET['id'];
		$post_title = "";
		$sql = "SELECT * FROM cms_post WHERE post_id = '$post_id'";
		$exec = Query($sql);
		if ($title = mysqli_fetch_assoc($exec)) {
			$post_title = $title['title'];
		}
	}
?>
<<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title><?php echo $post_title; ?></title>
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
                <a class="navbar-brand waves-effect" href="index.php" target="_blank">
                    <img src="http://www.stroeermediabrands.de/wp-content/themes/mediabrands/images/content/zielgruppen/giga-tech-logo.png" width="200" height="30">
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
                        <li class="nav-item">
                            <a class="nav-link waves-effect" href="policy.html">PrivacyPolicy</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link waves-effect" href="About.html">Aboutus</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link waves-effect" href="contact.html">Contactus</a>
                        </li>
						 <li class="nav-item">
                            <a class="nav-link waves-effect" href="" >Advertise</a>
                        </li>
                    </ul>


                    <!-- Right -->
					<form action="Blog.php" method="GET" class="form-inline">
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

    <!--Main layout-->
    <main class="mt-5 pt-5">
        <div class="container">

            <!--Section: Post-->
            <section class="mt-4">

                <!--Grid row-->
                <div class="row">

                    <!--Grid column-->
                    <div class="col-md-8 mb-4">
					<?php echo SuccessMessage(); ?>
				<?php echo Message(); ?>
				<?php
					if( isset($_GET['id'])) {
						$query = "SELECT * FROM cms_post WHERE post_id = '$_GET[id]'";
						$exec = Query($query);
						if (mysqli_num_rows($exec) > 0) {
							while ($post = mysqli_fetch_assoc($exec) ) {
								$post_id = $post['post_id'];
								$post_date = $post['post_date_time'];
								$post_title = $post['title'];
								$post_category = $post['category'];
								$post_author = $post['author'];
								$post_image = $post['image'];
								$post_content = $post['post']; 
							?>

                        <!--Featured Image-->
                        <div class="card mb-4 wow lightSpeedIn">
                              <img class="img-fluid" src="Upload/Image/<?php echo $post_image; ?>">
                        </div>
                        <!--/.Featured Image-->

               

                        <!--Card-->
                        <div class="card mb-4 wow lightSpeedIn">

                            <!--Card content-->
                            <div class="card-body">

                                <p class="h5 my-4"><h1><?php echo htmlentities($post_title); ?></h1></p>
                                  <p class="lead">
									Published on: <?php echo htmlentities($post_date); ?> | Category: <?php echo htmlentities($post_category);?> | By: <?php echo $post_author; ?>
									</p>
                                    <p class="lead"><?php echo nl2br($post_content); ?></p>

                            </div>

                        </div>
						<?php
							}
						}
					}else {
						Redirect_To('Blog.php');
					}
				?>
                        <!--/.Card-->

                        <!--Card-->
                        <div class="card mb-4 wow lightSpeedIn">

                            <div class="card-header font-weight-bold">
                                <span>About author</span>
                                <span class="pull-right">
                                    <a href="">
                                        <i class="fa fa-facebook mr-2"></i>
                                    </a>
                                    <a href="">
                                        <i class="fa fa-twitter mr-2"></i>
                                    </a>
                                    <a href="">
                                        <i class="fa fa-instagram mr-2"></i>
                                    </a>
                                    <a href="">
                                        <i class="fa fa-linkedin mr-2"></i>
                                    </a>
                                </span>
                            </div>

                            <!--Card content-->
                            <div class="card-body">

                                <div class="media d-block d-md-flex mt-3">
                                    <img class="d-flex mb-3 mx-auto z-depth-1" src="https://scontent.fhyd5-1.fna.fbcdn.net/v/t1.0-1/c0.0.160.160/p160x160/31933373_576429016075821_1889617320536440832_n.jpg?_nc_cat=0&oh=aa5b9f35ee37e4aa8c5465d78da23ac2&oe=5BA85820" alt="Generic placeholder image"
                                        style="width: 100px;">
                                    <div class="media-body text-center text-md-left ml-md-3 ml-0">
                                        <h5 class="mt-0 font-weight-bold">NaveenKumar
                                        </h5>
                                       IAM A TECH ENTHUSIATIC AND FAST TECH LEARNER AND MY AIM TO START A COMPANY OR OWN STARTUP 
									   AND TO PROVIDE FREE CODING TUTORIALS ADN TECH NEWS..
                                    </div>
                                </div>

                            </div>

                        </div>
                        <!--/.Card-->

                        <!--Comments-->
                        <div class="card card-comments mb-3 wow lightSpeedIn">
                            <div class="card-header font-weight-bold">comments</div>
                            <div class="card-body">
                             <?php
					$sql = "SELECT * FROM comment WHERE post_id = '$_GET[id]'";
					$exec = Query($sql);
					if (mysqli_num_rows($exec) > 0) {
						while ($comments = mysqli_fetch_assoc($exec)) {
							$c_email = $comments['email'];
							$c_dateTime = $comments['date_time'];
							$c_comment = $comments['comment'];
							?>
							
							<div class="comment-block" style="margin-bottom: 20px; ">
								<div class="row">
									<div class="col-sm-2" style="height: 70px;width: 100px; padding:0; margin:0;">
									<img src="Assets/Images/user-default.png" height="70px" width="100px">
									</div>
									<div class="col-sm-10">
										<div><span class="lead text-info"><?php echo $c_email; ?></span></div>
										<div><span><?php echo $c_dateTime; ?></span></div>
										<div><span class="lead"> Say: <?php echo $c_comment; ?></span></div>
									</div>
								</div>
							</div>

							<?php
						}
					}else {
							echo "No Comments Yet";
						}
				?>

                            </div>
                        </div>
                        <!--/.Comments-->

                        <!--Reply-->
                        <div class="card mb-3 wow lightSpeedIn">
                            <div class="card-header font-weight-bold">Leave a reply</div>
                            <div class="card-body">
                                 <form method="POST" action="comment.php?>'"> 
						<legend>Your Thoughts About This Post</legend>
						<div class="form-group">
							<label>Email</label>
							<input type="email" name="email" placeholder="Your Email Address" class="form-control">
						</div>
						<div class="form-group">
							<label>Comment</label>
							<textarea name="comment" placeholder="Your Comment Here" class="form-control" rows="10"></textarea>
						</div>
						<div class="form-group">
							<input type="submit" name="submit" class="btn btn-primary" value="Send Comment">
						</div>
						<input type="hidden" name="id" value="<?php echo $_GET['id']; ?>">
					</form>
                            </div>
                        </div>
                        <!--/.Reply-->

                    </div>
                    <!--Grid column-->

                    <!--Grid column-->
                    <div class="col-md-4 mb-4">

                     
                       

                        <!--Card : Dynamic content wrapper-->
                        <div class="card mb-4 text-center wow lightSpeedIn">

                            <div class="card-header">Do you want to get informed about new articles?</div>

                            <!--Card content-->
                            <div class="card-body">

                                <!-- Default form login -->
                                <form>

                                    <!-- Default input email -->
                                    <label for="defaultFormEmailEx" class="grey-text">Your email</label>
                                    <input type="email" id="defaultFormLoginEmailEx" class="form-control">

                                    <br>

                                    <!-- Default input password -->
                                    <label for="defaultFormNameEx" class="grey-text">Your name</label>
                                    <input type="text" id="defaultFormNameEx" class="form-control">

                                    <div class="text-center mt-4">
                                        <button class="btn btn-info btn-md" type="submit">Sign up</button>
                                    </div>
                                </form>
                                <!-- Default form login -->

                            </div>

                        </div>
                        <!--/.Card : Dynamic content wrapper-->

                        <!--Card-->
                        <div class="card mb-4 wow lightSpeedIn">

                            <div class="card-header">Related articles</div>

                            <!--Card content-->
                            <div class="card-body">

                                <ul class="list-unstyled">
                                   <?php
							$sql = "SELECT * FROM cms_post ORDER BY post_date_time LIMIT 5";
							$exec = Query($sql);
							while ($recentPost = mysqli_fetch_assoc($exec)) {
								$postID = $recentPost['post_id'];
								?>
								<nav>
									<ul>
										<li><a href="Post.php?id=<?php echo $postID; ?>"><?php echo $recentPost['title'] ?></a></li>
									</ul>
								</nav>
								<?php
							}
						?>
                                </ul>

                            </div>

                        </div>
                        <!--/.Card-->

                    </div>
                    <!--Grid column-->

                </div>
                <!--Grid row-->

            </section>
            <!--Section: Post-->

        </div>
    </main>
    <!--Main layout-->

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
    <a href="https://mdbootstrap.com/bootstrap-tutorial/"> Gigatech.com</a>
  </div>
  <!-- Copyright -->

</footer>
</div>
<!-- Footer -->

    <!-- SCRIPTS -->
    <!-- JQuery -->
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