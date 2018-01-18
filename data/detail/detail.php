<?php
require_once("../init.php");

@$gid=$_REQUEST["gid"];
$sql="SELECT * FROM wr_goods a ,wr_goods_pic b WHERE a.gid=$gid AND b.gid=$gid";
$result=mysqli_query($conn,$sql);
$rows=mysqli_fetch_all($result,MYSQLI_ASSOC);
echo json_encode($rows);


