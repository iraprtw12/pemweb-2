<?php
require_once("dbkoneksi.php");

$sql = "DELETE FROM pelanggan WHERE id=?;";
$stmt = $conn->prepare($sql);
$stmt->execute([$_GET['id']]);

header('location:list.php');
?>