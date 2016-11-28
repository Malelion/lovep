/**
 * Created by Melon on 2016/10/30.
 */
;define(function (require,exports,module) {
    var $ = require("jquery");

    var Index = {
        init:function () {
            $(".bar_ul li").on("click",this,this.loadNavData);
            $(".main_body").load("page/project.html");
        },
        loadNavData:function (e) {
            var _datatype = $(this).attr("datatype");
            $(".main_body").load("page/"+_datatype+".html");
        }
    };
    module.exports = Index.init();
});
