/**
 * Created by Melon on 2016/11/25.
 */
;define(function (require,exports,module) {
    var $ = require("jquery");

    module.exports = {
        getData:function(url,callback){
            $.ajax({
                url: window.config.HOST_PAGE+url,
                type: "GET",
                async: true,
                contentType: 'application/json',
                dataType: "jsonp",
                jsonp: "jsoncallback",
                data: "name=John&location=Boston",
                success: function(data){
                    if(callback)callback(data);
                },
                error:function(XMLHttpRequest, textStatus, errorThrown){

                }
            });
        },
        postData:function(url,jsonData,callback){
            $.ajax({
                url: window.config.HOST_PAGE+url,
                type: "POST",
                async: true,
                contentType: 'application/json',
                dataType: "jsonp",
                jsonp: "jsoncallback",
                data: jsonData,
                success: function(data){
                    if(callback)callback(data);
                },
                error:function(XMLHttpRequest, textStatus, errorThrown){

                }
            });
        }
    };
});
