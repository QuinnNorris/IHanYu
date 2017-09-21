<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>爱汉语</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width,minimum-scale=1.0,maximum-scale=1.0"/>
    <link rel="stylesheet" type="text/css" href="../res/css/teacher3.css">
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
                <%--<img class="user_head" src='<s:property value="#session.userInfo.userAvatar()"></s:property>' >
                <div class="user_name"><s:property value="#session.userInfo.userName()"></s:property> </div>--%>
            </div>
            <%--<div class="user_item" onclick="changePerson('<s:property value="#session.userInfo.userCenter()"></s:property>')">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;个人中心</div>--%>
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
            <div class="progress progress-doing">
                <span>3</span>上课信息
            </div>
            <div class="progress progress-space"></div>
        </div>
        <form class="info" action="registerOfTeacher3.action" method="post" validate="true" id="class-info">
            <div class="info-label">上课信息</div>
            <div class="info-content">
                <div class="info-table">
                    <div class="info-st-line">
                        <div class="info-st-line-left">上课时间</br>ClassTime</div>
                        <div class="info-st-line-right">
                            <div class="info-st-right-up">
                                <div class="info-check-box">
                                    <div class="info-checkbox-box info-checkbox-box-week">
                                        <div class="info-check-icon info-check-icon-active">
                                            <input type="checkbox" name="availableTime" value="1" id="availableTime-1"
                                                   checked>
                                        </div>
                                        <div class="info-check-label">星期一 Mon.</div>
                                    </div>
                                    <div class="info-checkbox-box info-checkbox-box-week">
                                        <div class="info-check-icon info-check-icon-inactive">
                                            <input type="checkbox" name="availableTime" value="2" id="availableTime-2">
                                        </div>
                                        <div class="info-check-label">星期二 Tues.</div>
                                    </div>
                                    <div class="info-checkbox-box info-checkbox-box-week">
                                        <div class="info-check-icon info-check-icon-inactive">
                                            <input type="checkbox" name="availableTime" value="3" id="availableTime-3">
                                        </div>
                                        <div class="info-check-label">星期三 Wed.</div>
                                    </div>
                                    <div class="info-checkbox-box info-checkbox-box-week">
                                        <div class="info-check-icon info-check-icon-inactive">
                                            <input type="checkbox" name="availableTime" value="4" id="availableTime-4">
                                        </div>
                                        <div class="info-check-label">星期四 Thur.</div>
                                    </div>
                                    <div class="info-checkbox-box info-checkbox-box-week">
                                        <div class="info-check-icon info-check-icon-inactive">
                                            <input type="checkbox" name="availableTime" value="5" id="availableTime-5">
                                        </div>
                                        <div class="info-check-label">星期五 Fri.</div>
                                    </div>
                                    <div class="info-checkbox-box info-checkbox-box-week">
                                        <div class="info-check-icon info-check-icon-inactive">
                                            <input type="checkbox" name="availableTime" value="6" id="availableTime-6">
                                        </div>
                                        <div class="info-check-label">星期六 Sat.</div>
                                    </div>
                                    <div class="info-checkbox-box info-checkbox-box-week">
                                        <div class="info-check-icon info-check-icon-inactive">
                                            <input type="checkbox" name="availableTime" value="7" id="availableTime-7">
                                        </div>
                                        <div class="info-check-label">星期日 Sun.</div>
                                    </div>
                                </div>
                            </div>
                            <div class="info-st-right-bottom">(请在您可以上课的时间前面进行勾选)</div>
                        </div>
                    </div>
                    <div class="info-st-line info-st-line-price">
                        <div class="info-st-line-left">价格</br>Price</div>
                        <div class="info-st-line-right">
                            <input type="text" name="payment" id="payment">
                            <span>RMB/h</span>
                        </div>
                    </div>
                    <div class="info-st-line info-st-line-wechat">
                        <div class="info-st-line-left">微信</br>Wechat</div>
                        <div class="info-st-line-right">
                            <input type="text" name="phoneNumber" id="phoneNumber">
                            <span></span>
                        </div>
                    </div>
                    <div class="info-st-line info-st-location">
                        <div class="info-st-line-left">地点</br>Location</div>
                        <div class="info-st-line-right info-st-line-map">
                            <div class="info-st-right-up-up">
                                <input id="suggestId" name="suggestId"/>
                            </div>
                            <div class="info-st-right-up">
                                <div class="info-st-map" id="map"></div>
                            </div>
                            <div class="info-st-right-bottom"></div>
                        </div>
                    </div>
                    <div class="info-st-line">
                        <div class="info-st-line-left">我擅长于</br>Good At</div>
                        <div class="info-st-line-right">
                            <div class="info-st-right-up">
                                <div class="info-check-box">
                                    <div class="info-checkbox-box info-checkbox-box-week">
                                        <div class="info-check-icon info-check-icon-active">
                                            <input type="checkbox" name="goodAt" value="1" id="goodAt-1" checked>
                                        </div>
                                        <div class="info-check-label">汉语听写</div>
                                    </div>
                                    <div class="info-checkbox-box info-checkbox-box-week">
                                        <div class="info-check-icon info-check-icon-inactive">
                                            <input type="checkbox" name="goodAt" value="2" id="goodAt-2">
                                        </div>
                                        <div class="info-check-label">汉语阅读</div>
                                    </div>
                                    <div class="info-checkbox-box info-checkbox-box-week">
                                        <div class="info-check-icon info-check-icon-inactive">
                                            <input type="checkbox" name="goodAt" value="3" id="goodAt-3">
                                        </div>
                                        <div class="info-check-label">汉字</div>
                                    </div>
                                    <div class="info-checkbox-box info-checkbox-box-week">
                                        <div class="info-check-icon info-check-icon-inactive">
                                            <input type="checkbox" name="goodAt" value="4" id="goodAt-4">
                                        </div>
                                        <div class="info-check-label">汉语写作</div>
                                    </div>
                                    <div class="info-checkbox-box info-checkbox-box-week">
                                        <div class="info-check-icon info-check-icon-inactive">
                                            <input type="checkbox" name="goodAt" value="5" id="goodAt-5">
                                        </div>
                                        <div class="info-check-label">商务汉语</div>
                                    </div>
                                    <div class="info-checkbox-box info-checkbox-box-week">
                                        <div class="info-check-icon info-check-icon-inactive">
                                            <input type="checkbox" name="goodAt" value="6" id="goodAt-6">
                                        </div>
                                        <div class="info-check-label">HSK1</div>
                                    </div>
                                    <div class="info-checkbox-box info-checkbox-box-week">
                                        <div class="info-check-icon info-check-icon-inactive">
                                            <input type="checkbox" name="goodAt" value="7" id="goodAt-7">
                                        </div>
                                        <div class="info-check-label">HSK2</div>
                                    </div>
                                    <div class="info-checkbox-box info-checkbox-box-week">
                                        <div class="info-check-icon info-check-icon-inactive">
                                            <input type="checkbox" name="goodAt" value="8" id="goodAt-8">
                                        </div>
                                        <div class="info-check-label">HSK3</div>
                                    </div>
                                    <div class="info-checkbox-box info-checkbox-box-week">
                                        <div class="info-check-icon info-check-icon-inactive">
                                            <input type="checkbox" name="goodAt" value="9" id="goodAt-9">
                                        </div>
                                        <div class="info-check-label">HSK4</div>
                                    </div>
                                    <div class="info-checkbox-box info-checkbox-box-week">
                                        <div class="info-check-icon info-check-icon-inactive">
                                            <input type="checkbox" name="goodAt" value="10" id="goodAt-10">
                                        </div>
                                        <div class="info-check-label">HSK5</div>
                                    </div>
                                    <div class="info-checkbox-box info-checkbox-box-week">
                                        <div class="info-check-icon info-check-icon-inactive">
                                            <input type="checkbox" name="goodAt" value="11" id="goodAt-11">
                                        </div>
                                        <div class="info-check-label">HSK6</div>
                                    </div>
                                    <div class="info-checkbox-box info-checkbox-box-week">
                                        <div class="info-check-icon info-check-icon-inactive">
                                            <input type="checkbox" name="goodAt" value="12" id="goodAt-12">
                                        </div>
                                        <div class="info-check-label">初级汉语</div>
                                    </div>
                                    <div class="info-checkbox-box info-checkbox-box-week">
                                        <div class="info-check-icon info-check-icon-inactive">
                                            <input type="checkbox" name="goodAt" value="13" id="goodAt-13">
                                        </div>
                                        <div class="info-check-label">中级汉语</div>
                                    </div>
                                    <div class="info-checkbox-box info-checkbox-box-week">
                                        <div class="info-check-icon info-check-icon-inactive">
                                            <input type="checkbox" name="goodAt" value="14" id="goodAt-14">
                                        </div>
                                        <div class="info-check-label">高级汉语</div>
                                    </div>
                                    <div class="info-checkbox-box info-checkbox-box-week">
                                        <div class="info-check-icon info-check-icon-inactive">
                                            <input type="checkbox" name="goodAt" value="15" id="goodAt-15">
                                        </div>
                                        <div class="info-check-label">口语</div>
                                    </div>
                                </div>
                            </div>
                            <div class="info-st-right-bottom">(请在符合您的选项前面进行勾选)</div>
                        </div>
                    </div>
                </div>
            </div>
            <input type="text" id="coordinate" name="coordinate" style="display: none"/>
            <div class="info-commit" onclick="submit()">Finish</div>
        </form>
    </div>
</div>
</body>
<script type="text/javascript" src="../res/js/jquery-3.2.0.min.js"></script>
<script type="text/javascript" src="../res/js/header.js"></script>
<script type="text/javascript" src="../res/js/teacher3.js"></script>
<script type="text/javascript" src="../res/js/registerMap.js"></script>
<script src="http://webapi.amap.com/maps?v=1.3&key=d61e8ab3f329129acd1bce7dbfbfac51&callback=mapInit&plugin=AMap.Autocomplete,AMap.PlaceSearch"></script>
<script type="text/javascript">
    function submit() {
        var map = document.getElementById("suggestId").value;
        if (map == null || map == "") {
            alert("请输入地址");
        }
        else {
            var phoneNumber = $("#phoneNumber").val();
            var location = $("#suggestId").val();
            var coordinate = $("#coordinate").val();
            var payment = $("#payment").val();
            var weekday = "";
            $('input:checkbox[name=availableTime]:checked').each(function (i) {
                if (0 == i) weekday = $(this).val();
                else weekday += (" " + $(this).val());
            });
            var goodat = "";
            $('input:checkbox[name=goodAt]:checked').each(function (i) {
                if (0 == i) goodat = $(this).val();
                else goodat += (" " + $(this).val());
            });
            $.ajax({
                type: "post",//请求方式
                contentType: 'application/x-www-form-urlencoded',
                url: "/teacher_register_chare",
                timeout: 800000,//超时时间：800秒
                dataType: "json",
                data: {
                    "location": location,
                    "wechat": phoneNumber,
                    "weekday": weekday,
                    "goodat": goodat,
                    "coordinate": coordinate,
                    "payment": payment
                },
                //请求成功后的回调函数 data为json格式
                success: function (data) {
                    alert("ok");
                    //window.location.href = "/teacher_register3";
                },
                error: function () {
                    alert("请求出错！");
                }
            });
        }
    }
</script>
</html>