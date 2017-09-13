<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
	<title>消息中心</title>
	<script src="http://libs.baidu.com/jquery/1.8.3/jquery.min.js"></script>
	<link rel="stylesheet" href="css/styles.css">
  <link rel="stylesheet" href="css/studystyle.css">
	<link rel="stylesheet" href="css/bootstrap.min.css">
	<script src="http://static.runoob.com/assets/jquery/2.0.3/jquery.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script>

		$(window).scroll(function() { 
            var scrolls = $(this).scrollTop();
            $(".context_block").each(function(){ //类名为“head”的块级元素
                var height = $(this).height();
                if($(this).position().top + height-60> scrolls){
                    var _index = $(".context_block").index($(this));
                    $(".head  a").parent().siblings().contents("a").removeClass("section");    
                    $($(".head  a")[_index]).addClass("section");//动态改变class为“menu” 的块级元素下的a标签的样式（添加或者删除某个类）
                    return false;
                }
            });
        });
	</script>
</head>
<body>
	<div class="head">
		<div class="menu">
			<div><img src="images/ihanyulogo1.png" width="80px" height="90px" style="float:left;"></div>
			<div class="btn-bar-center">
				<ul>
					<li><a href="index.jsp"><scan style="width:100%;text-align:center">首页</scan><br><scan style="font-size:15px;text-align:center">Home</scan></a></li>
					<li><a href="teacherSearch.action"><scan style="width:100%;text-align:center">汉语教师</scan><br><scan style="font-size:15px;text-align:center">Chinese Teacher</scan></a></li>
					<li><a href="partnerSearch.action"><scan style="width:100%;text-align:center">语伴</scan><br><scan style="font-size:15px;text-align:center">Language Partner</scan></a></li>
				</ul>
			</div>
			<div class="btn-bar-right" id="notonload">
				<ul>
					<li class="btn-bar-right-signup"><a href="sign-up.jsp" style="width:80px;text-align:center" >注册<br>sign up</a></li>
					<li><a href="sign-in.jsp" style="color:rgba(0, 0, 0, 0.3);display:block;width:75px;text-align:center">登录<br>sign in</a></li>
				</ul>
			</div>
			<div class="btn-bar-right-onload" id="onload">
				<a href="#"><img src=${sessionScope.userInfo.avatar} style="width:40px;height:40px;border-radius:126px;"></a>
				<span style="color:rgba(0, 0, 0, 0.3);font-size:19px;">${sessionScope.userInfo.userName}</span>
			</div>
		</div>
	</div>
	<div class="announcement-body">
    <article class="tabs">

    <input checked id="one" name="tabs" type="radio">
      <label for="one">我的评论</label>

      <input id="two" name="tabs" type="radio" value="Two">
      <label for="two">系统通知</label>

      <div class="panels">
        <div class="panel">
            <s:iterator value="commentMessageList" id="st">
            <div class="none" >
              <div class="avatar">
                <img src=<s:property value="#st.getSender().getAvatar()"/> width="100" height="100">
              </div>
                <div class="none_content">
                    <h3><s:property value="#st.getSender().name()"/></h3>
                    <p><s:property value="#st.content"/></p>
                </div>
            </div>
            </s:iterator>
            </div>
        <div class="panel">
            <div class="none" >
              <div class="avatar">
                <img width="100" height="100">
              </div>
              <div class="none_content">
                <h3></h3>
                <p></p>
              </div>
            </div>
                        <div class="none" >
              <div class="avatar">
                <img width="100" height="100">
              </div>
              <div class="none_content">
                <h3></h3>
                <p></p>
              </div>
            </div>
                        <div class="none" >
              <div class="avatar">
                <img width="100" height="100">
              </div>
              <div class="none_content">
                <h3></h3>
                <p></p>
              </div>
            </div>
                        <div class="none" >
              <div class="avatar">
                <img width="100" height="100">
              </div>
              <div class="none_content">
                <h3></h3>
                <p></p>
              </div>
            </div>        
        </div>
      </div>

    </article>
 </div>

</div>
	</div>
</body>
</html>