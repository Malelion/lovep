<?php
/**
 * Created by PhpStorm.
 * User: Melon
 * Date: 2016/12/12
 * Time: 22:26
 */
require_once(dirname(__DIR__)."/dao/dbUtil.php");
$db = new \db\dbUtil();
$db -> queryData('SELECT * FROM t_article_project',"query_article_project");

function query_article_project($result){
    while($row = mysqli_fetch_array($result)){
        echo $row['id'] . " " . $row['titile'];
    }
}


