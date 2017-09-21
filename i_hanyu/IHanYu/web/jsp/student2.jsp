<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>爱汉语</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width,minimum-scale=1.0,maximum-scale=1.0"/>
    <link rel="stylesheet" type="text/css" href="./css/student2.css">
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
                <img class="user_head" src='./images/1.png'>
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
//        $('.info-commit').click(function() {
//            var imageData = $('.image-editor').cropit('export');
//            //contains image
//            //window.open(imageData);
//            document.getElementById("avatar").value=imageData;
//            document.getElementById("person-info").submit();
//        });
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
                /*document.getElementById("person-info").submit();*/

                var userName = $("#userName").val();
                var userType = $('input[name="userType"]:checked').val();
                var wechat = $("#phoneNumber").val();
                var country = $('input[name="country"]:checked').val();
                var location = $("#suggestId").val();
                var coordinate = $("#coordinate").val();

                $.ajax({
                    type: "post",//请求方式
                    contentType: 'application/x-www-form-urlencoded',
                    url: "/student_register_name",
                    timeout: 800000,//超时时间：800秒
                    dataType: "json",
                    data: {
                        "userName":userName,
                        "location": location,
                        "userType":userType,
                        "country":country,
                        "wechat": wechat,
                        "coordinate": coordinate,
                    },
                    //请求成功后的回调函数 data为json格式
                    success: function (data) {
                        window.location.href = "/student_register3";
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

    //    function previewImage(file)
    //    {
    //        var MAXWIDTH  = 260;
    //        var MAXHEIGHT = 180;
    //        var div = document.getElementById('preview');
    //        if (file.files && file.files[0])
    //        {
    //            div.innerHTML ='<img id=imghead>';
    //            var img = document.getElementById('imghead');
    //            img.onload = function(){
    //                var rect = clacImgZoomParam(MAXWIDTH, MAXHEIGHT, img.offsetWidth, img.offsetHeight);
    //                img.width  =  rect.width;
    //                img.height =  rect.height;
    ////                img.style.marginLeft = rect.left+'px';
    //            }
    //            var reader = new FileReader();
    //            reader.onload = function(evt){img.src = evt.target.result;}
    //            reader.readAsDataURL(file.files[0]);
    //        }
    //        else //兼容IE
    //        {
    //            var sFilter='filter:progid:DXImageTransform.Microsoft.AlphaImageLoader(sizingMethod=scale,src="';
    //            file.select();
    //            var src = document.selection.createRange().text;
    //            div.innerHTML = '<img id=imghead>';
    //            var img = document.getElementById('imghead');
    //            img.filters.item('DXImageTransform.Microsoft.AlphaImageLoader').src = src;
    //            var rect = clacImgZoomParam(MAXWIDTH, MAXHEIGHT, img.offsetWidth, img.offsetHeight);
    //            status =('rect:'+rect.top+','+rect.left+','+rect.width+','+rect.height);
    //            div.innerHTML = "<div id=divhead style='width:"+rect.width+"px;height:"+rect.height+"px;margin-top:"+rect.top+"px;"+sFilter+src+"\"'></div>";
    //        }
    //    }
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
<%--<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">--%>
<%--<html lang="en">--%>
<%--<head>--%>
<%--<title>注册</title>--%>
<%--<script src="http://libs.baidu.com/jquery/1.8.3/jquery.min.js"></script>--%>
<%--<link rel="stylesheet" style="text/css" href="css/student2.css">	--%>
<%--<style>--%>
<%--#firstLanguage,#secondLanguage{border:2px solid rgba(0, 0, 0, 0.3);width:290px;height:33px;float:right;padding-left:3px;}--%>
<%--</style>--%>
<%--</head>--%>
<%--<body>--%>
<%--<div class="head">--%>
<%--<div class="menu">--%>
<%--<div><img src="images/ihanyulogo1.png" width="80px" height="90px" style="float:left;"></div>--%>
<%--<div class="btn-bar-center">--%>
<%--<ul>--%>
<%--<li><a href="index.jsp"><scan style="width:100%;text-align:center">首页</scan><br><scan style="font-size:15px;text-align:center">Home</scan></a></li>--%>
<%--<li><a href="teacherSearch.action"><scan style="width:100%;text-align:center">汉语教师</scan><br><scan style="font-size:15px;text-align:center">Chinese Teacher</scan></a></li>--%>
<%--<li><a href="partnerSearch.action"><scan style="width:100%;text-align:center">语伴</scan><br><scan style="font-size:15px;text-align:center">Language Partner</scan></a></li>--%>
<%--</ul>--%>
<%--</div>--%>
<%--<div class="btn-bar-right">--%>
<%--<ul>--%>
<%--<li><a href="sign-up.jsp" style="color:rgba(0, 0, 0, 0.3);display:block;width:75px;text-align:center">注册<br>sign up</a></li>--%>
<%--<li class="btn-bar-right-signup"><a href="sign-in.jsp" style="width:80px;text-align:center" >登录<br>sign in</a></li>--%>
<%--</ul>--%>
<%--</div>--%>
<%--</div>--%>
<%--</div>--%>
<%--<div class="step">--%>
<%--<img src='images/page2-step1.gif' class="step1">--%>
<%--<img src='images/page2-step2.gif' class="step2">--%>
<%--</div>--%>
<%--<div class="sign-up">--%>
<%--<div class="none" style="width:100%;height:94px;"></div>--%>
<%--<p style="font-size:27px;color:#EB0015;text-align:center">语伴信息 Partner information</p>--%>
<%--<div style="width:534px;height:781px;margin:0 auto;">--%>
<%--<form action="futherRegister" method="post" >--%>
<%--<div style="height:69px;width:100%;margin-top:65px;">--%>
<%--<label style="float:left;">母语 I speak</label>--%>
<%--<!-- <input type="text" name="firstLanguage" style="width:315px;height:33px;float:right;background:url(images/text.gif) no-repeat;border:none;padding-left:3px;"> -->--%>
<%--<s:select name="firstLanguage" headerKey="" headerValue="请选择" list="languageList" listKey="id" listValue="language"/>--%>
<%--</div>--%>
<%--<div style="height:69px;width:100%;">--%>
<%--<label style="float:left;">学习 I study</label>--%>
<%--<!-- <input type="text" name="secondLanguage" style="width:315px;height:33px;float:right;background:url(images/text.gif) no-repeat;border:none;padding-left:3px;"> -->--%>
<%--<s:select name="secondLanguage" list="languageList" headerKey="" headerValue="请选择" listKey="id" listValue="language"/>--%>
<%--</div>--%>
<%--<div style="height:69px;width:100%;">--%>
<%--<label style="float:left;">性别 My gender</label>--%>
<%--<input type="radio" name="gender" value="1"style="margin-left:125px;">男--%>
<%--<input type="radio" name="gender" value="2">女--%>
<%--<s:fielderror fieldName="gender"/>--%>
<%--</div>--%>
<%--<div style="height:69px;width:100%;">	--%>
<%--<label style="float:left;">学生  I’m a student</label>--%>
<%--<input type="radio" name="student" value="1" style="margin-left:96px;">是--%>
<%--<input type="radio" name="student" value="0">否--%>
<%--<s:fielderror fieldName="student"/>--%>
<%--</div>--%>
<%--<div style="height:69px;width:100%;">--%>
<%--<label style="float:left;">学校 University</label>--%>
<%--<input type="text" name="university" class="input-text" style="width:283px;">--%>
<%--<s:fielderror fieldName="university"/>--%>
<%--</div>--%>
<%--<div style="height:69px;width:100%;">--%>
<%--<label style="float:left;">语伴性别 <br>Partner’s gender</label>--%>
<%--<input type="radio" name="partner_gender" value="1" style="margin-left:106px;">男 --%>
<%--<input type="radio" name="partner_gender" value="2">女 --%>
<%--<input type="radio" name="partner_gender" value="3">不限 --%>
<%--<s:fielderror fieldName="partner_gender"/>		--%>
<%--</div>--%>
<%--<div style="height:69px;width:1220px;">--%>
<%--<label style="float:left;">自我介绍 Selfintroduction</label><br>--%>
<%--<textarea name="selfIntro" id="" cols="50" rows="10" style="border:3px solid #F0EEEE;float:left;width:528px;height:118px"></textarea>--%>
<%--<s:fielderror fieldName="selfIntro"/>--%>
<%--</div>--%>
<%--<div class="none" style="width:100%;height:40px;float:left;"></div>	--%>
<%--<input type="submit" value="NEXT" style="width:150px;height:50px;font-size:30px;border:2px #ff564b solid;border-radius:20px;color:#ff564b;display:block;background-color:white;margin:0 auto;">--%>
<%--</form>--%>
<%--<div class="footer">--%>
<%--<a href="####">关于爱汉语</a>--%>
<%--<a href="####">联系我们</a>--%>
<%--<a href="####">服务协议</a>--%>
<%--</div>--%>
<%--</div>--%>
<%--</div>--%>
<%--</body>--%>
<%--</html>--%>