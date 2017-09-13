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
<div class="temp-save" id="partnerId"><s:property value="partnerId"></s:property> </div>
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
</body>
</html>