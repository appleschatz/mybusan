<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>registerForm</title>
    <script src="/js/jquery-3.6.1.min.js"></script>
    <script src="/js/registerCheck.js" defer></script>
</head>
<body>
    <form name="registerForm" id="registerForm" method="post" onsubmit="return registerCheck();" enctype="multipart/form-data">
        <table>
            <tr>
                <td>아이디</td>
                <td><input type="text" name="user_id" id="user_id" oninput="idCheck();" required></td>
            </tr>
            <tr>
                <td><span id="idCheckResult"></span></td>
            </tr>
            <tr>
                <td>비밀번호</td>
                <td><input type="password" name="user_pw_1" id="user_pw_1" oninput="pwInputCheck()" required></td>
            </tr>
            <tr>
                <td><span id="pwInputCheckResult"></span></td>
            </tr>
            <tr>
                <td>비밀번호 확인</td>
                <td><input type="password" name="user_pw_2" id="user_pw_2" oninput="pwSameCheck();" required></td>
            </tr>
            <tr>
                <td><span id="pwSameCheckResult"></span></td>
            </tr>
            <tr>
                <td>이름</td>
                <td><input type="text" name="user_name" id="user_name" oninput="nameCheck();" required></td>
            </tr>
            <tr>
                <td><span id="nameCheckResult"></span></td>
            </tr>
            <tr>
                <td>이메일</td>
                <td><input type="text" name="user_email" id="user_email" oninput="emailCheck();" required></td>
            </tr>
            <tr>
                <td><span id="emailCheckResult"></span></td>
            </tr>
            <tr>
                <td>연락처</td>
                <td><input type="number" name="user_phone" id="user_phone" oninput="phoneCheck();" placeholder="'-'없이 숫자만 입력해주세요" required></td>
            </tr>
            <tr>
                <td><span id="phoneCheckResult"></span></td>
            </tr>
            <tr>
                <td>성별</td>
                <td>
                    <select name="user_gender" id="user_gender">
                        <option value="M">남성</option>
                        <option value="W">여성</option>
                        <option value="N" selected>미공개</option>
                    </select>
                </td>
            </tr>
            <tr>
                <td>프로필사진</td>
                <td rowspan="2"><img src="/images/propile_preview.png" width="80px" id="prop_preview" /></td> <!-- 사진 등록 -->
            </tr>
            <tr>
                <td><input type="file" name="user_prop" id="user_prop" accept="image/*" onchange="propPreview(this);"></td>
            </tr>
            <tr>
                <td>메일 수신 여부</td>
                <td>
                    <input type="radio" name="user_mailox" value="Y" checked />예
                    <input type="radio" name="user_mailox" value="N" />아니오
                </td>
            </tr>
            <tr>
                <td><input type="submit" value="가입"></td>
                <td><input type="button" value="취소" onclick="location.href='/loginForm'"></td>
            </tr>
        </table>
    </form>
</body>
</html>
