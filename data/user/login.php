<?php
require_once("../init.php");
@$uname = $_REQUEST['uname'] or die('{"code":401,"msg":"uname required"}');
@$upwd = $_REQUEST['upwd'] or die('{"code":402,"msg":"upwd required"}');


$sql = "SELECT uid FROM wr_user WHERE uname='$uname' AND upwd='$upwd'";
$result = mysqli_query($conn,$sql);
if(!$result){       //SQL语句执行失败
  echo('{"code":500, "msg":"db execute err"}');
}else {
  $row = mysqli_fetch_assoc($result);
  if(!$row){        //用户名或密码错误
    echo('{"code":201, "msg":"uname or upwd err"}');
  }else {           //登录成功
    session_start();
    $_SESSION['uid'] = $row['uid'];
    echo('{"code":200, "msg":"login succ"}');
  }
}


