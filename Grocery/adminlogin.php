<?php
@session_start();
$username = $password = $usernameError = $passwordError ="";

if (isset($_POST['loginadmin'])) {
    $username = $_POST['username'];
    $password = $_POST['password'];
    
    include_once "connection.php";
    $selectcmd = "select * from admin_login where username='$username'";
    $data = mysqli_query($con, $selectcmd);
    if (mysqli_num_rows($data) == 0) {
        $usernameError = "invalid Username";
    } else {
        $row = mysqli_fetch_assoc($data);
        if ($row['password'] == $password) {
            $_SESSION['username'] = $username;
            header("Location:adminhome.php");
        } else {
            $passwordError = "Incorrect password";
        }
    }
}
?>

<!doctype html>
<html class="no-js" lang="">
   <meta http-equiv="content-type" content="text/html;charset=UTF-8" />
   <head>
      <meta charset="utf-8">
      <meta http-equiv="X-UA-Compatible" content="IE=edge">
      <title>Admin Login Page</title>
      <meta name="viewport" content="width=device-width, initial-scale=1">
      <?php
      include_once "headerfiles.php";
      ?>
      <style>
          .error{
              color: red !important;
          }

          body{
    color:black;
    background-image:url("imgs/thh.jpg");
    background-size: 100% 100%;
    background-repeat: no-repeat;
    background-attachment: fixed;
    background-blend-mode:lighten;
  }
          </style>
     </head>
     <body>
     <?php
      include_once "adminheader1.php";
      ?>   

     <div class="sufee-login d-flex align-content-center flex-wrap">
         <div class="container">
            <div class="login-content">
               <div class="login-form mt-150">
                    <form action="<?php echo $_SERVER['PHP_SELF']; ?>" method="post">
                     <div class="form-group">
                     <h3><b>ADMIN LOGIN</b></h3>
                        <label for="username"><b>USERNAME</b></label>
                        <input type="text" name="username" value="<?php echo $username; ?>" class="form-control" placeholder="Username" required>
                        <?php
                    if ($usernameError != '') {
                        echo "<label class='error'>$usernameError</label>";
                    }
                    ?>
                     </div>
                     <div class="form-group">
                        <label for="password"><b>Password</b></label>
                        <input type="password" name="password" value="<?php echo $password; ?>"  class="form-control" placeholder="Password" required>
                        <?php
                    if ($passwordError != '') {
                        echo "<label class='error'>$passwordError</label>";
                    }
                    ?>


                     </div>
                     <button type="submit" name="loginadmin" class="btn btn-success btn-flat m-b-30 m-t-30">Sign in</button>
					</form>
               </div>
            </div>
         </div>
      </div>
      <?php
      include_once "footerfiles.php";
      ?>
      <?php
      include_once "adminfooter.php";
      ?>
   </body>
</html>