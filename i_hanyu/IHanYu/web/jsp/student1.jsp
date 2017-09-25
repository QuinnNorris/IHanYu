<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<title>爱汉语</title>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width,minimum-scale=1.0,maximum-scale=1.0"/>
	<link rel="stylesheet" type="text/css" href="../res/css/student1.css">
</head>
<body>
<div class="main">
	<div class="head" id="head1">
		<div class="space-image space-row"></div>
		<div class="image"></div>
		<div class="image-space-items space-row"></div>
		<div class="items">
			<div class="item">首页<br/>Home</div>
			<div class="item">汉语教师<br/>Chinese Teacher</div>
			<div class="item">语伴<br/>Language Partner</div>
		</div>
		<div class="items-space-login-regist space-row"></div>
		<div class="login-regist">
			<div class="login-regist-item" id="login">登录<br/>Login</div>
			<div class="login-regist-item" id="regist">注册<br/>Regist</div>
			<div class="user">
				<img class="user_head" src='../res/img/1.png' >
				<div class="user_name">albert </div>
			</div>
			<div class="user_item" >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;个人中心</div>
			<div class="user_item" >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;首页</div>
			<div class="user_item" >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;教师</div>
			<div class="user_item" >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;语伴</div>
			<div class="user_item" >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;退出</div>
		</div>
		<div class="login-regist-space space-row"></div>
	</div>
	<div class="content">
		<div class="progresses">
			<div class="progress progress-space"></div>
			<div class="progress progress-doing">
				<span>1</span>账户信息
			</div>
			<div class="progress progress-not">
				<span>2</span>个人信息
			</div>
			<div class="progress progress-not">
				<span>3</span>语伴信息
			</div>
			<div class="progress progress-space"></div>
		</div>
		<form class="info" class="info" action="registerOfStudent1.action" id="account-info" method="post">
			<div class="info-label">账户信息</div>
			<div class="info-content">
				<div class="info-line">
					<div class="info-line-left">邮箱</br>Email</div>
					<div class="info-line-middle">
						<div class="info-input-icon info-email-icon"></div>
						<input type="text" class="info-input" name="email" id="email">
					</div>
					<div class="info-line-right info-line-email-note"></div>
				</div>
				<div class="info-line">
					<div class="info-line-left">密码</br>Password</div>
					<div class="info-line-middle">
						<div class="info-input-icon info-pw-icon"></div>
						<input type="password" class="info-input" name="password" id="pw">
					</div>
					<div class="info-line-right info-line-pw-note"></div>
				</div>
				<div class="info-line">
					<div class="info-line-left">密码强度</br>Password Strength</div>
					<div class="info-line-middle info-line-ps">
						<div class="info-line-middle-item"></div>
						<div class="info-line-middle-item"></div>
						<div class="info-line-middle-item"></div>
					</div>
					<div class="info-line-right"></div>
				</div>
				<div class="info-line">
					<div class="info-line-left">确认密码</br>Confirm Password</div>
					<div class="info-line-middle">
						<div class="info-input-icon info-ps-icon"></div>
						<input type="password" class="info-input" name="passwordConfirmation" id="pw_confirm">
					</div>
					<div class="info-line-right info-line-ps-note"></div>
				</div>
				<div class="info-line">
					<div class="info-line-left"></div>
					<div class="info-line-middle info-line-commit">
						<div class="info-commit">Next</div>
					</div>
					<div class="info-line-right"></div>
				</div>
			</div>
		</form>
	</div>
</div>
</body>
<script type="text/javascript" src="../res/js/jquery-3.2.0.min.js"></script>
<script type="text/javascript" src="../res/js/header.js"></script>
<script type="text/javascript" src="../res/js/student1.js"></script>
<script type="text/javascript" src="../res/js/md5.js"></script>
<script type="text/javascript">
    function previewImage(file)
    {
        var MAXWIDTH  = 260;
        var MAXHEIGHT = 180;
        var div = document.getElementById('preview');
        if (file.files && file.files[0])
        {
            div.innerHTML ='<img id=imghead>';
            var img = document.getElementById('imghead');
            img.onload = function(){
                var rect = clacImgZoomParam(MAXWIDTH, MAXHEIGHT, img.offsetWidth, img.offsetHeight);
                img.width  =  rect.width;
                img.height =  rect.height;
//                img.style.marginLeft = rect.left+'px';
            }
            var reader = new FileReader();
            reader.onload = function(evt){img.src = evt.target.result;}
            reader.readAsDataURL(file.files[0]);
        }
        else //兼容IE
        {
            var sFilter='filter:progid:DXImageTransform.Microsoft.AlphaImageLoader(sizingMethod=scale,src="';
            file.select();
            var src = document.selection.createRange().text;
            div.innerHTML = '<img id=imghead>';
            var img = document.getElementById('imghead');
            img.filters.item('DXImageTransform.Microsoft.AlphaImageLoader').src = src;
            var rect = clacImgZoomParam(MAXWIDTH, MAXHEIGHT, img.offsetWidth, img.offsetHeight);
            status =('rect:'+rect.top+','+rect.left+','+rect.width+','+rect.height);
            div.innerHTML = "<div id=divhead style='width:"+rect.width+"px;height:"+rect.height+"px;margin-top:"+rect.top+"px;"+sFilter+src+"\"'></div>";
        }
    }
    function clacImgZoomParam( maxWidth, maxHeight, width, height ){
        var param = {top:0, left:0, width:width, height:height};
        if( width>maxWidth || height>maxHeight )
        {
            rateWidth = width / maxWidth;
            rateHeight = height / maxHeight;

            if( rateWidth > rateHeight )
            {
                param.width =  119;
                param.height = 119;
            }else
            {
                param.width = 119;
                param.height = 119;
            }
        }

        param.left = Math.round((maxWidth - param.width) / 2);
        param.top = Math.round((maxHeight - param.height) / 2);
        return param;
    }
//    var map = new BMap.Map("l-map");
//    map.centerAndZoom("上海", 12);
//    map.enableScrollWheelZoom();    //启用滚轮放大缩小，默认禁用
//    map.enableContinuousZoom();    //启用地图惯性拖拽，默认禁用
//
//    map.addControl(new BMap.NavigationControl());  //添加默认缩放平移控件
//    map.addControl(new BMap.OverviewMapControl()); //添加默认缩略地图控件
//    // map.addControl(new BMap.OverviewMapControl({ isOpen: true, anchor: BMAP_ANCHOR_BOTTOM_RIGHT }));   //右下角，打开
//
//    var localSearch = new BMap.LocalSearch(map);
//    localSearch.enableAutoViewport(); //允许自动调节窗体大小
//    var ac = new BMap.Autocomplete(    //建立一个自动完成的对象
//        {"input" : "suggestId"
//            ,"location" : map
//        });
//    function searchByStationName() {
//        map.clearOverlays();//清空原来的标注
//        var keyword = document.getElementById("suggestId").value;
//        localSearch.setSearchCompleteCallback(function (searchResult) {
//            var poi = searchResult.getPoi(0);
//            document.getElementById("coordinate").value = poi.point.lng + "," + poi.point.lat;
//            map.centerAndZoom(poi.point, 13);
//            var marker = new BMap.Marker(new BMap.Point(poi.point.lng, poi.point.lat));  // 创建标注，为要查询的地方对应的经纬度
//            map.addOverlay(marker);
//            var content = document.getElementById("suggestId").value + "<br/><br/>经度：" + poi.point.lng + "<br/>纬度：" + poi.point.lat;
//            var infoWindow = new BMap.InfoWindow("<p style='font-size:14px;'>" + content + "</p>");
//            marker.addEventListener("click", function () { this.openInfoWindow(infoWindow); });
//            // marker.setAnimation(BMAP_ANIMATION_BOUNCE); //跳动的动画
//        });
//        localSearch.search(keyword);
//    }
//    function setMark(e){
//        map.clearOverlays();
//        var marker = new BMap.Marker(e.point);
//        map.addOverlay(marker);
//        document.getElementById("coordinate").value = e.point.lng + "," + e.point.lat;
//    }
//    map.addEventListener("click", setMark);
//    $(function() {
//        $('.image-editor').cropit({
//            exportZoom: 1.5,
//            imageBackground: true,
//            imageBackgroundBorderWidth: 50,
//            imageState: {
//                //default image url
//                src: 'http://lorempixel.com/500/400/',
//            },
//            smallImage: 'stretch'
//        });
//
//        $('.rotate-cw').click(function() {
//            $('.image-editor').cropit('rotateCW');
//        });
//        $('.rotate-ccw').click(function() {
//            $('.image-editor').cropit('rotateCCW');
//        });
//
//        $('.finished').click(function() {
//            var imageData = $('.image-editor').cropit('export');
//            //contains image
//            //window.open(imageData);
//            document.getElementById("avatar").value=imageData;
//        });
//    });
</script>
</html>