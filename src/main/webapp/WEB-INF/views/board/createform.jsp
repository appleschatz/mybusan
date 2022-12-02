<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>write.jsp</title>
	<link href="../css/main.css" rel="stylesheet" type="text/css">
</head>
<body>
	<h3>업적인증</h3>
	<p>
		<button type="button" onclick="location.href='/home.do'">목록으로</button>
	</p>
<!--  	
	Create table	ac_ certification(
	ce_sequence				varchar primary key	  -- 업적 글 번호
	,ce_name				varchar	not null 	  -- 업적명	
	,ce_content				varchar not null      -- 업적내용
	,ce_ review				varchar not null      -- 업적달성후기
	,ce_filename			varchar not null	  -- 업적 사진 파일
);
-->

	
	<form name="form1" method="post" action="insert" enctype="multipart/form-data">
		<table border="1">
		<tr>
			<td>업적명</td>
			<td><input type="text" name="ce_name"></td>
		</tr>
		<tr>
			<td>업적내용</td>
			<td><input type="text" name="ce_content"></td>
		</tr>
		<tr>
			<td>업적달성후기</td>
			<td>
				<textarea rows="5" cols="60" name="ce_review"></textarea>
			</td>
		</tr>
		<tr>
			<td>업적달성파일</td>
			<td><input type="file" name="img"></td>
		</tr>
		<tr>
			<td colspan="2" align="center">
				<input type="submit" value="게시글등록">
			</td>
		</tr>
		</table>
	</form>
</body>
</html>