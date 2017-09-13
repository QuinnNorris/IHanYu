<%@ page language="java" contentType="text/html; charset=UTF-8;" pageEncoding="UTF-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
	<title>语伴搜索</title>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width,minimum-scale=1.0,maximum-scale=1.0"/>
	<link rel="stylesheet" type="text/css" href="./css/partner-search.css">
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
				<img class="user_head" src='<s:property value="#session.userInfo.userAvatar()"></s:property>' >
				<div class="user_name"><s:property value="#session.userInfo.userName()"></s:property> </div>
			</div>
			<div class="user_item" onclick="changePerson('<s:property value="#session.userInfo.userCenter()"></s:property>')">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;个人中心</div>
			<div class="user_item" >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;首页</div>
			<div class="user_item" >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;教师</div>
			<div class="user_item" >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;语伴</div>
			<div class="user_item" onclick="LoginOut()">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;退出</div>
		</div>
		<div class="login-regist-space space-row"></div>
	</div>
	<div class="content">
		<div class="main-frame">
			<div class="title-require-search line" id="title-require-search">
				<div class="title-card">
					<span class="red-title">语伴</span>
					<span class="black-title">信息筛选</span>
				</div>
				&nbsp;
				&nbsp;
				<div class="search-card">
					<div class="search-card-box">
						<input type="text" name="search" class="text-search"><!--
						--><div class="search-img"></div>
					</div>
				</div>
			</div>
			<div class="table line">
				<div class="table-line">
					<div class="table-column-left">
						<div class="table-label">她/他说<br/>He/She Speak</div>
					</div>
					<div class="table-column-right">
						<div class="table-item item-chinese Chinese">
							<span class="table-item-c">汉语</span></br><span class="table-item-e">Chinese</span>
						</div>
						<div class="table-item item-chinese English">
							<span class="table-item-c">英语</span></br><span class="table-item-e">English</span>
						</div>
						<div class="table-item item-chinese Japanese">
							<span class="table-item-c">日语</span></br><span class="table-item-e">Japanese</span>
						</div>
						<div class="table-item item-chinese Korean">
							<span class="table-item-c">韩语</span></br><span class="table-item-e">Korean</span>
						</div>
					</div>
				</div>
				<div class="table-line">
					<div class="table-column-left">
						<div class="table-label">她/他学<br/>He/She Learn</div>
					</div>
					<div class="table-column-right">
						<div class="table-item item-chinese Chinese">
							<span class="table-item-c">汉语</span></br><span class="table-item-e">Chinese</span>
						</div>
						<div class="table-item item-chinese English">
							<span class="table-item-c">英语</span></br><span class="table-item-e">English</span>
						</div>
						<div class="table-item item-chinese Japanese">
							<span class="table-item-c">日语</span></br><span class="table-item-e">Japanese</span>
						</div>
						<div class="table-item item-chinese Korean">
							<span class="table-item-c">韩语</span></br><span class="table-item-e">Korean</span>
						</div>
					</div>
				</div>
				<div class="table-line">
					<div class="table-column-left">
						<div class="table-label">语伴性别<br/>Partner'sex</div>
					</div>
					<div class="table-column-right">
						<div class="table-item item-chinese male">
							<span class="table-item-c">男</span></br><span class="table-item-e">male</span>
						</div>
						<div class="table-item item-chinese female">
							<span class="table-item-c">女</span></br><span class="table-item-e">female</span>
						</div>
					</div>
				</div>
				<div class="table-line">
					<div class="table-column-left">
						<div class="table-label">距离</br>Distance</div>
					</div>
					<div class="table-column-right">
						<div class="table-item item-dis 0-2000m">
							<span class="table-item-c"></span><span class="table-item-e">0-2000m</span>
						</div>
						<div class="table-item item-dis 2000-5000m">
							<span class="table-item-c"></span><span class="table-item-e">2000-5000m</span>
						</div>
						<div class="table-item item-dis 5000-10000m">
							<span class="table-item-c"></span><span class="table-item-e">5000-10000m</span>
						</div>
						<div class="table-item item-dis 10000+m">
							<span class="table-item-c"></span><span class="table-item-e">10000+m</span>
						</div>
					</div>
				</div>
				<div class="table-line">
					<div class="table-column-left">
						<div class="table-label">最后登录</br>Last Login</div>
					</div>
					<div class="table-column-right">
						<div class="table-item item-dis 10days">
							<span class="table-item-c"></span><span class="table-item-e">10days</span>
						</div>
						<div class="table-item item-dis 30days">
							<span class="table-item-c"></span><span class="table-item-e">30days</span>
						</div>
						<div class="table-item item-dis 90days">
							<span class="table-item-c"></span><span class="table-item-e">90days</span>
						</div>
						<div class="table-item item-dis 180days">
							<span class="table-item-c"></span><span class="table-item-e">180days</span>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="info">
			<div class="info-cards-side">
				<div class="arrow-box">
					<div class="left-arrow"></div>
				</div>
			</div>
			<div class="info-cards">
				<s:iterator value="partnerList" id="pl" begin="0">
					<div class="info-card" onclick="changePerson('visitPartner.action?id=<s:property value="#pl.getId()"></s:property> ')">
						<div class="info-card-head">
							<div class="info-card-distance">1450m</div>
						</div>
						<div class="info-card-name"><s:property value="#pl.userName()"></s:property></div>
						<div class="info-card-goodAt">
							<div class="info-card-goodAt-item">
								<s:if test="#pl.getGender==1">他</s:if><s:else>她</s:else>说
								<br/>
								<span><s:if test="#pl.getGender==1">He</s:if><s:else>She</s:else>speak</span>
							</div>
							<div class="info-card-goodAt-item">
								<s:property value="#pl.getMotherLanguage().lanEn()"></s:property>
								<br/>
								<span><s:property value="#pl.getMotherLanguage().lanCn()"></s:property></span>
							</div>
							<div class="info-card-goodAt-item">
								<s:if test="#pl.getGender==1">他</s:if><s:else>她</s:else>学
								<br/>
								<span><s:if test="#pl.getGender==1">He</s:if><s:else>She</s:else>learn</span>
							</div>
							<div class="info-card-goodAt-item">
								<s:property value="#pl.getPartnerLanguage().lanEn()"></s:property>
								<br/>
								<span><s:property value="#pl.getPartnerLanguage().lanCn()"></s:property></span>
							</div>
						</div>
					</div>
				</s:iterator>
			</div>
			<div class="info-cards-side">
				<div class="arrow-box">
					<div class="right-arrow"></div>
				</div>
			</div>
		</div>
		<div class="main-frame map-main-frame">
			<div class="map-box line">
				<div class="map-label">地图找教师</br>Search teachers on map</div>
				<div class="map-content" id="map"></div>
			</div>
		</div>
	</div>
</div>
</body>
<script type="text/javascript" src="./js/jquery-3.2.0.min.js"></script>
<script type="text/javascript" src="./js/header.js"></script>
<script type="text/javascript" src="./js/partner-search.js"></script>
<script src="http://webapi.amap.com/maps?v=1.3&key=dc7c0b9b229db77d6ce083ece94031e4&callback=init"></script>
<script type="text/javascript">
	// 高德地图插入用户头像
	function init(){
		var map = new AMap.Map("map", {
			resizeEnable: true,
			zoom: 10,
			city: '上海市',
			lang: 'zh_en'
		});
		<c:forEach items="${partnerList}" var="t">
		var lng=${t.lng};
		var lat=${t.lat};
		var redAvatar="${t.avatar}";
		redAvatar=redAvatar.split(".",1)+"_map1.png";
		var marker = new AMap.Marker({
			position:[lng, lat],
			icon:redAvatar
		});
		marker.on('click',function(e){
			var next="visitTeacher.action?id="+"${t.id}";
			window.open(next);
		})
		marker.setMap(map);
		</c:forEach>
	}
</script>
</html>