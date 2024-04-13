<?php
@session_start();
if (!isset($_SESSION['username'])) {
   header("Location:adminlogin.php");
    exit();
}
?>

<?php
include_once "adminheader2.php"
?>
<?php
include_once "admindashboard.php"
?>