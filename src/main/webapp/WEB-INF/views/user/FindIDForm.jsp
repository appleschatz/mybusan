<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>FindIDForm</title>
</head>
<body>
    <h1>FindIDForm</h1>

    <form action="FindIDProc">
        <table>
            <tr>
                <td>이름</td>
                <td><input type="text" name="s_user_name" id="s_user_name" placeholder="이름" required></td>
            </tr>
            <tr>
                <td>이메일</td>
                <td>
                    <input type="text" name="s_user_email_1" id="s_user_email_1" placeholder="이메일" required>
                    @
                    <input type="text" name="s_user_email_2" id="s_user_email_2" required>
                    <select id="s_user_email_s">
                        <option value="N" selected>직접 입력합니다</option>
                        <option value="naver">naver.com</option>
                        <option value="gmail">gmail.com</option>
                    </select>
                </td>
            </tr>
            <tr>
                <td><input type="submit" value="아이디 찾기"></td>
            </tr>
        </table>
    </form>

    <hr>

    <h1>FindPasswdForm</h1>
    <form>
        <table>
            <tr>
                <td>아이디</td>
                <td><input type="text" placeholder="아이디"></td>
            </tr>
            <tr>
                <td>이름</td>
                <td><input type="text" name="" id="" placeholder="이름" required></td>
            </tr>
            <tr>
                <td>이메일</td>
                <td>
                    <input type="text" name="" id="" placeholder="이메일" required>
                    @
                    <input type="text" name="" id="" required>
                    <select id="">
                        <option value="N" selected>직접 입력합니다</option>
                        <option value="naver">naver.com</option>
                        <option value="gmail">gmail.com</option>
                    </select>
                </td>
            </tr>
            <tr>
                <td><input type="submit" value="전송"></td>
            </tr>
        </table>
    </form>
</body>
</html>