<?php
/**
 * Created by PhpStorm.
 * User: Melon
 * Date: 2016/12/10
 * Time: 23:07
 */

namespace db;
/**
 * 引入数据库配置
 */
require_once(dirname(__DIR__)."/config/db-config.php");

class dbUtil{

    /**
     * @return \mysqli connection
     */
    private static function connDatabase(){
        $con = mysqli_connect(db_host,db_user,db_password);
        if(!$con){
            die("database could not connect". mysqli_connect_error());
        }
        //设置操作数据库
        mysqli_select_db($con,db_dbname);
        //设置数据的字符集utf-8
        mysqli_set_charset($con,db_charset);

        return $con;
    }

    /**
     * @param $sql 查询SQL
     * @param $callback 查询成功后执行的回调函数
     * @return bool|\mysqli_result 数据结果集
     */
    public static function  queryArrayData($sql,$callback){
        //连接数据库
        $con = self::connDatabase();
        //查询数据
        $result = mysqli_query($con,$sql);
        //关闭数据库连接
        mysqli_close($con);
        //返回Array格式数据
        $i=0;
        $array_result = array();
        while($row = mysqli_fetch_array($result)){
            //$row 同时存在 index=>value,key=>value数据
            $array_result[$i] = $row;
            $i++;
        }
        //回调函数不为空情况下执行回调函数
        if(!empty($callback))call_user_func($callback,$array_result);
        //返回结果集
        return $array_result;
    }
}