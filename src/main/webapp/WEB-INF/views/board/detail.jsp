<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>detail.jsp</title>
	<script src="/js/jquery-3.6.1.min.js"></script>
	<link href="/css/main.css" rel="stylesheet" type="text/css">
	<script>
	function board_update(){//함수명 호출 
		document.form1.action="/board/update";//
		document.form1.submit();
	}//update() end
	
	function board_delete(){
		if(confirm("영구히 삭제됩니다\n진행할까요?")){
			document.form1.action="/board/delete";
			document.form1.submit();
		}//if end
	}//delete() end
	</script>
</head>
<body>
	<h3> 업적상세보기 / 업적수정 / 업적삭제 </h3>
	<p>
		<button type="button" onclick="location.href='/board/list'">글목록</button>
	</p> 
	<form name="form1" method="post" action="insert" enctype="multipart/form-data" >
	<table border="1">
	<tr>
		<td>업적명</td>
		<td> <input type="text" name="ce_name" value="${board.ce_name}"> </td>
	</tr>
	<tr>
		<td>업적내용</td>
		<td> <input type="text" name="ce_content" value="${board.ce_content}"></td>
	</tr>
	<tr>
		<td>업적달성후기</td>
		<td><input type="text" name="ce_review" value="${board.ce_review}"></td>
	</tr>
	<tr>
		<td>업적달성사진</td>
		<td>
			<c:if test="${board.ce_filename != '-'}">
				<img src="/storage/${board.ce_filename}"width="100px">
			</c:if>
			<br>
			<input type="file" name="img">
		</td>
	</tr>
	<tr>
		<td colspan="2" align="center">
			<input type="hidden" name="ce_sequence" value="${board.ce_sequence}">
			<input type="button" value="상품수정" onclick="board_update()">
			<input type="button" value="상품삭제" onclick="board_delete()">
		</td>
	</tr>
	</table>
	</form>

</body>
</html>
