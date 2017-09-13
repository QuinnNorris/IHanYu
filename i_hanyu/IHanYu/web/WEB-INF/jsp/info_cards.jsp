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
</body>
</html>