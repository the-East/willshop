<?php
require_once("../init.php");
$output = [];
//人气
$sql = "SELECT *  FROM wr_goods   ORDER BY sales LIMIT 4";
$result = mysqli_query($conn, $sql);
$output['pop'] = mysqli_fetch_all($result, MYSQLI_ASSOC);
//新品
$sql = "SELECT *  FROM wr_goods  ORDER BY gid  DESC LIMIT 6";
$result = mysqli_query($conn, $sql);
$output['new'] = mysqli_fetch_all($result, MYSQLI_ASSOC);
//精品
$sql = "SELECT *  FROM wr_goods WHERE fid=0  LIMIT 8";
$result = mysqli_query($conn, $sql);
$output['good'] = mysqli_fetch_all($result, MYSQLI_ASSOC);
//生活
$sql = "SELECT *  FROM wr_goods WHERE fid=1  LIMIT 8";
$result = mysqli_query($conn, $sql);
$output['life'] = mysqli_fetch_all($result, MYSQLI_ASSOC);
//粤购
$sql = "SELECT *  FROM wr_goods WHERE fid=2  LIMIT 6";
$result = mysqli_query($conn, $sql);
$output['yue'] = mysqli_fetch_all($result, MYSQLI_ASSOC);

echo json_encode($output);