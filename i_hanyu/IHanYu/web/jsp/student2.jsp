<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>爱汉语</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width,minimum-scale=1.0,maximum-scale=1.0"/>
    <link rel="stylesheet" type="text/css" href="../res/css/student2.css">
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
                <img class="user_head" src='../res/img/1.png'>
                <div class="user_name">albert</div>
            </div>
            <div class="user_item">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;个人中心</div>
            <div class="user_item">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;首页</div>
            <div class="user_item">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;教师</div>
            <div class="user_item">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;语伴</div>
            <div class="user_item">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;退出</div>
        </div>
        <div class="login-regist-space space-row"></div>
    </div>
    <div class="content">
        <div class="progresses">
            <div class="progress progress-space"></div>
            <div class="progress progress-doing">
                <span>1</span>账户信息
            </div>
            <div class="progress progress-doing">
                <span>2</span>个人信息
            </div>
            <div class="progress progress-not">
                <span>3</span>语伴信息
            </div>
            <div class="progress progress-space"></div>
        </div>
        <form class="info" id="person-info" action="registerOfStudent2.action" method="post"
              enctype="multipart/form-data">
            <div class="info-label">个人信息</div>
            <div class="info-content">
                <div class="info-table">
                    <div class="info-line">
                        <div class="info-other">
                            <div class="info-line">
                                <div class="info-line-label">用户名</br>UserName</div>
                                <div class="info-input-box">
                                    <input type="text" class="info-input" name="userName" id="userName">
                                </div>
                            </div>
                            <div class="info-line">
                                <div class="info-line-label">需要语伴</br>Need Partner</div>
                                <div class="info-check-box">
                                    <div class="info-checkbox-box">
                                        <div class="info-check-icon info-check-icon-active">
                                            <input type="radio" name="userType" id="userType" value="2" checked>
                                        </div>
                                        <div class="info-check-label">是 Yes</div>
                                    </div>
                                    <div class="info-checkbox-box">
                                        <div class="info-check-icon info-check-icon-inactive">
                                            <input type="radio" name="userType" id="userType" value="3">
                                        </div>
                                        <div class="info-check-label">否 No</div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="info-avatar">
                            <img id="imghead" src="../res/img/avatar.jpg">
                            <input type="file" name="headPortrait" type="file" onchange="previewImage(this)"
                                   id="headPortrait">
                            <input name="avatar" type="text" id="avatar" style="display: none;">
                        </div>
                    </div>
                    <div class="info-st-line info-st-line-wechat">
                        <div class="info-st-line-left">微信</br>Wechat</div>
                        <div class="info-st-line-right">
                            <input type="text" name="phoneNumber" id="phoneNumber">
                            <span></span>
                        </div>
                    </div>
                    <div class="info-st-line info-st-line-wechat">
                        <div class="info-st-line-left">国家</br>Country</div>
                        <div class="info-st-line-right">
                            <div class="info-check-box">
                                <div class="info-checkbox-box">
                                    <div class="info-check-icon info-check-icon-active">
                                        <input type="radio" name="country" id="country" value="1" checked>
                                    </div>
                                    <div class="info-check-label">中国 China</div>
                                </div>
                                <div class="info-checkbox-box">
                                    <div class="info-check-icon info-check-icon-inactive">
                                        <input type="radio" name="country" id="country" value="2">
                                    </div>
                                    <div class="info-check-label">美国 Unite States</div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="info-st-line info-st-location">
                        <div class="info-st-line-left">地点</br>Location</div>
                        <div class="info-st-line-right info-st-line-map">
                            <div class="info-st-right-up-up">
                                <input id="suggestId" type="text" class="info-st-location" name="suggestId">
                            </div>
                            <div class="info-st-right-up">
                                <div class="info-st-map" id="map"></div>
                            </div>
                            <div class="info-st-right-bottom"></div>
                        </div>
                    </div>
                </div>
            </div>
            <input type="text" id="coordinate" name="coordinate" style="display: none"/>
            <div class="info-commit">Next</div>
        </form>
    </div>
</div>
</body>
<script type="text/javascript" src="../res/js/jquery-3.2.0.min.js"></script>
<script type="text/javascript" src="../res/js/jquery.cropit.js"></script>
<script type="text/javascript" src="../res/js/header.js"></script>
<script type="text/javascript" src="../res/js/student2.js"></script>
<script type="text/javascript" src="../res/js/registerMap.js"></script>
<script src="http://webapi.amap.com/maps?v=1.3&key=d61e8ab3f329129acd1bce7dbfbfac51&callback=mapInit&plugin=AMap.Autocomplete,AMap.PlaceSearch"></script>
<script type="text/javascript">
    $(function () {
        $('.info-commit').click(function () {
            var map = document.getElementById("suggestId").value;
            if (map == null || map == "") {
                alert("请输入地址");
            }
            else {
                var imageData = document.getElementById("imghead").getAttribute("src");
                //contains image
                //window.open(imageData);
                document.getElementById("avatar").value = imageData;

                var userName = $("#userName").val();
                var userType = $('input[name="userType"]:checked').val();
                var wechat = $("#phoneNumber").val();
                var country = $('input[name="country"]:checked').val();
                var location = $("#suggestId").val();
                var coordinate = $("#coordinate").val();

                var formdata = new FormData();
                formdata.append("imgFile", window.getFiles);
                formdata.append("userName", userName);
                formdata.append("location", location);
                formdata.append("userType", userType);
                formdata.append("country", country);
                formdata.append("wechat", wechat);
                formdata.append("coordinate", coordinate);

                /*document.getElementById("person-info").submit();*/



                $.ajax({
                    type: "post",//请求方式
                    /*contentType: 'application/x-www-form-urlencoded',*/
                    contentType: false,
                    processData: false,
                    url: "/student_register_name",
                    timeout: 800000,//超时时间：800秒
                    dataType: "json",
                    data: formdata,
                    //请求成功后的回调函数 data为json格式
                    success: function (data) {
                        if (data.errorCode == "0002")
                            window.location.href = "/student_register3";
                        else
                            window.location.href = "studentVisit/" + data.object;
                    },
                    error: function () {
                        alert("请求出错！");
                    }
                });
            }
        });
    });

    function previewImage(file) {
        var MAXWIDTH = 260;
        var MAXHEIGHT = 180;
        var div = document.getElementById('preview');
        if (file.files && file.files[0]) {
            var img = document.getElementById('imghead');
            img.onload = function () {
                var rect = clacImgZoomParam(MAXWIDTH, MAXHEIGHT, img.offsetWidth, img.offsetHeight);
                img.width = rect.width;
                img.height = rect.height;
            }
            var reader = new FileReader();
            reader.onload = function (evt) {
                img.src = evt.target.result;
            }
            reader.readAsDataURL(file.files[0]);
            window.getFiles = file.files[0];
        }
        else {
            var sFilter = 'filter:progid:DXImageTransform.Microsoft.AlphaImageLoader(sizingMethod=scale,src="';
            file.select();
            var src = document.selection.createRange().text;
            div.innerHTML = '<img id=imghead>';
            var img = document.getElementById('imghead');
            img.filters.item('DXImageTransform.Microsoft.AlphaImageLoader').src = src;
            var rect = clacImgZoomParam(MAXWIDTH, MAXHEIGHT, img.offsetWidth, img.offsetHeight);
            status = ('rect:' + rect.top + ',' + rect.left + ',' + rect.width + ',' + rect.height);
            div.innerHTML = "<div id=divhead style='width:" + rect.width + "px;height:" + rect.height + "px;margin-top:" + rect.top + "px;" + sFilter + src + "\"'></div>";
        }
    }

    function clacImgZoomParam(maxWidth, maxHeight, width, height) {
        var param = {top: 0, left: 0, width: width, height: height};
        if (width > maxWidth || height > maxHeight) {
            rateWidth = width / maxWidth;
            rateHeight = height / maxHeight;

            if (rateWidth > rateHeight) {
                param.width = 119;
                param.height = 119;
            } else {
                param.width = 119;
                param.height = 119;
            }
        }

        param.left = Math.round((maxWidth - param.width) / 2);
        param.top = Math.round((maxHeight - param.height) / 2);
        return param;
    }
</script>
</html>