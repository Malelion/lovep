<?php
/**
 * Created by PhpStorm.
 * User: Melon
 * Date: 2016/12/12
 * Time: 22:26
 */

/**
 * 引入数据库操作工具类
 */
require_once(dirname(__DIR__)."/dao/dbUtil.php");

/**
 * @param $curPage 当前页
 * @param $pageSize 每页文章条数
 * @return bool|mysqli_result 文章列表，不含内容
 */
function getArticleList($curPage,$pageSize){
    $start = ($curPage - 1)*$pageSize;
    $result = \db\dbUtil:: queryArrayData('SELECT articleNo,titile,keywords,showTime FROM t_article_project LIMIT '.$start.','.$pageSize,null);
    return $result;
}

/**
 * @param $articleNo 文章编号
 * @return 文章内容
 */
function getArticleContext($articleNo){
    $result = \db\dbUtil::queryArrayData('SELECT context FROM t_article_project WHERE articleNo = '.$articleNo,null);
    return $result[0]['context'];
}


//测试获取数据，无正式接口使用
function query_article_project_test(){
    $result = \db\dbUtil::queryArrayData('SELECT * FROM t_article_project',null);
    foreach($result as $row){
        foreach($row as $x=>$value){
            echo $x, '   ' , $value,".   .";
        }
        echo "<br><br><br>";
    }
}
//query_article_project_test();


