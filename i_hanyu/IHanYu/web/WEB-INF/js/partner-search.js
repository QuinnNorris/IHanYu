/**
 * Created by dell2 on 2017/5/13.
 */
var goodAt=new Array();
var availableTime=new Array();
var temp=new Array();
var partnerId=0;

$(document).ready(function(){
    /*搜索标签部分（非价格）*/
    $(".table-item").click(function(){
        partnerId=0;
        var title_require_search=document.getElementById("title-require-search");
        var add_item_class=$(this).parent().prev().children().html().split("<br>")[1];/*添加的标签innHTML的第一部分,添加标签的类*/
        var add_item_content=$(this).children(".table-item-e").html();/*添加的标签innHTML的第二部分，添加的标签的项*/
        var list_name=$(this).children(".temp-save").html().split(" ")[0];/*对应的js存储数组的名称*/
        var list_id=$(this).children(".temp-save").html().split(" ")[1];/*对应的项储存的id*/
        var add_item="<div class='require-card '><div>"+add_item_class+":"+add_item_content+"</div><p class='temp-save'>"+list_name+":"+list_id+"</p></div>";/*新的标签项*/
        var title_require_search_list=title_require_search.innerHTML.split("&nbsp;");
        title_require_search_list[1]+=add_item;/*原来的标签行的HTML加上新的标签的HTML*/
        title_require_search.innerHTML=title_require_search_list[0]+'&nbsp;'+title_require_search_list[1]+'&nbsp;'+title_require_search_list[2];
        $(this).hide();/*控制该标签所在的项隐藏*/
        $(".require-card").on("click",function(){
            $(this).hide();
            /*下面删除一个标签搜索也需要进行的页面调整*/
            var delete_item_class="."+$(this).children("div").html().split(':')[1].split(' ')[0];/*控制该标签所在的项的类*/
            var delete_item_array=$(this).children("p").html().split(':')[0];
            var delete_item_id=$(this).children("p").html().split(':')[1];
            switch (delete_item_array){
                case "goodAt":
                    deleteArray(goodAt,delete_item_id);
                    break;
                case "availableTime":
                    deleteArray(availableTime,delete_item_id);
                    break;
            }
            $(delete_item_class).show();
            refreshCards();
        });
        /*下面选中一个搜索标签以后，页面需要做的调整*/
        switch (list_name){
            case "goodAt":
                goodAt.push(list_id);
                break;
            case "availableTime":
                availableTime.push(list_id);
                break;
        }
        refreshCards();
    })

    /*搜索标签部分（价格）*/
    $(".price-start").blur(function(){
        var start_price=$(this).val();/*价格区间的下限*/
        var end_price=$(".price-end").val();/*价格区间的上限*/
        var start_price_num=parseFloat(start_price);
        var end_price_num=parseFloat(end_price);
        if(start_price!=""&&end_price!=""){
            if(start_price_num<=end_price_num) {
                $(".require-card-price").hide();
                var title_require_search=document.getElementById("title-require-search");
                var title_require_search_list=title_require_search.innerHTML.split("&nbsp;");
                var add_item="<div class='require-card'><div>Price:"+start_price+"-"+end_price+"</div></div>";/*新的标签项*/
                title_require_search_list[1]+=add_item;/*原来的标签行的HTML加上新的标签的HTML*/
                title_require_search.innerHTML=title_require_search_list[0]+'&nbsp;'+title_require_search_list[1]+'&nbsp;'+title_require_search_list[2];
                $(".require-card").on("click",function(){
                    $(this).hide();
                    /*下面删除一个价格标签搜索也需要进行的页面调整*/

                    /**
                     *
                     */
                });
                /*下面选中一个价格搜索标签以后，页面需要做的调整*/
                /**
                 *
                 */
            }
        }
    });
    $(".price-end").blur(function(){
        var start_price=$(".price-start").val();/*价格区间的下限*/
        var end_price=$(this).val();/*价格区间的上限*/
        var start_price_num=parseFloat(start_price);
        var end_price_num=parseFloat(end_price);
        if(start_price!=""&&end_price!=""){
            if(start_price_num<=end_price_num) {
                $(".require-card-price").hide();
                var title_require_search = document.getElementById("title-require-search");
                var title_require_search_list = title_require_search.innerHTML.split("&nbsp;");
                var add_item = "<div class='require-card require-card-price'><div>Price:" + start_price + "-" + end_price + "</div></div>";
                /*新的标签项*/
                title_require_search_list[1] += add_item;
                /*原来的标签行的HTML加上新的标签的HTML*/
                title_require_search.innerHTML = title_require_search_list[0] + '&nbsp;' + title_require_search_list[1] + '&nbsp;' + title_require_search_list[2];
                $(".require-card").on("click", function () {
                    $(this).hide();
                    /*下面删除一个价格标签搜索也需要进行的页面调整*/
                    /**
                     *
                     */

                });
                /*下面选中一个价格搜索标签以后，页面需要做的调整*/
                /**
                 *
                 */
            }
        }
    });
    /*翻页 上一页*/
    $(".left-arrow").click(function(){
        partnerId=parseInt($("#partnerId").html());
        if(partnerId>0){ partnerId=partnerId-1; }
        refreshCards();
    });
    /*翻页 下一页*/
    $(".right-arrow").click(function(){
        partnerId=parseInt($("#partnerId").html());
        partnerId=partnerId+1;
        refreshCards();
    });
});

function refreshCards(){
    var JSON_partnerId="{\"partnerId\":\""+partnerId+"\"}";
    var JSON_goodAt="{";
    var JSON_availableTime="{";
    for(var i=0;i<goodAt.length;i++){
        if(i==0)
            JSON_goodAt=JSON_goodAt+"\""+i+"\":\""+goodAt[i]+"\"";
        else
            JSON_goodAt=JSON_goodAt+",\""+i+"\":\""+goodAt[i]+"\"";
    }
    for(var i=0;i<availableTime.length;i++){
        if(i==0)
            JSON_availableTime=JSON_availableTime+"\""+i+"\":\""+availableTime[i]+"\"";
        else
            JSON_availableTime=JSON_availableTime+",\""+i+"\":\""+availableTime[i]+"\"";
    }
    JSON_availableTime=JSON_availableTime+"}";
    JSON_goodAt=JSON_goodAt+"}";
    var JSONString_availableTime=JSON.stringify(JSON.parse(JSON_availableTime));
    var JSONString_goodAt=JSON.stringify(JSON.parse(JSON_goodAt));
    var JSONString_partnerId=JSON.stringify(JSON.parse(JSON_partnerId));
    $("#info-cards").load("teacherSearchTag",{
        "JSONString_availableTime":JSONString_availableTime,
        "JSONString_goodAt":JSONString_goodAt,
        "JSONString_partnerId":JSONString_partnerId
    });
}
function deleteArray(arr,val){
    while(temp.length>0){temp.pop();}
    var index=0;
    var i;
    for(i=0;i<arr.length;i++){
        if(arr[i]!=val){
            temp[index]=arr[i];
            index++;
        }
    }
    while(arr.length>0){arr.pop();}
    for(i=0;i<temp.length;i++){
        arr.push(temp[i]);
    }
}