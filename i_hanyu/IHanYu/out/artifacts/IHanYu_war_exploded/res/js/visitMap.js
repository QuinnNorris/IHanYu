/**
 * Created by 13262 on 2017/5/2.
 */
function init() {
    mapLoad('AMapWeb');
    mapLoad('AMapMobile');
}

function mapLoad(DIVId) {
    var map = new AMap.Map(DIVId, {
        resizeEnable: true,
        zoom: 15,
        center: [lng, lat],
        lang: 'zh_en'
    });
    var marker = new AMap.Marker({
        position:[lng, lat]
    });
    marker.setMap(map);

}
