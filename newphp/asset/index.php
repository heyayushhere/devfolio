<!DOCTYPE html>
<html lang="en">
<?php
    // session_start();
    include('header.php');
    // include('admin/db_connect.php');

	// $query = $conn->query("SELECT * FROM system_settings limit 1")->fetch_array();
	// foreach ($query as $key => $value) {
	// 	if(!is_numeric($key))
	// 		$_SESSION['setting_'.$key] = $value;
	// }
    // ?>
<?php include('nav.php')?>
<?php include('mycollection/index.php') ?>
<?php include('footer.php') ?>
</body>



</html>