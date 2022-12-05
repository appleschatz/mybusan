<%@page import="org.yaml.snakeyaml.tokens.BlockEndToken"%>
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
    <div class="title">팀 모집글 상세보기</div>
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
    
   
        <tr>
            <td>${dto.team_no}</td> 
            <td>${dto.team_name}</td>
            <td>${dto.team_intro}</td>
            <td>${dto.team_interest}</td>
            <td>${dto.team_number}</td>
            <td>${dto.team_sdate} / ${dto.team_edate}</td>
             <td>${dto.team_state}
             <c:if test="${sessionScope.sessionID !=null }">
             	<c:if test="${sessionScope.sessionID ==dto.user_id }">
           	   <input type="button" value="모집마감" onclick="location.href='updatestate.do?team_no=${dto.team_no}'">
           	   <input type="button" value="수정" onclick="location.href='update.do?team_no=${dto.team_no}'">
				<input type="button" value="삭제" onclick="location.href='delete.do?team_no=${dto.team_no}'">
           </c:if>
           </c:if>
           </td>
        </tr>
        
          <c:forEach var="dto" items="${TMlist}">
        <tr>
            <td>${dto.team_mem_no}</td> 
            <td>${dto.team_no}</td>
            <td>${dto.user_id}</td>
            <td>${dto.team_mem_state}</td>
            <td>${dto.team_mem_adate}</td>
        </tr>
    </c:forEach>
   
    
    </table>
    
    
				
    
</body>
</html>