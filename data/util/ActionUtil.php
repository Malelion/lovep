<?php
/**
 * Created by PhpStorm.
 * User: Melon
 * Date: 2017/01/02
 * Time: 0:57
 */
require_once(dirname(__DIR__)."/config/project-config.php");
require_once(__DIR__."/ReturnCode.php");

/**
 * @param $key 参数key
 * @return 参数对应的value
 */
function params($key){
    $value = $_GET[$key];
    if(empty($value)){
        $value = $_POST[$key];
    }
    return $value;
}

/**
 * 输出数据到前端 基础版
 * @param $result 需要输出的数据
 */
function writeReturnDataBase($result){
    printDifferByDomain(xToJSONData($result));
}

/**
 * 输出数据到前端 标准版
 * @param $code
 * @param $message
 * @param $result
 */
function writeReturnData($code,$message,$result){
    if(is_null($result)){
        $_result = array("code"=>$code,"message"=>$message);
    }else{
        $_result = array("code"=>$code,"message"=>$message,"result"=>json_decode(xToJSONData($result)));
    }
    printDifferByDomain(json_encode($_result));
}

/**
 * 根据是否跨域标识输出不同的结果
 * @param $result 需要输出的数据
 */
function printDifferByDomain( $result){
    $jsoncallback = params('jsoncallback');
    if(empty($jsoncallback)){
        print  $result;
    }else{
        print $jsoncallback.'('.$result.')';
    }
}

/**
 * 将Object、Array转换为JSON格式数据
 * @param $result 需要转换的数据
 * @return null|string
 */
function xToJSONData($result){
    //处理几种类型的返回值
    $_result = null;
    if(is_null($result)){
        return null;
    }elseif(is_array($result)){
        $_result = json_encode($result);
    }elseif(is_object($result)){
        $_result = json_encode(get_object_vars($result));
    }else{
        $_result = $result;
    }
    return $_result;
}