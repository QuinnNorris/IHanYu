<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<title>爱汉语</title>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width,minimum-scale=1.0,maximum-scale=1.0"/>
	<link rel="stylesheet" type="text/css" href="./css/teacher1.css">
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
			<%--<div class="user">
				<img class="user_head" src='<s:property value="#session.userInfo.userAvatar()"></s:property>' >
				<div class="user_name"><s:property value="#session.userInfo.userName()"></s:property> </div>
			</div>
			<div class="user_item" onclick="changePerson('<s:property value="#session.userInfo.userCenter()"></s:property>')">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;个人中心</div>
			--%><div class="user_item" >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;首页</div>
			<div class="user_item" >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;教师</div>
			<div class="user_item" >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;语伴</div>
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
			<div class="progress progress-not">
				<span>2</span>个人信息
			</div>
			<div class="progress progress-not">
				<span>3</span>上课信息
			</div>
			<div class="progress progress-space"></div>
		</div>
		<form class="info" action="registerOfTeachter1.action" id="account-info" method="post">
			<div class="info-label">账户信息</div>
			<div class="info-content">
				<div class="info-line">
					<div class="info-line-left">邮箱</br>Email</div>
					<div class="info-line-middle">
						<div class="info-input-icon info-email-icon"></div>
						<input type="text" name="email" class="info-input" id="email">
					</div>
					<div class="info-line-right info-line-email-note"></div>
				</div>
				<div class="info-line">
					<div class="info-line-left">密码</br>Password</div>
					<div class="info-line-middle">
						<div class="info-input-icon info-pw-icon"></div>
						<input type="password" name="password" class="info-input" id="pw">
					</div>
					<div class="info-line-right info-line-pw-note"></div>
				</div>
				<div class="info-line">
					<div class="info-line-left">密码强度</br>Password Strength</div>
					<div class="info-line-middle info-line-ps">
						<div class="info-line-middle-item"></div>
						<div class="info-line-middle-item"></div>
						<div class="info-line-middle-item"></div>
					</div>
					<div class="info-line-right"></div>
				</div>
				<div class="info-line">
					<div class="info-line-left">确认密码</br>Confirm Password</div>
					<div class="info-line-middle">
						<div class="info-input-icon info-ps-icon"></div>
						<input type="password" name="passwordConfirmation" class="info-input" id="pw_confirm">
					</div>
					<div class="info-line-right info-line-ps-note"></div>
				</div>
				<div class="info-line">
					<div class="info-line-left"></div>
					<div class="info-line-middle info-line-commit">
						<div class="info-commit">Next</div>
					</div>
					<div class="info-line-right"></div>
				</div>
			</div>
		</form>
	</div>
</div>
</body>
<script type="text/javascript" src="./js/jquery-3.2.0.min.js"></script>
<script type="text/javascript" src="./js/header.js"></script>
<script type="text/javascript" src="./js/teacher1.js"></script>
<script type="text/javascript">
//    function submit(){
//        document.getElementById("account-info").submit();
//    }
</script>
</html>