<?php
include 'koneksi.php';
?>

<form action="aksi/register.php" method="post">
    <label for="">username</label>
    <input type="text" name="username" id=""><br>
    <label for="">password</label>
    <input type="password" name="password1" id=""> <br>
    <label for="">ulangi password</label>
    <input type="password" name="password2" id="">
    <button type="submit">Daftar</button>
</form>
