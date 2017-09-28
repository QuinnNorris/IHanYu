<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<title>爱汉语</title>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width,minimum-scale=1.0,maximum-scale=1.0"/>
	<link rel="stylesheet" type="text/css" href="../res/css/sign-in.css">
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
			<div class="user_item" >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;首页</div>
			<div class="user_item" >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;教师</div>
			<div class="user_item" >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;语伴</div>
			<div class="user_item" onclick="LoginOut()">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;退出</div>
		</div>
		<div class="login-regist-space space-row"></div>
	</div>
	<div class="content">
		<div class="head-info head-info-c">现在就开始我们的全新汉语学习之旅</div>
		<div class="head-info head-info-e">Now let's start our new Chinese learning journey</div>
		<div class="head-between"></div>
		<div class="login-box">
			<div class="login-line">
				<div class="login-line-left login-line-left-user"></div>
				<div class="login-line-right">
					<input type="text" class="login-line-input" placeholder="Email" id="email">
				</div>
			</div>
			<div class="login-line">
				<div class="login-line-left login-line-left-pw"></div>
				<div class="login-line-right">
					<input type="password" class="login-line-input" placeholder="Password" id="pw">
				</div>
			</div>
			<div class="login-line login-line-button">
				Login
			</div>
		</div>
		<div class="head-info head-forget">忘记密码?<span>Forget password?</span></div>
	</div>
</div>
</body>
<script type="text/javascript" src="../res/js/jquery-3.2.0.min.js"></script>
<script type="text/javascript" src="../res/js/header.js"></script>
<script type="text/javascript" src="../res/js/sign-in.js"></script>
<script type="text/javascript" src="../res/js/md5.js"></script>
</html>