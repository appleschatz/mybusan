<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>    
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>    

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>list.jsp</title>
    <style> 
      *{ font-family: gulim; font-size: 24px; } 
    </style> 
    <link href="../css/style.css" rel="stylesheet" type="text/css">
</head>
<body>
    <div class="title">팀 목록</div>
    <div class="content">
        <input type="button" value="팀 등록" onclick="location.href='create.do'">
        <input type="button" value="HOME"   onclick="location.href='/home.do'">
    </div>
    
    <table>
    <tr>
        <th>팀번호</th>
        <th>팀명</th>
        <th>팀소개</th>
        <th>관심사</th>
        <th>정원</th>
        <th>등록일/종료일</th>
        <th>모집중/완료</th>
    </tr>
    
    <c:forEach var="dto" items="${list}">
        <tr>
            <td>${dto.team_no}</td> 
            <td>${dto.team_name}</td>
            <td>${dto.tema_intro}</td>
            <td>${dto.team_interest}</td>
            <td>${dto.team_number}</td>
            <td>${dto.tema_sdate} / ${dto.tema_edate}</td>
             <td>${dto.team_state}</td>
        </tr>
    </c:forEach>
    
    </table>
    
</body>
</html>