<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>


<h2>문의하기</h2>
<p>서비스 이용에 관한 문의사항이나 개선 아이디어를 제안해주세요.</p>

<hr>

<form name='qna' method='post' action='create.do'>
	<input type='hidden' name='user_id'>
	<table class='table'>
	<tr>
	<th>이메일 주소</th>
	<td><input type='text' name='q_address' size='60'></td>
	</tr>
	<tr>
	<th>문의내용</th>
	<td><textarea name='q_contents'></textarea></td>
	</tr>
	</table>
	
	<div>
	<p>문의하실 내용을 보내주세요. 빠른 시일내에 귀하의 이메일로 고객 서비스팀이 연락드리겠습니다.<br>
	수집항목 : 사용자 이메일 주소<br>
	수집목적 : 회원제 서비스 이용에 따른 본인 확인, 불만 처리, 오류 해결 등 민원 처리 및 결과 회신<br>
	보유 및 이용기간 : 수집된 이메일 주소는 관련 법령에 달리 명시되어 있지 않는 한, 문의 처리 후 1년간 보관<br>
	그 밖에 사항은 <a href="">개인정보 처리방침</a>에 대하여 동의하셔야 합니다<br>
	● 고객님은 동의를 거부하실 수 있으며, 거부 시 문의 등록을 하실 수 없습니다.</p>
	</div>
	
	
	<div><input type='checkbox' name='agree' value='Y'>개인정보 수집, 이용에 대하여 동의합니다.</div>
	
	
	<div><input type='submit' value="제출"></div>
	
	
</form>
</body>
</html>