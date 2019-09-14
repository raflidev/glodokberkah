<?php
$json = file_get_contents("assets/js/indonesia.json");
$array = json_decode($json, true);
?>
<form action="" method='post'>
<select name="provinsi" id="">
<?php 
foreach ($array as $r) {
    foreach ($r as $p => $value) {?>

    <option value='<?=$p?>'><?=$p?></option>

  <?php }
}?>
</select>
<button type="submit">asd</button>
</form>


<form action="" method='post'>
<select name="kota" id="">
<?php 
foreach ($array as $r) {
    foreach ($r as $p) {
        foreach ($p as $kota) {?>

    <option value='<?=$kota?>'><?=$kota?></option>

    <?php } }
}?>
</select>
<button type="submit">asd</button>
</form>