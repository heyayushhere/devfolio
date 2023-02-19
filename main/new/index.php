<!DOCTYPE html>
<html lang="en">
<?php
    session_start();
    include('header.php');
    // include('admin/db_connect.php');

	// $query = $conn->query("SELECT * FROM system_settings limit 1")->fetch_array();
	// foreach ($query as $key => $value) {
	// 	if(!is_numeric($key))
	// 		$_SESSION['setting_'.$key] = $value;
	// }
    // ?>

<style>
header.masthead {
    background: url(assets/img/<?php echo $_SESSION['setting_cover_img'] ?>);
    background-repeat: no-repeat;
    background-size: cover;
}
</style>

<body id="page-top">
    <!-- Navigation-->
    <div class="toast" id="alert_toast" role="alert" aria-live="assertive" aria-atomic="true">
        <div class="toast-body text-white">
        </div>
    </div>
    <nav class="navbar navbar-expand-lg navbar-light fixed-top py-3" id="mainNav">
        <div class="container">
            <!-- <a class="navbar-brand js-scroll-trigger" href="./"><?php echo $_SESSION['setting_name'] ?></a> -->
            <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse"
                data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false"
                aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
            <div class="collapse navbar-collapse" id="navbarResponsive">
                <ul class="navbar-nav ml-auto my-2 my-lg-0">
                    <li class="nav-item"><a class="nav-link js-scroll-trigger" href="index.php?page=home">Home</a></li>
                    <li class="nav-item"><a class="nav-link js-scroll-trigger" href="index.php?page=cart_list"><span>
                                <span class="badge badge-danger item_count">0</span> <i class="fa fa-shopping-cart"></i>
                            </span>Cart</a></li>
                    <li class="nav-item"><a class="nav-link js-scroll-trigger" href="index.php?page=about">About</a>
                    </li>
                    <?php if(isset($_SESSION['login_user_id'])): ?>
                    <li class="nav-item"><a class="nav-link js-scroll-trigger"
                            href="admin/ajax.php?action=logout2"><?php echo "Welcome ". $_SESSION['login_first_name'].' '.$_SESSION['login_last_name'] ?>
                            <i class="fa fa-power-off"></i></a></li>
                    <?php else: ?>
                    <li class="nav-item"><a class="nav-link js-scroll-trigger" href="index1.php"
                            id="login_now">Login</a>
                    </li>
                    <?php endif; ?>
                </ul>
            </div>
        </div>
    </nav>


    <?php include('footer.php') ?>
</body>



</html>