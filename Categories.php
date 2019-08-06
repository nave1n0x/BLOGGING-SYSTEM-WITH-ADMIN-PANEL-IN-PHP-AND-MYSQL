<?php require_once('Include/Sessions.php'); ?>
<?php require_once('Include/functions.php') ?>
<?php ConfirmLogin(); ?>
<?php

if( isset($_POST['submit_category'])){
	date_default_timezone_set('Asia/Manila');
	$time = time();
	$dateTime = strftime('%Y-%m-%d ',$time);
	$categoryName = ($_POST['cat_name']);
	$category = mysqli_real_escape_string($con,$categoryName);
	$cat_name_length = strlen($category);
	$admin = $_SESSION['username']; 
	if( empty($category)) {
		$_SESSION['errorMessage'] = 'All Fields Must Be Fill Out' . $category;
		Redirect_To('Categories.php');
		exit;
	}else if($cat_name_length > 50) {
		$_SESSION['errorMessage'] = 'Category Name Is Too Long.';
		Redirect_To('Categories.php');
	}else {
		global $con;
		$query = "INSERT INTO cms_category (cat_datetime, cat_name,	cat_creator) 
		VALUES('$dateTime', '$category', '$admin')";
		$exec = Query($query);
		if ($exec) {
			$_SESSION['successMessage'] = 'Category Added Successfully.';
			Redirect_To('Categories.php');
			mysqli_close($con);
		}else {
			$_SESSION['errorMessage'] = 'Something Went Wrong';
			Redirect_To('Categories.php');

		}
	}
}

if (isset($_GET['delete_attempt'])) {
	if (!empty($_GET['delete_attempt'])) {
		$_SESSION['del_id'] = $_GET['delete_attempt'];
		$_SESSION['optDeleteCategory'] = "";
		$_SESSION['categoryName'] = $_GET['name'];
	}else {
		Redirect_To('Categories.php');
	}
}

if (isset($_GET['CategoryID'])) {
	if (!empty($_GET['CategoryID'])) {
		$sql = "DELETE FROM cms_category WHERE cat_id = $_GET[CategoryID]";
		$exec = Query($sql);
		if ($exec) {
			$_SESSION['successMessage'] = "Category Delete Successfully";
			Redirect_To('Categories.php');
		}else {
			Redirect_To('Categories.php');
		}
	}
}
?>
<!DOCTYPE html>
<html>
<head>
	<title>Categories</title>
	<script src="jquery-3.2.1.min.js"></script>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" type="text/css" href="bootstrap/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="Assets/style.css">
	<script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>
</head>
<body>
<div class="heading">
	<a href=""><p>Visit Blog</p></a>
</div>
<div class="container-fluid">
	<div class="main">
		<div class="row">
			<div class="col-sm-2">
				<ul id="side-menu" class="nav nav-pills nav-stacked">
					<li class=""><a href="Dashboard.php">
					<span = class="glyphicon glyphicon-th"></span>
					 &nbsp;Dashboard</a></li>
					<li><a href="NewPost.php">
					<span = class="glyphicon glyphicon-list"></span>
					&nbsp;New Post</a></li>
					<li class="active"><a href="Categories.php">
					<span = class="glyphicon glyphicon-tags"></span>
					&nbsp;Categories</a></li>
					<li><a href="Admin.php">
					<span = class="glyphicon glyphicon-user"></span>
					&nbsp;Manage Admin</a></li>
					<li><a href="Dashboard.php">
					<span = class="glyphicon glyphicon-comment"></span>
					&nbsp;Comments</a></li>
					<li><a href="Blog.php">
					<span = class="glyphicon glyphicon-equalizer"></span>
					&nbsp;Live Blog</a></li>
					<li><a href="Lagout.php">
					<span = class="glyphicon glyphicon-log-out"></span>
					&nbsp;Lagout</a></li>
				</ul>
			</div>
			<div class="col-xs-10">
				<div class="page-title"><h1>Manage Category</h1></div>
				<?php echo Message(); ?>
				<?php echo SuccessMessage(); ?>
				<div>
					<div class="row">
						<div class="col-md-12 ">
							<h3>New Category</h3>
							<form method="POST" action="Categories.php">
								<fieldset>
									<div class="form-group">
										<label for="cat_name">Name</label>
										<input class="form-control input-md" type="text" name="cat_name" placeholder="Name">
									</div>
									<div class="form-group">
										<input class="form-control btn btn-primary" type="submit" name="submit_category" value="Add">
									</div>
								</fieldset>
							</form>
						</div>
					</div>
					<div id="cat_table">
						<?php echo deleteCategory(); ?>
						<h3>Category List</h3>
						<table class="table table-striped table-hover">
							<tr>
								<th>Number</th>
								<th>Category Name</th>
								<th>Date Added</th>
								<th>Added By</th>
								<th>Update</th>
								<th>Delete</th>
							</tr>
							<?php
								$num = 1;
								$viewSql = "SELECT * FROM cms_category ORDER BY cat_id DESC";
								$exec = Query($viewSql);
								while($data = mysqli_fetch_assoc($exec)) {
									$cat_id = $data['cat_id'];
									$cat_dateTime = $data['cat_datetime'];
									$cat_name = $data['cat_name'];
									$cat_creator = $data['cat_creator'];
									echo "<tr>
										<td>$num</td>
											<td>$cat_name</td>
											<td>$cat_dateTime</td>
											<td>$cat_creator</td>
											<td><input class='btn btn-success' type='button' name='update' value='Edit'></td>
											<td><a href='Categories.php?delete_attempt=$cat_id&name=$cat_name'><button class='btn btn-danger'>Delete</button></a></td>
										</tr>
									";
									$num++;
								} 
								mysqli_close($con);
							?>
						</table>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<script type="text/javascript" src="jquery.js"></script>
</body>
</html>