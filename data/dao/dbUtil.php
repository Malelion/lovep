<?php
/**
 * Created by PhpStorm.
 * User: Melon
 * Date: 2016/12/10
 * Time: 23:07
 */

namespace db;


class dbUtil
{

    function connDatabase(){
        $con = mysqli_connect("localhost","root","root");
        if(!$con){
            die("database could not connect". mysqli_connect_error());
        }
        //设置操作数据库
        mysqli_select_db($con,"lovep");
        //设置数据的字符集utf-8
        mysqli_set_charset($con,"utf8");
        return $con;
    }

    function  queryData($sql,$callback){
        $con = $this->connDatabase();
        $result = mysqli_query($con,$sql);
        mysqli_close($con);
        call_user_func($callback,$result);
    }
}