<div class="sidebar">
    <?php
        if(empty($_SESSION['login'])){?>
        <div class="sign">
            <div class="loginbtn"><a href="login.php">Login</a></div>
            <div class="registerbtn"><a href="register.php">Register</a></div>
        </div>

        <?php } else {?>
        <div class="logoutbtn"><a href="logout.php">Logout</a></div>
        <?php } ?>
        <h3>Kategori:</h3>

    <a href="kategori.php?id=?????"><div class="kategori">Peralatan Elektronik</div><a>
        


    <?php
    $query = mysqli_query($conn,"SELECT distinct kategori from detailbarang");
    while($subcategory = mysqli_fetch_array($query)){ ?>
        <ul>
            <li>
                 <div class="kategori-list">
                <a href="kategori.php?id=<?= $subcategory[0]?>"><?= $subcategory[0]?></a>
                    
                 </div>
            </li>
        </ul>
    <?php } ?>
</div>
    
