<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>爱汉语</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width,minimum-scale=1.0,maximum-scale=1.0"/>
    <link rel="stylesheet" type="text/css" href="../res/css/teacher2.css">
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
                <img class="user_head" src='<%=session.getAttribute("headp")%>'>
                <div class="user_name"><%=session.getAttribute("username")%></div>
            </div>
            <div class="user_item"
                 onclick="changePerson('<%=session.getAttribute("usertype")%>','<%=session.getAttribute("email")%>')">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;个人中心
            </div>
            <div class="user_item">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;首页</div>
            <div class="user_item">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;教师</div>
            <div class="user_item">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;语伴</div>
            <div class="user_item" onclick="LoginOut()">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;退出</div>
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
                <span>3</span>上课信息
            </div>
            <div class="progress progress-space"></div>
        </div>
        <form class="info" id="person-info" action="registerOfTeachter2.action" method="post"
              enctype="multipart/form-data">
            <div class="info-label">个人信息</div>
            <div class="info-content">
                <div class="info-table">
                    <div class="info-line">
                        <div class="info-other">
                            <div class="info-line">
                                <div class="info-line-label">姓</br>Last Name</div>
                                <div class="info-input-box">
                                    <input id="firstName" name="firstName" type="text" class="info-input">
                                </div>
                                <div class="info-line-label">名</br>First Name</div>
                                <div class="info-input-box">
                                    <input name="secondName" id="secondName" type="text" class="info-input">
                                </div>
                            </div>
                            <div class="info-line">
                                <div class="info-line-label">性别</br>Sex</div>
                                <div class="info-check-box">
                                    <div class="info-checkbox-box">
                                        <div class="info-check-icon info-check-icon-active">
                                            <input type="radio" id="gender" name="gender" value="1" checked="checked">
                                        </div>
                                        <div class="info-check-label">男 male</div>
                                    </div>
                                    <div class="info-checkbox-box">
                                        <div class="info-check-icon info-check-icon-inactive">
                                            <input type="radio" id="gender" name="gender" value="2">
                                        </div>
                                        <div class="info-check-label">女 female</div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="info-avatar">
                            <img id="imghead" src="../res/img/avatar.jpg">
                            <input type="file" name="headPortrait" type="file" onchange="previewImage(this)">
                            <input name="avatar" type="text" id="avatar" style="display: none;">
                        </div>
                    </div>
                    <div class="info-st-line">
                        <div class="info-st-line-left">证件照片</br>Credentials</br>Picture</div>
                        <div class="info-st-line-right info-cerd-line">
                            <div class="info-cerd">
                                <div class="info-cerd-card">
                                    添加证书</br>Add Credentials
                                    <input type="file" name="certificatePhoto">
                                </div>
                                <div class="info-cerd-card">
                                    添加证书</br>Add Credentials
                                    <input type="file">
                                </div>
                                <div class="info-cerd-card">
                                    添加证书</br>Add Credentials
                                    <input type="file">
                                </div>
                            </div>
                            <div class="info-cerd-extra">(与国际汉语教育相关的学生证、毕业证、资格证、工作证等)</div>
                        </div>
                    </div>
                    <div class="info-st-line">
                        <div class="info-st-line-left">教学特点</br>Teaching</br>Style</div>
                        <div class="info-st-line-right">
                            <textarea name="teachingStyle" id="teachingStyle" type="text"></textarea>
                        </div>
                    </div>
                    <div class="info-st-line">
                        <div class="info-st-line-left">教学经历</br>Teaching</br>Experience</div>
                        <div class="info-st-line-right">
                            <textarea name="teachingExperience" id="teachingExperience" type="text"></textarea>
                        </div>
                    </div>
                </div>
            </div>
            <div class="info-commit" onclick="submit()">Next</div>
        </form>
    </div>
</div>
</body>
<script type="text/javascript" src="../res/js/jquery-3.2.0.min.js"></script>
<script type="text/javascript" src="../res/js/header.js"></script>
<script type="text/javascript" src="../res/js/teacher2.js"></script>
<script type="text/javascript">
    function submit() {
        var imageData = document.getElementById("imghead").getAttribute("src");
        document.getElementById("avatar").value = imageData;
        //document.getElementById("person-info").submit();
        var firstName = $("#firstName").val();
        var secondName = $("#secondName").val();
        var sex = $('input[name="gender"]:checked').val();
        var teachingStyle = $("#teachingStyle").val();
        var teachingExperience = $("#teachingExperience").val();

        var formdata = new FormData();
        formdata.append("imgFile", window.getFiles);
        formdata.append("firstName", firstName);
        formdata.append("secondName", secondName);
        formdata.append("teachingStyle", teachingStyle);
        formdata.append("teachingExperience", teachingExperience);
        formdata.append("sex", sex);

        $.ajax({
            type: "post",//请求方式
            contentType:false,
            processData:false,
            /*contentType: 'application/x-www-form-urlencoded',*/
            url: "/teacher_register_name",
            timeout: 800000,//超时时间：800秒
            dataType: "json",
            data: formdata,
            //请求成功后的回调函数 data为json格式
            success: function (data) {
                if (data.errorCode == "true")
                    window.location.href = "/teacher_register3";
                else
                    alert("某些地方出了问题，请重新注册");
            },
            error: function () {
                alert("请求出错！");
            }
        });
    }

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
            rateWidth = 127;
            rateHeight = 127;

            if (rateWidth > rateHeight) {
                param.width = 127;
                param.height = 127;
            } else {
                param.width = 127;
                param.height = 127;
            }
        }

        param.left = Math.round((maxWidth - param.width) / 2);
        param.top = Math.round((maxHeight - param.height) / 2);
        return param;
    }
</script>
</html>
