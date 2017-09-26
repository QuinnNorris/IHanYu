<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>ihanyu</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width,minimum-scale=1.0,maximum-scale=1.0"/>
    <link rel="stylesheet" type="text/css" href="../res/css/teacherVisit.css">
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
                <div class="user_name"><%=session.getAttribute("username")%>
                </div>
            </div>
            <div class="user_item"
                 onclick="changePerson('<%--<s:property value="#session.userInfo.userCenter()"></s:property>--%>')">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;个人中心
            </div>
            <div class="user_item">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;首页</div>
            <div class="user_item">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;教师</div>
            <div class="user_item">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;语伴</div>
            <div class="user_item" onclick="LoginOut()">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;退出</div>
        </div>
        <div class="login-regist-space space-row"></div>
    </div>
    <div class="content">
        <div class="main-frame">
            <div class="header-frame">
                <div class="avatar-block"></div>
                <div class="avatar-info">
                    <div class="avatar-info-left">
                        <div class="avatar"></div>
                        <div class="avatar-info-items">
                            <div class="avatar-info-item">
                                <span class="avatar-info-num">0</span></br><span class="avatar-info-name">点赞</span>
                            </div><!--
							-->
                            <div class="avatar-info-item">
                                <span class="avatar-info-num">0</span></br><span class="avatar-info-name">关注</span>
                            </div>
                        </div>
                    </div>
                    <div class="avatar-info-right">
                        <div class="username"><%=session.getAttribute("username")%></div>
                    </div>
                </div>
                <div class="avatar-extra">
                    <div class="header-fun">
                        <div class="focus-fun"></div>
                        <div class="phrase-fun"></div>
                    </div>
                </div>
            </div>
            <div class="content-frame">
                <div class="left-frame">
                    <div class="card person">
                        <div class="card-label">个人信息</div>
                        <div class="card-content">
                            <div class="card-item">
                                <div class="card-item-c">姓名：${username}</div>
                                <div class="card-item-e">name：${username}</div>
                            </div>
                            <div class="card-item">
                                <div class="card-item-c">我擅长于：${good_cn}</div>
                                <div class="card-item-e">I'm good At：${good_en}</div>
                            </div>
                            <div class="card-item">
                                <div class="card-item-c">授课时间：${time_cn}</div>
                                <div class="card-item-e">Class Name：${time_en}</div>
                            </div>
                            <div class="card-item">
                                <div class="card-item-c">手机：${wechat}</div>
                                <div class="card-item-e">Tel：${wechat}</div>
                            </div>
                            <div class="card-item">
                                <div class="card-item-c">课酬：${payment}</div>
                                <div class="card-item-e">payment：${payment}</div>
                            </div>
                            <div class="card-item">
                                <div class="card-item-c">地点：${location}</div>
                                <div class="card-item-e">location：${location}</div>
                            </div>
                        </div>
                    </div>
                    <div class="card location">
                        <div class="card-label">常用地址</div>
                        <div class="card-content">
                            <div id="AMapWeb" class="map"></div>
                        </div>
                    </div>
                </div>
                <div class="right-frame">
                    <div class="card person">
                        <div class="card-label">个人信息</div>
                        <div class="card-content">
                            <div class="card-item">
                                <div class="card-item-c">姓名：${username}</div>
                                <div class="card-item-e">name： ${username}</div>
                            </div>
                            <div class="card-item">
                                <div class="card-item-c">我擅长于：${good_cn}</div>
                                <div class="card-item-e">I'm good At：${good_en}</div>
                            </div>
                            <div class="card-item">
                                <div class="card-item-c">授课时间：${time_cn}</div>
                                <div class="card-item-e">Class Name：${time_en}</div>
                            </div>
                            <div class="card-item">
                                <div class="card-item-c">手机：${wechat}</div>
                                <div class="card-item-e">Tel：${wechat}</div>
                            </div>
                            <div class="card-item">
                                <div class="card-item-c">课酬：${payment}</div>
                                <div class="card-item-e">payment：${payment}</div>
                            </div>
                            <div class="card-item">
                                <div class="card-item-c">地点：${location}</div>
                                <div class="card-item-e">location：${location}</div>
                            </div>
                        </div>
                    </div>
                    <div class="card location">
                        <div class="card-label">常用地址</div>
                        <div class="card-content">
                            <div class="map" id="AMapMobile"></div>
                        </div>
                    </div>
                    <div class="card intro-self">
                        <div class="card-label">教学特点</div>
                        <div class="card-content">
                            <div class="card-item">
                                <div class="card-item-c">${style} </div>
                                <div class="card-item-e"></div>
                            </div>
                        </div>
                    </div>
                    <div class="card intro-self">
                        <div class="card-label">教学经历</div>
                        <div class="card-content">
                            <div class="card-item">
                                <div class="card-item-c">${experience} </div>
                                <div class="card-item-e"></div>
                            </div>
                        </div>
                    </div>
                    <div class="card message">
                        <div class="card-label">留言</div>
                        <div class="card-content">
                            <div class="card-content">
                                <div class="message-send">
                                    <div class="message-send-label">发表留言</div>
                                    <div class="message-send-box">
                                        <textarea></textarea>
                                    </div>
                                    <div class="message-send-button">send</div>
                                </div>
                                <div class="message-content">
                                    <%--<s:iterator value="messages" id="me" status="me_st">
                                        <s:if test="#me_st.index<3">
                                            <div class="message-line">
                                                <div class="message-line-left">
                                                    <div class="message-line-left-img">
                                                        <img src='<s:property value="#me.getFromId().getAvatar()"></s:property> ' class="message-line-avatar">
                                                    </div>
                                                </div>
                                                <div class="message-line-right">
                                                    <div class="message-line-right-head"><s:property value="#me.getFromId().getUserName()"></s:property></div>
                                                    <div class="message-line-right-content"><s:property value="#me.getContent()"></s:property></div>
                                                    <div class="message-line-right-time"><s:property value="#me.getTime()"></s:property></div>
                                                </div>
                                            </div>
                                        </s:if>
                                        <s:if test="#me_st.index==3">
                                            <div class="message-more">
                                                more
                                            </div>
                                        </s:if>
                                    </s:iterator>--%>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </div>
</div>
</body>
<script type="text/javascript" src="../res/js/jquery-3.2.0.min.js"></script>
<script type="text/javascript" src="../res/js/header.js"></script>
<script type="text/javascript" src="../res/js/teacherVisit.js"></script>
<script>
    $(document).ready(function () {
        $(".avatar").css({
            'background': 'url(<s:property value="teacher.userAvatar()"></s:property>) center center no-repeat',
            'background-size': '90% 90%'
        });
    });
    /*var lng =*/<%--${teacher.lng}--%>
    /*var lat =*/<%--${teacher.lat}--%>
</script>
<script type="text/javascript" src="../res/js/visitMap.js"></script>
<script src="http://webapi.amap.com/maps?v=1.3&key=dc7c0b9b229db77d6ce083ece94031e4&callback=init"></script>
</html>