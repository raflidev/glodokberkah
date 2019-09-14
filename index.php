<?php
session_start();
include 'koneksi.php';
print_r($_SESSION);

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
    <link rel="stylesheet" href="assets/style.css">
</head>
<body>
    <div class="navbar">
        <?php
        if(empty($_SESSION['login_masuk'])){?>
        <a href="login.php">Login</a>
        <a href="register.php">Register</a>

        <?php } else {?>
        <a href="logout.php">Logout!</a>
        <?php } ?>
    </div>

    <div class="container">

    <div class="sidebar">
    <div class="category">Kategory:</div>
    <?php
    $query = mysqli_query($koneksi,"select distinct kategori from barang");
    while($row = mysqli_fetch_array($query)){ ?>
        <a href=""><?= $row[0]?></a> 
        <?php } ?>
    </div>

    <div class="main">
    <?php
    $query = mysqli_query($koneksi,"select * from barang");
    while($row = mysqli_fetch_array($query)){
    ?>

    <p>
    <?=$row[2]?><br>
    <?=$row[3]?><br>
    <?=$row[4]?><br>
    <?=number_format($row[5])?><br>
    <a href="detail.php?no=<?= $row[0] ?>">detail</a> |
    <a href="buy.php?no=<?= $row[0] ?>">buy</a>
    </p>

    <?php } ?>
    </div>
    
    
    
    
    </div>
</body>
</html>