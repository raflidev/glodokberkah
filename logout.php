<?php
session_start();
if(isset($_SESSION['login_masuk'])){
    session_destroy();
    echo 'Kamu telah berhasil logout. <a href="index.php">Kembali</a>';
}else{
    echo 'Sesi kamu sudah habis, silakan login. <a href="login.php">Login!</a>';
}
?>