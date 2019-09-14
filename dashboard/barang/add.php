<?php
session_start();
if(isset($_SESSION['admin'])){
?>
    <form action="../../aksi/crud/barang/add.php" method="post">
    
        <input type="hidden" name="id" id="">
        <label for="">nama barang</label>
        <input type="text" name="nama" id=""><br>

        <label for="">kategori barang</label>
        <input type="text" name="kategori" id="" required>
        <br>
        <label for="">merk</label>
        <input type="text" name="merk" id="" required>
        <br>
        <label for="">harga</label>
        <input type="number" name="harga" id="" required>
        <br>
        <label for="">stok</label>
        <input type="number" name="stock" id="" required>
        <br>
        <label for="">gambar</label>
        <input type="text" name="gambar" id="" required>
        <br>
        <label for="">deskripsi</label>
        <input type="text" name="deskripsi" id="" required>
        <br>
        <button type="submit">submit</button>
    </form>

<?php 
} else { 
    echo 'Sesi kamu sudah habis, silakan login. <a href="login.php">Login!</a>';
} ?>