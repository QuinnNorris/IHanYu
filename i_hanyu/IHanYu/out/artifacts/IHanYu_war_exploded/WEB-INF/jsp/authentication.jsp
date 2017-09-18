<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
	<title>认证信息</title>
	<link rel="stylesheet" style="text/css" href="css/studystyle.css">
	<script>
	function previewImage(file)
        {
          var MAXWIDTH  = 260; 
          var MAXHEIGHT = 180;
          var div = document.getElementById('preview');
          if (file.files && file.files[0])
          {
              div.innerHTML ='<img id=imghead>';
              var img = document.getElementById('imghead');
              img.onload = function(){
                var rect = clacImgZoomParam(MAXWIDTH, MAXHEIGHT, img.offsetWidth, img.offsetHeight);
                img.width  =  rect.width;
                img.height =  rect.height;
                img.style.marginTop = rect.top+'px';
              }
              var reader = new FileReader();
              reader.onload = function(evt){img.src = evt.target.result;}
              reader.readAsDataURL(file.files[0]);
          }
          else
          {
            var sFilter='filter:progid:DXImageTransform.Microsoft.AlphaImageLoader(sizingMethod=scale,src="';
            file.select();
            var src = document.selection.createRange().text;
            div.innerHTML = '<img id=imghead>';
            var img = document.getElementById('imghead');
            img.filters.item('DXImageTransform.Microsoft.AlphaImageLoader').src = src;
            var rect = clacImgZoomParam(MAXWIDTH, MAXHEIGHT, img.offsetWidth, img.offsetHeight);
            status =('rect:'+rect.top+','+rect.left+','+rect.width+','+rect.height);
            div.innerHTML = "<div id=divhead style='width:"+rect.width+"px;height:"+rect.height+"px;margin-top:"+rect.top+"px;"+sFilter+src+"\"'></div>";
          }
        }
    function clacImgZoomParam( maxWidth, maxHeight, width, height ){
            var param = {top:0, left:0, width:width, height:height};
            if( width>maxWidth || height>maxHeight )
            {
                rateWidth = width / maxWidth;
                rateHeight = height / maxHeight;
                 
                if( rateWidth > rateHeight )
                {
                    param.width =  maxWidth;
                    param.height = Math.round(height / rateWidth);
                }else
                {
                    param.width = Math.round(width / rateHeight);
                    param.height = maxHeight;
                }
            }
             
            param.left = Math.round((maxWidth - param.width) / 2);
            param.top = Math.round((maxHeight - param.height) / 2);
            return param;
        }
    </script>
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
			<div class="cardphoto" style="float:left;height:674px;width:698px;">
				<p style="color:#CA3E41;font-size:18px;margin-left:77px;margin-top:76px;">证件照片</p>
				<div id="preview" style="width:450px;height:450px;border:5px solid #F0EEEE;overflow:hidden;float: left;margin-left:20px;margin-top:20px;">
   		 				<img id="imghead" width=450 height=450 border=0 src='<%=request.getContextPath()%>/images/heart.gif' style="">
				</div>
					<input name="headPortrait" type="file" onchange="previewImage(this)" style="margin-top: 1px;position: relative;height: 50px;width: 71px;float: left;margin-left:200px" alt="" value="上传">
			</div>
			<div style="float:right;height:674px;width:398px;">
				<p style="color:#CA3E41;font-size:18px;margin-left:77px;margin-top:76px;">通过认证</p>
				<img src="images/shimin2.gif" alt="">
			</div>
		</div>
	</div>
		
	<div class="footer">
		<a href="####">关于爱汉语</a>
		<a href="####">联系我们</a>
		<a href="####">服务协议</a>
	</div>
</body>
</html>