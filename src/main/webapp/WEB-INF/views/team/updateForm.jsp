<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>updateForm.jsp</title>
    <style> 
      *{ font-family: gulim; font-size: 24px; } 
    </style> 
    <link href="../css/style.css" rel="stylesheet" type="text/css">
</head>
<body>
    <div class="title">팀 수정</div>
    <form name="frm" method="post" action="update.do" enctype="multipart/form-data">
        <input type="hidden" name="team_no"      value="${dto.team_no}">     <!-- 내글번호 -->
        <table class='table'>
        <tr>
          <th>팀명</th>
          <td><input type='text' name='team_name' size='10' value="${dto.team_name}"></td>
        </tr>
        <tr>
          <th>팀소개</th>
             <td><textarea  name='team_intro' >${dto.team_intro}</textarea></td>
        </tr>
        
        <tr>
          <th>관심사</th>
          <td><input type="text" name="team_interest" list="interestList" value='${dto.team_interest}'></td>
        </tr>
        
          <tr>
          <th>정원</th>
          <td><input type='number' name='team_number' min='1' max='10' value='${dto.team_number}'></td>
        </tr>  
        <tr>
         <th>모집 종료일</th>
          <td><input type='date' name='team_edate' value="${dto.team_edate}"></td>
         </tr>
          
        </table>
        
         <datalist id="interestList">
        <option value="맛집"></option>
        <option value="관광"></option>
        <option value="인연"></option>
   		 </datalist>

        <div class='bottom'>
          <input type='submit' value='팀수정'>
          <input type="button" value="팀목록" onclick="location.href='/list.do">
          <input type="button" value="HOME"   onclick="location.href='/home.do'">   
        </div>  
    </form>
</body>
</html>