<?php
require_once("../init.php");
$output=[
  "count"=>0,
  "pageSize"=>15,
  "pageCount"=>0,
  "pageNo"=>0,
  "data"=>[]
];
@$kw=$_REQUEST["kw"];
@$pno=$_REQUEST["pno"];
if(!$pno) $pno=0;
$sql="SELECT * FROM wr_goods";
if($kw){
//  $kws=explode(" ",$kw);//js:split
//  for($i=0;$i<count($kws);$i++){
//    $kws[$i]=" title like '%".$kws[$i]."%'";
//  }
//  $where=" where ".implode(" and ",$kws);//js:join
  $where=" where title like '%".$kw."%'";
  $sql=$sql.$where;
}
$output["count"]=count(sql_execute($sql));
$sql=$sql." limit ".($pno*$output["pageSize"])." ,".$output["pageSize"];//limit 0,15
$result=sql_execute($sql);
$output["pageCount"]=
  ceil($output["count"]/$output["pageSize"]);
$output["pageNo"]=$pno;
$output["data"]=$result;
echo json_encode($output);