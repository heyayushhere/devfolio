<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="<?=site_url('assets/bootstrap/css/bootstrap.min.css')?>" rel="stylesheet">
    <title><?=$page_title?></title>
</head>
<style>
/* .navbar .container {
    background-color: green;
    width: 1000px;

} */
</style>

<body>

    <nav class="navbar navbar-expand-md navbar-dark" style="background-color:green;">
        <div class="container">

            <a class="navbar-brand" href="#">
                <img src="assets/images/wallet.png" alt="" width="30" height="24" class="d-inline-block align-text-top">
                Wellness wallet
            </a>
            <?php
if(isset($_SESSION['Auth'])){ ?>
            <div class="">
                <a class="btn btn-sm btn-dark" href="assets/php/process.php?logout">Logout</a>

            </div>
            <?php
}else{
  ?>
            <div class="">
                <a class="btn btn-sm btn-dark" href="?login">Login</a>
                &nbsp;&nbsp;
                <a class="btn btn-sm btn-dark" href="?signup">Signup</a>
            </div>
            <?php
}
    ?>

        </div>
    </nav>
    <h3 color="green" align="center">login with same id & Password</h3>