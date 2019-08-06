<?php require_once('Include/Sessions.php') ?>
<?php require_once('Include/functions.php') ?>
<?php
$_SESSION['user_id'] = null;
session_destroy();
Redirect_To('Login.php');

?>