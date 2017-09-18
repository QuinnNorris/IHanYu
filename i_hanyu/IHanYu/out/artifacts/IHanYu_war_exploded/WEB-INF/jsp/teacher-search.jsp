<%@ page language="java" contentType="text/html; charset=UTF-8;" pageEncoding="UTF-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
	<title>教师搜索</title>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width,minimum-scale=1.0,maximum-scale=1.0"/>
	<link rel="stylesheet" type="text/css" href="./css/teacher-search.css">
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
			<div class="item">语伴<br/>Language Partnser</div>
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
					<span class="red-title">教师</span>
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
						<div class="table-label">汉语等级<br/>Chinese Level</div>
					</div>
					<div class="table-column-right">
						<s:iterator value="teachingList" begin="6" id="teaching_list">
							<div class="table-item item-skill <s:property value="#teaching_list.getEn()"></s:property>">
								<span class="table-item-c"><s:property value="#teaching_list.Ch()"></s:property></span>
								</br>
								<span class="table-item-e"><s:property value="#teaching_list.getEn()"></s:property></span>
								<div class="temp-save">goodAt <s:property value="#teaching_list.getId()"></s:property> </div>
							</div>
						</s:iterator>
					</div>
				</div>
				<div class="table-line">
					<div class="table-column-left">
						<div class="table-label">汉语技能</br>Chinese Skill
						</div>
					</div>
					<div class="table-column-right">
						<s:iterator value="teachingList" begin="0" end="5" id="teaching_list">
							<div class="table-item item-chinese <s:property value="#teaching_list.getEn()"></s:property> ">
								<span class="table-item-c"><s:property value="#teaching_list.Ch()"></s:property></span>
								</br>
								<span class="table-item-e"><s:property value="#teaching_list.getEn()"></s:property></span>
								<div class="temp-save">goodAt <s:property value="#teaching_list.getId()"></s:property> </div>
							</div>
						</s:iterator>
					</div>
				</div>
				<div class="table-line">
					<div class="table-column-left">
						<div class="table-label">上课时间</br>Class Time</div>
					</div>
					<div class="table-column-right">
						<s:iterator value="classTime" id="ct">
							<div class="table-item item-time <s:property value="#ct.getName()"></s:property>">
								<span class="table-item-c"></span>
								<span class="table-item-e"><s:property value="#ct.getName()"></s:property></span>
								<div class="temp-save">availableTime <s:property value="#ct.getId()"></s:property> </div>
							</div>
						</s:iterator>
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
						<div class="table-label">价格</br>Price</div>
					</div>
					<div class="table-column-right">
						<div class="item-price-input">
							<input type="text" class="price-start">
						</div>
						<div class="item-price"></div>
						<div class="item-price-input">
							<input type="text" class="price-end">
						</div>
						<div class="item-price-unit">RMB/h</div>
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
			<div class="info-cards" id="info-cards">
				<div class="temp-save" id="partnerId">0</div>
				<s:iterator value="teacherList" id="tl" begin="0">
					<div class="info-card" onclick="changePerson('visitTeacher.action?id=<s:property value="#tl.getId()"></s:property> ')">
						<div class="info-card-head">
							<div class="info-card-distance">1450m</div>
							<div class="info-card-location">
								<s:iterator value="#tl.classTime" begin="0" id="ct" status="st_ct">
									<s:if test="#st_ct.index<2">
										<s:property value="#ct.enAbbr()"></s:property>&nbsp;
									</s:if>
									<s:elseif test="#st_ct.index==2">
										...
									</s:elseif>
									<s:else></s:else>
								</s:iterator>
							</div>
						</div>
						<div class="info-card-name"><s:property value="#tl.userName()"></s:property></div>
						<div class="info-card-price"><span><s:property value="#tl.getPayment()"></s:property></span>￥/h</div>
						<div class="info-card-goodAt">
							<s:iterator value="#tl.goodAt" id="ga" begin="0" status="st_ga">
								<s:if test="#st_ga.index<3">
									<div class="info-card-goodAt-item">
										<s:property value="#ga.getZh()"></s:property>
											<br/>
										<span><s:property value="#ga.getEn()"></s:property></span>
									</div>
								</s:if>
								<s:elseif test="#st_ga.index==3">
									<div class="info-card-goodAt-item info-card-goodAt-item-more">
										...
									</div>
								</s:elseif>
							</s:iterator>
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
<script type="text/javascript" src="./js/teacher-search.js"></script>
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
		<c:forEach items="${teacherList}" var="t">
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