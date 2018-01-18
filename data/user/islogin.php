<?php
require_once("../init.php");
session_start();
@$uid=$_SESSION["uid"];
$output=[
    "ok"=>0,
];
if($uid){
    $sql="select uname from wr_user where uid= '$uid'";
    $result=mysqli_query($conn,$sql);
    $output=[
    "ok"=>1,
    "uname"=>mysqli_fetch_row($result)[0]
    ];
    echo json_encode($output);
}
else
    echo json_encode($output);


