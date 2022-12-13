<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>


<!DOCTYPE html  PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="UTF-8">
    <link href="../css/main.css" rel="stylesheet" type="text/css">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<!-- 부트스트랩 사용하기 위해 -->

<meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<title>게시판 페이지</title>

</head>

<body>

<div class="container">

  <h2>업적 게시판</h2>          

  <table class="table table-hover">

    <thead>

      <tr>

        <th>글 번호</th>

        <th>업적명</th>

        <th>업적내용</th>

        <th>업적달성후기</th>
        
        <th>업적 사진 파일</th>
        
      </tr>

    </thead>
		<c:forEach var="row" items="${list}" varStatus="vs">
    <tbody>

      <tr>
<!--${list[0].ce_content}-->
        <td>${row.ce_sequence}</td>

        <td>${row.ce_name}</td>

        <td><a href="detail/${row.ce_sequence}">${row.ce_content}</a></td>

        <td>${row.ce_review}</td>
        
		<td>${row.ce_filename}</td>
      
      </tr>

    </tbody>
</c:forEach>
  </table>

  <button type="button" class="btn btn-primary pull-right" onclick="location.href='/board/create.do'">글쓰기</button>
  <form method ="post" action="search">
  		업적명 : <input type="text" name="ce_name" value="${ce_name}">
  				<input type="submit" value="검색">
  </form>
  <!--페이징-->
  <ul class="btn-group pagination">
    <c:if test="${pageMaker.prev }">
    <li>
        <a href='<c:url value="/board/list?page=${pageMaker.startPage-1 }"/>'><i class="fa fa-chevron-left"></i></a>
    </li>
    </c:if>
    <c:forEach begin="${pageMaker.startPage }" end="${pageMaker.endPage }" var="pageNum">
    <li>
        <a href='<c:url value="/board/list?page=${pageNum }"/>'><i class="fa">${pageNum }</i></a>
    </li>
    </c:forEach>
    <c:if test="${pageMaker.next && pageMaker.endPage >0 }">
    <li>
        <a href='<c:url value="/board/list?page=${pageMaker.endPage+1 }"/>'><i class="fa fa-chevron-right"></i></a>
    </li>
    </c:if>
</ul>
</div>

</body> 