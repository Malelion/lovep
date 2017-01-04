<?php
/**
 * Created by PhpStorm.
 * User: Melon
 * Date: 2016/12/14
 * Time: 0:10
 */
require_once(dirname(__DIR__) . "/util/ActionUtil.php");
require_once(dirname(__DIR__)."/service/s-project.php");

$type = params('type');
if($type == 'list'){
    $curPage = params('curPage');
    $pageSize = params('pageSize');
    $curPage = is_numeric($curPage)?$curPage:1;
    $pageSize = is_numeric($pageSize)?$pageSize:10;
    writeReturnData(RCODE_SUCCESS,"查询成功！",getArticleList($curPage,$pageSize));
}elseif($type == 'one'){
    $articleNo = params('articleNo');
    $articleNo = is_numeric($articleNo)?$articleNo:0;
    writeReturnData(RCODE_SUCCESS,"查询成功！",getArticleContext($articleNo));
}else{
    writeReturnData(RCODE_PARAM_ERROR,"参数错误，请检查！");
}