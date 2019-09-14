<?php 
$id = $_GET["no"];
include 'koneksi.php';
session_start();
if(empty($_SESSION['login_masuk'])){?>
    <a href="login.php">Login</a> or
    <a href="register.php">Register</a>
    
    <?php 
    } else {?>
    <a href="logout.php">Logout!</a>
    <?php } 

?>
