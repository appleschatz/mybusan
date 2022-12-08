<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>loginForm</title>
    <script src="/js/jquery-3.6.1.min.js"></script>
    <script>
        var loginfail = "${loginfail}";
        if(loginfail){
            alert("로그인 실패");
        }
    </script>
</head>
<body>
<h3> 로그인/회원가입 </h3>
<form method="post" action="loginProc">
    <table>
        <tr>
            <td colspan="2">
                <input type="text" name="user_id" id="user_id" value="${save_id}" placeholder="아이디" required>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <input type="password" name="user_pw" id="user_pw" placeholder="비밀번호" required>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <input type="checkbox" name="save_id" id="save_id" value="SAVE"><label for="save_id">아이디 저장</label>
            </td>
        </tr>
        <tr>
            <td colspan="2"><input type="submit" value="로그인"></td>
        </tr>
        <tr>
            <td><a href="/registerForm">회원가입</a></td>
            <td><a href="/FindIDForm">아이디/비밀번호찾기</a></td>
        </tr>
    </table>
</form>
</body>
</html>
