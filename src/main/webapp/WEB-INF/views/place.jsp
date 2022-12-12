<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>    
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>    

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>placeList.jsp</title>
	<link href="../css/placeCss.css" rel="stylesheet"/> 	
</head>
<body>




    <div id=>부산광역시</div>
    <div class="content">
        <input type="button" value="HOME" onclick="location.href='/home.do'">
    </div>
    
    <table>
    <tr>
        <th>장소번호</th>
        <th>장소명</th>
        <th>카테고리명</th>
        <th>시도명</th>
        <th>시군구명</th>
        <th>읍면동명</th>
        <th>리명</th>
        <th>도로명주소</th>
        <th>위도</th>
        <th>경도a</th>
    </tr>
    
    <c:forEach var="dto" items="${list}">
        <tr>
            <td>${dto.p_code}</td> 
            <td>${dto.p_name}</td>
            <td>${dto.p_category}</td>
            <td>${dto.p_sido}</td>
            <td>${dto.p_sigungu}</td>
            <td>${dto.p_umd}</td>
            <td>${dto.p_ri}</td>
            <td>${dto.p_address}</td>
            <td>${dto.p_lng}</td>
             <td>${dto.p_lat}</td>													
        </tr>	
    </c:forEach>
    
    </table>
    
</body>
</html>