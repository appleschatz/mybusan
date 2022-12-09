<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>findIDForm</title>
    <script src="/js/jquery-3.6.1.min.js"></script>
    <script src="/js/findCheck.js" defer></script>
</head>
<body>
    <form action="/findIDProc", method="post">
        이름 : <input type="text" name="user_name" id="user_name" required>
        이메일 : <input type="text" name="user_email" id="user_email" required>
        <input type="button" value="인증코드 발송" onclick="SendVericode();">
        인증코드 : <input type="text" name="veri_code" id="veri_code" readonly>

        <input type="submit" value="찾기">
        <input type="button" value="취소" onclick="location.href='/loginForm'">
    </form>
</body>
</html>
