<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>主页</title>
    <meta name="viewport" content="width=device-width,minimum-scale=1.0,maximum-scale=1.0"/>
    <meta charset="utf-8">
    <link rel="stylesheet" type="text/css" href="./css/homePage2.css">
</head>
<body>
<div class="main">
    <div class="head" id="head1">
        <div class="image"></div>
        <div class="items">
            <div class="item">首页<br/>Home</div>
            <div class="item">汉语教师<br/>Chinese Teacher</div>
            <div class="item">语伴<br/>Language Partner</div>
        </div>
        <div class="login-regist">
            <div class="login-regist-item" id="login">登录<br/>Login</div>
            <div class="login-regist-item" id="regist">注册<br/>Regist</div>
            <div class="user">
                <img class="user_head" src='<s:property value="#session.userInfo.userAvatar()"></s:property>' >
                <div class="user_name"><s:property value="#session.userInfo.userName()"></s:property></div>
            </div>
            <div class="user_item" onclick="changePerson('<s:property value="#session.userInfo.userCenter()"></s:property>')">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;个人中心</div>
            <div class="user_item" onclick="loginOut()">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;退出</div>
        </div>
    </div>
    <div class="head-transparent" id="head2">
        <div class="image"></div>
        <div class="items">
            <div class="item-transparent">首页<br/>Home</div>
            <div class="item-transparent">汉语教师<br/>Chinese Teacher</div>
            <div class="item-transparent">语伴<br/>Language Partner</div>
        </div>
        <div class="login-regist">
            <div class="login-regist-item-transparent" id="login2">登录<br/>Login</div>
            <div class="login-regist-item-transparent" id="regist2">注册<br/>Regist</div>
            <div class="user">
                <img class="user_head" src='<s:property value="#session.userInfo.userAvatar()"></s:property>' >
                <div class="user_name"><s:property value="#session.userInfo.userName()"></s:property></div>
            </div>
            <div class="user_item_transparent" onclick="changePerson('<s:property value="#session.userInfo.userCenter()"></s:property>')">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;个人中心</div>
            <div class="user_item_transparent" onclick="loginOut()">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;退出</div>
        </div>
    </div>
    <div class="content">
        <div class="page1">
            <div class="page1-head1">这里，你能找到</div>
            <div class="page1-head2">Here , You can get</div>
            <div class="page1-buttons">
                <div class="page1-button ">中文教师<br/>Chinese tutor</div>
                <div class="page1-button">语言伙伴<br/>Language partner</div>
            </div>
        </div>
        <div class="page2" style="background: hsl(0,0%,95%);padding: .01em 0;">
            <%--<div class="page2-head1">语伴推荐</div>--%>
            <%--<div class="page2-head2">Recomended Partner</div>--%>
            <%--<div class="partner-list-box">--%>
                <%--<div class="partner-list-line" >--%>
                    <%--<div class="partner-list-img-left partner-list-single" onclick="changePartner('<s:property value="partnerList.get(0).getId()"></s:property>')">--%>
                        <%--<div class="cloth-screen"></div>--%>
                        <%--<img src='<s:property value="partnerList.get(0).userAvatar()"></s:property>'>--%>
                    <%--</div>--%>
                    <%--<div class="partner-list-img-between partner-list-single">--%>
                        <%--<div class="sub-partner-between-top sub-partner-between">--%>
                            <%--<div class="partner-name">&nbsp;<s:property value="partnerList.get(0).getUserName()"></s:property> </div>--%>
                            <%--<div class="partner-C">&nbsp;母语：<s:property value="partnerList.get(0).getMotherLanguage().getLanguage_c()"></s:property></div>--%>
                            <%--<div class="partner-E">&nbsp;Mother Language:<s:property value="partnerList.get(0).getMotherLanguage().getLanguage_e()"></s:property></div>--%>
                            <%--<div class="partner-C">&nbsp;想学的语言：<s:property value="partnerList.get(0).getPartnerLanguage().getLanguage_c()"></s:property></div>--%>
                            <%--<div class="partner-E">&nbsp;Aim Language:<s:property value="partnerList.get(0).getPartnerLanguage().getLanguage_e()"></s:property></div>--%>
                        <%--</div>--%>
                        <%--<div class="sub-partner-between-bottom sub-partner-between">--%>
                            <%--<div class="partner-name">&nbsp;<s:property value="partnerList.get(1).getUserName()"></s:property> </div>--%>
                            <%--<div class="partner-C">&nbsp;母语：<s:property value="partnerList.get(1).getMotherLanguage().getLanguage_c()"></s:property></div>--%>
                            <%--<div class="partner-E">&nbsp;Mother Language:<s:property value="partnerList.get(1).getMotherLanguage().getLanguage_e()"></s:property></div>--%>
                            <%--<div class="partner-C">&nbsp;想学的语言：<s:property value="partnerList.get(1).getPartnerLanguage().getLanguage_c()"></s:property></div>--%>
                            <%--<div class="partner-E">&nbsp;Aim Language:<s:property value="partnerList.get(1).getPartnerLanguage().getLanguage_e()"></s:property></div>--%>
                        <%--</div>--%>
                    <%--</div>--%>
                    <%--<div class="partner-list-img-right partner-list-single" onclick="changePartner('<s:property value="partnerList.get(1).getId()"></s:property>')">--%>
                        <%--<div class="cloth-screen"></div>--%>
                        <%--<img src='<s:property value="partnerList.get(1).userAvatar()"></s:property>'>--%>
                    <%--</div>--%>
                    <%--<div class="partner-list-item partner-list-single" onclick="changePartner('<s:property value="partnerList.get(2).getId()"></s:property>')">--%>
                        <%--<div class="partner-item-image">--%>
                            <%--<img src='<s:property value="partnerList.get(2).userAvatar()"></s:property>'>--%>
                        <%--</div>--%>
                        <%--<div class="partner-name">&nbsp;<s:property value="partnerList.get(2).getUserName()"></s:property> </div>--%>
                        <%--<div class="partner-C">&nbsp;母语：<s:property value="partnerList.get(2).getMotherLanguage().getLanguage_c()"></s:property></div>--%>
                        <%--<div class="partner-E">&nbsp;Mother Language:<s:property value="partnerList.get(2).getMotherLanguage().getLanguage_e()"></s:property></div>--%>
                        <%--<div class="partner-C">&nbsp;想学的语言：<s:property value="partnerList.get(2).getPartnerLanguage().getLanguage_c()"></s:property></div>--%>
                        <%--<div class="partner-E">&nbsp;Aim Language:<s:property value="partnerList.get(2).getPartnerLanguage().getLanguage_e()"></s:property></div>--%>
                    <%--</div>--%>
                <%--</div>--%>
                <%--<div class="partner-list-line">--%>
                    <%--<div class="partner-list-img-right partner-list-single" onclick="changePartner('<s:property value="partnerList.get(3).getId()"></s:property>')">--%>
                        <%--<div class="cloth-screen"></div>--%>
                        <%--<img src='<s:property value="partnerList.get(3).userAvatar()"></s:property>'>--%>
                    <%--</div>--%>
                    <%--<div class="partner-list-img-between partner-list-single">--%>
                        <%--<div class="sub-partner-between-top sub-partner-between">--%>
                            <%--<div class="partner-name">&nbsp;<s:property value="partnerList.get(3).getUserName()"></s:property> </div>--%>
                            <%--<div class="partner-C">&nbsp;母语：<s:property value="partnerList.get(3).getMotherLanguage().getLanguage_c()"></s:property></div>--%>
                            <%--<div class="partner-E">&nbsp;Mother Language:<s:property value="partnerList.get(3).getMotherLanguage().getLanguage_e()"></s:property></div>--%>
                            <%--<div class="partner-C">&nbsp;想学的语言：<s:property value="partnerList.get(3).getPartnerLanguage().getLanguage_c()"></s:property></div>--%>
                            <%--<div class="partner-E">&nbsp;Aim Language:<s:property value="partnerList.get(3).getPartnerLanguage().getLanguage_e()"></s:property></div>--%>
                        <%--</div>--%>
                        <%--<div class="sub-partner-between-bottom sub-partner-between">--%>
                            <%--<div class="partner-name">&nbsp;<s:property value="partnerList.get(4).getUserName()"></s:property> </div>--%>
                            <%--<div class="partner-C">&nbsp;母语：<s:property value="partnerList.get(4).getMotherLanguage().getLanguage_c()"></s:property></div>--%>
                            <%--<div class="partner-E">&nbsp;Mother Language:<s:property value="partnerList.get(4).getMotherLanguage().getLanguage_e()"></s:property></div>--%>
                            <%--<div class="partner-C">&nbsp;想学的语言：<s:property value="partnerList.get(4).getPartnerLanguage().getLanguage_c()"></s:property></div>--%>
                            <%--<div class="partner-E">&nbsp;Aim Language:<s:property value="partnerList.get(4).getPartnerLanguage().getLanguage_e()"></s:property></div>--%>
                        <%--</div>--%>
                    <%--</div>--%>
                    <%--<div class="partner-list-img-left partner-list-single" onclick="changePartner('<s:property value="partnerList.get(4).getId()"></s:property>')">--%>
                        <%--<div class="cloth-screen"></div>--%>
                        <%--<img src='<s:property value="partnerList.get(4).userAvatar()"></s:property>'>--%>
                    <%--</div>--%>
                    <%--<div class="partner-list-item partner-list-single" onclick="changePartner('<s:property value="partnerList.get(5).getId()"></s:property>')">--%>
                        <%--<div class="partner-item-image">--%>
                            <%--<img src='<s:property value="partnerList.get(5).userAvatar()"></s:property>'>--%>
                        <%--</div>--%>
                        <%--<div class="partner-name">&nbsp;<s:property value="partnerList.get(5).getUserName()"></s:property> </div>--%>
                        <%--<div class="partner-C">&nbsp;母语：<s:property value="partnerList.get(5).getMotherLanguage().getLanguage_c()"></s:property></div>--%>
                        <%--<div class="partner-E">&nbsp;Mother Language:<s:property value="partnerList.get(5).getMotherLanguage().getLanguage_e()"></s:property></div>--%>
                        <%--<div class="partner-C">&nbsp;想学的语言：<s:property value="partnerList.get(5).getPartnerLanguage().getLanguage_c()"></s:property></div>--%>
                        <%--<div class="partner-E">&nbsp;Aim Language:<s:property value="partnerList.get(5).getPartnerLanguage().getLanguage_e()"></s:property></div>--%>
                    <%--</div>--%>
                <%--</div>--%>
            <%--</div>--%>
            <%--<div class="page2-foot1">获取更多资讯</div>--%>
                <div class="page2-head1">语伴推荐</div>
                <div class="page2-head2">Recomended Partner</div>
                <div class="page2-hidden-list">
                    <s:iterator value="partnerList" id="pl" begin="0" status="st">
                        <s:if test="#st.index<8">
                            <div class="page2-hidden-item" onclick="changePartner('<s:property value="#pl.getId()"></s:property> ')">
                                <div class="page2-hidden-item-image">
                                    <img src='<s:property value="#pl.userAvatar()"></s:property>'>
                                </div>
                                <div class="page2-hidden-name">&nbsp; <s:property value="#pl.getUserName()"></s:property></div>
                                <div class="page2-hidden-C">&nbsp;我说：<s:property value="#pl.getMotherLanguage().getLanguage_c()"></s:property></div>
                                <div class="page2-hidden-E">&nbsp;I speak : <s:property value="#pl.getMotherLanguage().getLanguage_e()"></s:property></div>
                                <div class="page2-hidden-C">&nbsp;学习：<s:property value="#pl.getPartnerLanguage().getLanguage_c()"></s:property></div>
                                <div class="page2-hidden-E">&nbsp;I learn : <s:property value="#pl.getPartnerLanguage().getLanguage_e()"></s:property></div>
                            </div>
                        </s:if>
                    </s:iterator>
                </div>
            <div class="page2-foot2">More</div>
            <div class="page2-extra"><p>+</p></div>
        </div>
        <div class="page2-hidden" id="page2-hidden">
            <div class="page2-head1">语伴推荐</div>
            <div class="page2-head2">Recomended Partner</div>
            <div class="page2-hidden-list">
                <s:iterator value="partnerList" id="pl" begin="8" status="st">
                    <s:if test="#st.index<12">
                        <div class="page2-hidden-item" onclick="changePartner('<s:property value="#pl.getId()"></s:property> ')">
                            <div class="page2-hidden-item-image">
                                <img src='<s:property value="#pl.userAvatar()"></s:property>'>
                            </div>
                            <div class="page2-hidden-name">&nbsp; <s:property value="#pl.getUserName()"></s:property></div>
                            <div class="page2-hidden-C">&nbsp;我说 ： <s:property value="#pl.getMotherLanguage().getLanguage_c()"></s:property></div>
                            <div class="page2-hidden-E">&nbsp;I speak : <s:property value="#pl.getMotherLanguage().getLanguage_e()"></s:property></div>
                            <div class="page2-hidden-C">&nbsp;学习 ： <s:property value="#pl.getPartnerLanguage().getLanguage_c()"></s:property></div>
                            <div class="page2-hidden-E">&nbsp;I learn : <s:property value="#pl.getPartnerLanguage().getLanguage_e()"></s:property></div>
                        </div>
                    </s:if>
                </s:iterator>
            </div>
        </div>
        <div class="page3">
            <div class="page3-head1">教师推荐</div>
            <div class="page3-head2">Recomend Teacher</div>
            <div class="teacher-list" id="teacher-list">
                <s:iterator value="teacherList" begin="0" end="3" id="tl">
                <div class="teacher-list-item" onclick="changeTeacher('<s:property value="#tl.getId()"></s:property>')">
                    <div class="teacher-item-img">
                        <div class="cloth-screen"></div>
                        <img src='<s:property value="#tl.userAvatar()"></s:property>' />
                    </div>
                    <div class="teacher-item-name"><s:property value="#tl.userName()"></s:property></div>
                    <div class="teacher-item-kill">
                        <s:iterator value="#tl.goodAt" begin="0" id="tg" status="tg_st">
                            <s:if test="#tg_st.index<2">
                                <div class="skill-item"><s:property value="#tg.getEn()"></s:property></div>
                            </s:if>
                        </s:iterator>
                    </div>
                </div>
                </s:iterator>
            </div>
        </div>
            <div class="teacher-list teacher-list-extra">
                <s:iterator value="teacherList" begin="4" id="tl">
                    <div class="teacher-list-item" onclick="changeTeacher('<s:property value="#tl.getId()"></s:property>')">
                        <div class="teacher-item-img">
                            <div class="cloth-screen"></div>
                            <img src='<s:property value="#tl.userAvatar()"></s:property>' />
                        </div>
                        <div class="teacher-item-name"><s:property value="#tl.userName()"></s:property></div>
                        <div class="teacher-item-kill">
                            <s:iterator value="#tl.getGoodAt()" begin="0" id="tg" status="tg_st">
                                <s:if test="#tg_st.index<2">
                                    <div class="skill-item"><s:property value="#tg.getEn()"></s:property></div>
                                </s:if>
                            </s:iterator>
                        </div>
                    </div>
                </s:iterator>
            </div>
            <div class="page3-foot1"></div>
            <div class="page3-foot2">More</div>
            <div class="page3-extra"><p>+</p></div>
        </div>
        <div class="other-info">
            <div class="other-info-left">
                <div class="other-info-items">
                    <div class="other-info-item">爱汉语</div>
                    <div class="other-info-item">爱汉语首页</div>
                    <div class="other-info-item">爱汉语官微</div>
                </div>
                <div class="other-info-items">
                    <div class="other-info-item">联系与合作</div>
                    <div class="other-info-item">联系我们</div>
                    <div class="other-info-item">用户反馈</div>
                    <div class="other-info-item">加入我们</div>
                </div>
                <div class="other-info-items">
                    <div class="other-info-item">移动客户端</div>
                    <div class="other-info-item">Android版</div>
                    <div class="other-info-item">IOS版</div>
                    <div class="other-info-item">Web版</div>
                </div>
            </div>
            <div class="other-info-right">
                <div class="other-info-items">
                    <div class="other-info-item">关注我们</div>
                    <div class="other-info-item">新浪微博：@爱汉语</div>
                    <div class="other-info-item">官方Q Q：982675088</div>
                </div>
            </div>
        </div>
        <div class="home-foot">@2017-2017 iHanyu&nbsp;&nbsp;沪ICP备17027692号&nbsp;&nbsp;沪ICP证件171131号&nbsp;&nbsp;沪公网安备 11010802020064号</div>
    </div>
</div>
</body>
<script type="text/javascript" src="./js/jquery-3.2.0.min.js"></script>
<script type="text/javascript" src="./js/homePage2.js"></script>
</html>