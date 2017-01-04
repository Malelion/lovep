/**
 * Created by Melon on 2016/10/30.
 */
;define(function (require,exports,module) {
    var $ = require("jquery");
    var queryData = require("static/service/queryData");

    var Index = {
        init:function () {
            $(".bar_ul li").on("click",this,this.loadNavData);
            $(".main_body").load("page/mainPage/project.html");
        },
        loadNavData:function (e) {
            var _datatype = $(this).attr("datatype");
            $(".main_body").load("page/mainPage/"+_datatype+".html");
        },
        initProjectList:function(){
            queryData.getData("data/view/v-project.php?type=list",function(data){
                alert(data);
            });
        }
    };
    module.exports = Index;
});
