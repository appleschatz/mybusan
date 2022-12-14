<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>    
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>       
    
<html lang="ko">
<head>
	<script src="../js/jquery-3.6.1.min.js"></script>
    <script src="../js/jquery.cookie.js"></script>
    <script src="../js/place.js"></script>
    
  <link href="../css/css1213.css" rel="stylesheet">
    <title>bssRun placeList</title>
    
  



</head>
<body>

    
  
    
    <!-- 강서구 -->
    <div id="gangseo_detail">

    <div class="fl" style="width:256px; position:absolute;">
    	<div class="title_box">
    		<div class="dong_title">동별로 선택</div>
    	</div>
    	<div id="dong_box" style="width:256px; height:51px; padding:10px;
    	border-bottom:solid #d6d6d6 1px; margin-left:15px; ">
   
    	<div>
    		<a href='javascript:history.back()'><img src="../images/왼화살표.png" class="dong_box_img" id="gangseogu_dui"></a>
    	</div>
    	
    	</div>
    	
    	<div class="dongs" style="height:715px;">
		<c:forEach var="dto" items="${list3}">
    	<div class="dong_list"> 
    		<img src="../images/카드1.jpg" class="gugunList_img">
			    		<img src="../images/화살표.png" class="hsp_img">
			    		<div class="gugun_name"><a href="list3.do?p_sigungu=${dto.p_umd}">${dto.p_umd}</a></div>
    	</div>
    	</c:forEach>
    	
    	</div>
    	</div>
    	</div>
    
    
    	
   
    	
</body>
</html>