<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>爱汉语</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width,minimum-scale=1.0,maximum-scale=1.0"/>
    <link rel="stylesheet" type="text/css" href="../res/css/student3.css">
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
            <div class="progress progress-doing">
                <span>3</span>语伴信息
            </div>
            <div class="progress progress-space"></div>
        </div>
        <form class="info" action="registerOfStudent3.action" method="post" validate="true" id="partner-info">
            <div class="info-label">语伴信息</div>
            <div class="info-content">
                <div class="info-table">
                    <div class="info-st-line info-st-line-wechat">
                        <div class="info-st-line-left">学校</br>School</div>
                        <div class="info-st-line-right">
                            <input type="text" name="university" id="university">
                            <span></span>
                        </div>
                    </div>
                    <div class="info-st-line info-st-line-wechat">
                        <div class="info-st-line-left">性别</br>Sex</div>
                        <div class="info-st-line-right">
                            <div class="info-st-right-up">
                                <div class="info-check-box">
                                    <div class="info-checkbox-box info-checkbox-box-week">
                                        <div class="info-check-icon info-check-icon-active">
                                            <input type="radio" name="gender" id="gender" value="1" checked="">
                                        </div>
                                        <div class="info-check-label">男 male</div>
                                    </div>
                                    <div class="info-checkbox-box info-checkbox-box-week">
                                        <div class="info-check-icon info-check-icon-inactive">
                                            <input type="radio" name="gender" id="gender" value="2">
                                        </div>
                                        <div class="info-check-label">女 female</div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="info-st-line info-st-line-wechat">
                        <div class="info-st-line-left">语伴性别</br>Partner's Sex</div>
                        <div class="info-st-line-right">
                            <div class="info-st-right-up">
                                <div class="info-check-box">
                                    <div class="info-checkbox-box info-checkbox-box-week">
                                        <div class="info-check-icon info-check-icon-active">
                                            <input type="radio" name="partner_gender" value="1" checked>
                                        </div>
                                        <div class="info-check-label">男 male</div>

                                    </div>
                                    <div class="info-checkbox-box info-checkbox-box-week">
                                        <div class="info-check-icon info-check-icon-inactive">
                                            <input type="radio" name="partner_gender" value="2">
                                        </div>
                                        <div class="info-check-label">女 female</div>
                                    </div>
                                    <div class="info-checkbox-box info-checkbox-box-week">
                                        <div class="info-check-icon info-check-icon-inactive">
                                            <input type="radio" name="partner_gender" value="3">
                                        </div>
                                        <div class="info-check-label">不限 Both</div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="info-st-line info-st-line-wechat">
                        <div class="info-st-line-left">是否学生</br>Is Student</div>
                        <div class="info-st-line-right">
                            <div class="info-st-right-up">
                                <div class="info-check-box">
                                    <div class="info-checkbox-box info-checkbox-box-week">
                                        <div class="info-check-icon info-check-icon-active">
                                            <input type="radio" name="student" value="1" checked>
                                        </div>
                                        <div class="info-check-label">是 Yes</div>
                                    </div>
                                    <div class="info-checkbox-box info-checkbox-box-week">
                                        <div class="info-check-icon info-check-icon-inactive">
                                            <input type="radio" name="student" value="2">
                                        </div>
                                        <div class="info-check-label">否 No</div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="info-st-line">
                        <div class="info-st-line-left">母语</br>I speak</div>
                        <div class="info-st-line-right">
                            <div class="info-st-right-up">
                                <div class="info-check-box">
                                    <div class="info-checkbox-box info-checkbox-box-week">
                                        <div class="info-check-icon info-check-icon-active">
                                            <input type="radio" name="firstLanguage" value="1" checked>
                                        </div>
                                        <div class="info-check-label">汉语 Chinese</div>
                                    </div>
                                    <div class="info-checkbox-box info-checkbox-box-week">
                                        <div class="info-check-icon info-check-icon-inactive">
                                            <input type="radio" name="firstLanguage" value="2">
                                        </div>
                                        <div class="info-check-label">英语 English</div>
                                    </div>
                                    <div class="info-checkbox-box info-checkbox-box-week">
                                        <div class="info-check-icon info-check-icon-inactive">
                                            <input type="radio" name="firstLanguage" value="3">
                                        </div>
                                        <div class="info-check-label">俄语 Russian</div>
                                    </div>
                                    <div class="info-checkbox-box info-checkbox-box-week">
                                        <div class="info-check-icon info-check-icon-inactive">
                                            <input type="radio" name="firstLanguage" value="4">
                                        </div>
                                        <div class="info-check-label">韩语 Korea</div>
                                    </div>
                                    <div class="info-checkbox-box info-checkbox-box-week">
                                        <div class="info-check-icon info-check-icon-inactive">
                                            <input type="radio" name="firstLanguage" value="5">
                                        </div>
                                        <div class="info-check-label">日语 Japanese</div>
                                    </div>
                                </div>
                            </div>
                            <div class="info-st-right-bottom">(请在符合您的选项前面进行勾选)</div>
                        </div>
                    </div>
                    <div class="info-st-line">
                        <div class="info-st-line-left">学习</br>I study</div>
                        <div class="info-st-line-right">
                            <div class="info-st-right-up">
                                <div class="info-check-box">
                                    <div class="info-check-box">
                                        <div class="info-checkbox-box info-checkbox-box-week">
                                            <div class="info-check-icon info-check-icon-active">
                                                <input type="radio" name="secondLanguage" value="1" checked>
                                            </div>
                                            <div class="info-check-label">汉语 Chinese</div>
                                        </div>
                                        <div class="info-checkbox-box info-checkbox-box-week">
                                            <div class="info-check-icon info-check-icon-inactive">
                                                <input type="radio" name="secondLanguage" value="2">
                                            </div>
                                            <div class="info-check-label">英语 English</div>
                                        </div>
                                        <div class="info-checkbox-box info-checkbox-box-week">
                                            <div class="info-check-icon info-check-icon-inactive">
                                                <input type="radio" name="secondLanguage" value="3">
                                            </div>
                                            <div class="info-check-label">俄语 Russian</div>
                                        </div>
                                        <div class="info-checkbox-box info-checkbox-box-week">
                                            <div class="info-check-icon info-check-icon-inactive">
                                                <input type="radio" name="secondLanguage" value="4">
                                            </div>
                                            <div class="info-check-label">韩语 Korea</div>
                                        </div>
                                        <div class="info-checkbox-box info-checkbox-box-week">
                                            <div class="info-check-icon info-check-icon-inactive">
                                                <input type="radio" name="secondLanguage" value="5">
                                            </div>
                                            <div class="info-check-label">日语 Japanese</div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="info-st-right-bottom">(请在符合您的选项前面进行勾选)</div>
                        </div>
                    </div>
                    <div class="info-st-line">
                        <div class="info-st-line-left">自我介绍</br>Self Introduce</div>
                        <div class="info-st-line-right">
                            <div class="info-st-right-up">
                                <textarea name="selfIntro" id="selfIntro"></textarea>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="info-commit" onclick="submit()">Finish</div>
        </form>
    </div>
</div>
</body>
<script type="text/javascript" src="../res/js/jquery-3.2.0.min.js"></script>
<script type="text/javascript" src="../res/js/header.js"></script>
<script type="text/javascript" src="../res/js/student3.js"></script>
<script type="text/javascript">
    function submit() {
        //document.getElementById("partner-info").submit();
        var university = $("#university").val();
        var sex = $('input[name="gender"]:checked').val();
        var psex = $('input[name="partner_gender"]:checked').val();
        var firstL = $('input[name="firstLanguage"]:checked').val();
        var secondL = $('input[name="secondLanguage"]:checked').val();
        var isStudent = $('input[name="student"]:checked').val();
        var selfIntro = $("#selfIntro").val();
        $.ajax({
            type: "post",//请求方式
            contentType: 'application/x-www-form-urlencoded',
            url: "/student_register_chare",
            timeout: 800000,//超时时间：800秒
            dataType: "json",
            data: {
                "university": university,
                "sex": sex,
                "psex": psex,
                "firstL": firstL,
                "secondL": secondL,
                "selfIntro": selfIntro,
                "isStudent":isStudent
            },
            //请求成功后的回调函数 data为json格式
            success: function (data) {
                window.location.href = "partnerVisit/" + data.object;
            },
            error: function () {
                alert("请求出错！");
            }
        });
    }
</script>
</html>
