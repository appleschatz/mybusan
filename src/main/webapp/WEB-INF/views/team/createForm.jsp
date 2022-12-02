<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>createForm.jsp</title>
    <style> 
      *{ font-family: gulim; font-size: 24px; } 
    </style> 
    <link href="../css/style.css" rel="stylesheet" type="text/css">	
</head>
<body>
    <div class="team_no">팀 등록</div>
    <form name='frm' method='post' action='create.do' enctype="multipart/form-data">
        <input type="hidden"><!-- 부모글번호 -->
        <table class='table'>
        <tr>
          <th>팀명</th>
          <td><input type='text' name='team_name' size='10'></td>
        </tr>
        <tr>
          <th>팀소개</th>
          <td><textarea name='team_intro'></textarea></td>    
        </tr>
        <tr>
          <th>관심사</th>
          <td><input type="text" name="team_interest" list="interestList"></td>
        </tr>
        <tr>
          <th>정원</th>
          <td><input type='number' name='team_number' min='1' max='10' value='1'></td>
        </tr>
        <tr>
          <th>모집 종료일</th>
          <td><input type="date" name="team_edate" value='sysdate'></td>
        </tr>
        
        
        
    
        </table>
        
         <datalist id="interestList">
        <option value="맛집"></option>
        <option value="관광"></option>
        <option value="인연"></option>
   		 </datalist>
        
        
        
        <div class="bottom">
        	<input type='submit' value='팀등록'>
        	<input type="button" value="팀목록" onclick="location.href='list.do'">
            <input type="button" value="HOME"  onclick="location.href='/home.do'"> <!-- 절대경로 -->
        </div>
    </form>
</body>
</html>