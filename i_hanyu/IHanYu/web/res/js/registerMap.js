/**
 * Created by 13262 on 2017/5/16.
 */

function mapInit() {
    //加载地图
    var map = new AMap.Map("map", {
        resizeEnable: true,
        zoom: 10,
        city: '上海市',
        lang: 'zh_en'
    });

    //输入提示
    var auto = new AMap.Autocomplete({
        input: "suggestId"
    });
    var placeSearch = new AMap.PlaceSearch({
        map: map,
        lang: 'zh_en',
        pageSize: 10
    });  //构造地点查询类
    AMap.event.addListener(auto, "select", select);//注册监听，当选中某条记录时会触发
    function select(e) {
        placeSearch.setCity(e.poi.adcode);
        placeSearch.search(e.poi.name,function(status,result){
            if(status=="error"||status=="no_data")
            {
                ;
            }
            if(status=='complete'){
                document.getElementById("coordinate").value = result.poiList.pois[0].location.getLng() + " " + result.poiList.pois[0].location.getLat();
            }
        });  //关键字查询查询
    }

    //点击事件
    map.on('click',function (e) {
        var lng=e.lnglat.getLng();
        var lat=e.lnglat.getLat();
        marker=new AMap.Marker({
            position:[lng,lat]
        });
        map.clearMap();
        map.add(marker);
        document.getElementById("coordinate").value = lng + " " + lat;
    })
}
