<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
	<title>账号管理</title>
	<script src="http://libs.baidu.com/jquery/1.8.3/jquery.min.js"></script>
	<link rel="stylesheet" style="text/css" href="css/studystyle.css">
</head>
<body>
<div class="head">
	<div class="head-top">
			<select class="select-city">
					<option value="">上海 Shanghai</option>
					<option value="1">华东师范</option>
					<option value="2">华西师范</option>
					<option value="3">华南师范</option>
					<option value="4">华北师范</option>
			</select>
				<div class="search-box">
					<form action="" method="get">
						<div class="search-box-text"><input name="" type="text"></div>
						<div class="search-box-logo"><input name="" type="button"></div>
					</form>
				</div>
			<select class="user">
					<option></option>
					<option value="1">注销</option>
					<option value="2">切换用户</option>
			</select>
	</div>
	<div class="head-bottom">
		<ul class="head-tag">
			<li style="width:132px;"><a href="####">首页 Home</a></li>
			<li style="width:246px;"><a href="####">汉语教师 Chinese Teachers</a></li>
			<li style="width:200px;"><a href="####">语伴 Language Partners</a></li>
		</ul>
	</div>
</div>
	<div class="background">

		<div style="width:1096px;height:736px;background-color:white;margin-top:38px;margin-left:90px;float:left">
			<div class="accounts" style="width:1062px;height:58px;margin:0 auto;border-bottom:2px solid #CA3E41;">
				<ul>
					<li>账户</li>
					<li>认证信息</li>
				</ul>
			</div>
			<form action="" method="get">
			<div class="change-password" style="width:990px;height:322px;background-color:#EDEDED;margin:0 auto;margin-top:57px;padding-top:29px;">
				<p style="color:#CA3E41;font-size:18px;margin-left:77px;">修改密码 Change password</p>
				<div id="passwordError">
				<div style="width:1000px;height:202px">
					<div style="width:160px;height:201px;float:left">
						<label>&nbsp;&nbsp;&nbsp;原 密 码<br>&nbsp;&nbsp;&nbsp;Original password</label>
						<label>&nbsp;&nbsp;&nbsp;新 密 码<br>&nbsp;&nbsp;&nbsp;New password </label>
						<label>&nbsp;&nbsp;&nbsp;确认密码<br>&nbsp;&nbsp;&nbsp;Confirm password</label>
					</div>
					<div style="width:317px;height:201px;margin-left:24px;float:left">
						<input id="oldPassword" type="password" name="oldPassword">
						<input id="newPassword" type="password" name="newPassword">
						<input id="confirmNewPassword" type="password" name="confirmNewPassword">
					</div>
					<div style="width:1000px;height:30px;float:left">
						<input type="submit" value="" style="background:url(images/save.gif) no-repeat;width:84px;height:34px;float:left;margin-left:467px;border:0px;">
					</div>
				</div>
			</div>
			</form>
			<form action="" method="get">
			<div style="width:990px;height:200px;background-color:#EDEDED;margin:0 auto;margin-top:23px;padding-top:29px">
				<p style="color:#CA3E41;font-size:18px;margin-left:77px;">安全设置</p>
				<input type="checkbox" style="margin-left:50px" name="secureSet" value="1">每次登陆发送验证码到手机进行验证
				<div style="width:1000px;height:30px;float:left">
					<input type="submit" value="" style="background:url(images/save.gif) no-repeat;width:84px;height:34px;float:left;margin-left:467px;border:0px;">
				</div>
			</div>
			</form>
		</div>
	</div>
		
	<div class="footer">
		<a href="####">关于爱汉语</a>
		<a href="####">联系我们</a>
		<a href="####">服务协议</a>
	</div>
</body>
</html>
<script type="text/javascript">
 function submitComment() {
		var oldPassord = $("#oldPassword").val();
		var newPassword= $("#newPassword").val();
		var confirmNewPassword= $("#confirmNewPassword").val();
		$.ajax({
					type : "post",//请求方式  
					url : "editPassword",
					timeout : 800000,//超时时间：800秒  
					dataType : "json",//设置返回数据的格式  
					data : {
						"oldPassword" : oldPassword,
						"newPassword" : newPassword
					},
					//请求成功后的回调函数 data为json格式  
					success : function(data) {
					 jsondata=$.parseJSON(data);
                     if(jsondata.result=="success"){
                         alert("修改成功");
                     }
                     else{
                         alert("原密码错误");
                     }

                     },
                     error : function() {
                    	 alert(arguments[1]);
 						alert("请求出错");
 					 }
                     });
 }
 </script>