<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>QnA 메일 보내기</title>
</head>
<body>

<h3> QnA 메일 보내기 </h3>
<form action="send.do">
	<table class="table">
	<tr>
		<th>수신인</th>
		<td><input type="email" name="to"></td>
	</tr>
	<tr>
		<th>발신인</th>
		<td><input type="email" name="from"></td>
	</tr>
	<tr>
		<th>제목</th>
		<td><input type="text" name="subject"></td>
	</tr>
	<tr>
		<th>내용</th>
		<td><textarea rows="5" cols="30" name="content"></textarea></td>
	</tr>
	<tr>
		<td colspan="2">
			<input type="submit" value="메일전송" class="btn btn-primary">
			<input type="reset" value="취소" class="btn btn-danger">
		</td>
	</tr>
	</table>
</form>
</body>
</html>