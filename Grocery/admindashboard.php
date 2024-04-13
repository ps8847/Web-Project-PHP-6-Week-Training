<?php
@session_start();
if (!isset($_SESSION['username'])) {
   header("Location:adminlogin.php");
    exit();
}
?>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="AdditionalFiles/css/bootstrap.css">
    <link rel="stylesheet" href="AdditionalFiles/fontawesome/css/all.css">

    <title>Document</title>
    <style>
    .card {
        background-color: #fff;
        border-radius: 10px;
        border: none;
        position: relative;
        margin-bottom: 30px;
    }
    .l-bg-cherry {
        background: linear-gradient(to right, #493240, #f09) !important;
        color: #fff;
    }
    
    .l-bg-blue-dark {
        background: linear-gradient(to right, #373b44, #4286f4) !important;
        color: #fff;
    }
    
    .l-bg-green-dark {
        background: linear-gradient(to right, #0a504a, #38ef7d) !important;
        color: #fff;
    }
    
    .l-bg-orange-dark {
        background: linear-gradient(to right, #a86008, #ffba56) !important;
        color: #fff;
    }
    
    .l-bg-cyan {
        background: linear-gradient(135deg, #289cf5, #84c0ec) !important;
        color: #fff;
    }
    
    .l-bg-green {
        background: linear-gradient(135deg, #23bdb8 0%, #43e794 100%) !important;
        color: #fff;
    }
    
    .l-bg-orange {
        background: linear-gradient(to right, #f9900e, #ffba56) !important;
        color: #fff;
    }
    
    .l-bg-cyan {
        background: linear-gradient(135deg, #289cf5, #84c0ec) !important;
        color: #fff;
    }
</style>
</head>
<body>
<?php
include_once "adminhome.php";
?>
<br>
<div class="col-md-12 ">
    <div class="row ">
    <?php
        include_once "connection.php";

        $selectQuery1 = "select * from `bill`";
        $data1 = mysqli_query($con, $selectQuery1);
        $userdata1 = mysqli_num_rows($data1);
            ?>
        <div class="col-xl-12 col-lg-12">
            <div class="card l-bg-cherry">
                <div class="card-statistic-3 p-4">
                    <div class="card-icon card-icon-large"></div>
                    <div class="mb-4">
                        <h5 class="card-title mb-0">Total Orders</h5>
                    </div>
                    <div class="row align-items-center mb-2 d-flex">
                        <div class="col-8">
                            <h2 class="d-flex align-items-center mb-0">
                            <?php echo $userdata1; ?>
                            </h2>
                        </div>
                    </div>
                </div>
                </div>
            </div>
        </div>


        <div class="row ">

        <?php
        include_once "connection.php";

        $selectQuery = "select * from `users`";
        $data = mysqli_query($con, $selectQuery);
        $userdata = mysqli_num_rows($data);
            ?>
            <div class="col-xl-12 col-lg-12">
            <div class="card l-bg-blue-dark">
                <div class="card-statistic-3 p-4">
                    <div class="card-icon card-icon-large"></div>
                    <div class="mb-4">
                        <h5 class="card-title mb-0">Total Customers</h5>
                    </div>
                    <div class="row align-items-center mb-2 d-flex">
                        <div class="col-8">
                            <h2 class="d-flex align-items-center mb-0">
                                <?php echo $userdata; ?>
                            </h2>
                        </div>
                    </div>
                </div>
            </div>
            </div>
        </div>
        
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>