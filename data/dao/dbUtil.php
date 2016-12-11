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
        return $con;
    }

    function  queryData($sql){
        $con = $this->connDatabase();
        mysqli_select_db($con,"lovep");
        $result = mysqli_query($sql);
        while($row = mysql_fetch_array($result))
        {
            echo $row['FirstName'] . " " . $row['LastName'];
            echo "<br />";
        }
        mysqli_close($con);
    }
}