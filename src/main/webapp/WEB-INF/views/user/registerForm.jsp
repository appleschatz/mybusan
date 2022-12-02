<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>registerForm</title>
    <script src="/js/jquery-3.6.1.min.js"></script>
    <script>
        function idOverlapCheck(){
            $.ajax({
                url:'/id_overlap',
                type:'POST',
                data:{'r_user_id':$('#r_user_id').val()},
                success:function(data){
                    if(data=="overlap"){
                        alert("이미 사용중인 ID입니다");
                    }
                    else{
                        alert("사용가능한 ID입니다");
                    }
                }
            });
        }

        function pwOverlapCheck(){
            if($('#r_user_pw_1').val()!=$('#r_user_pw_2').val()){
                $('#pw_overlap').html("비밀번호가 일치하지 않습니다");
            }
            else{
                $('#pw_overlap').html("비밀번호가 일치합니다");
            }
        }

        $(function(){
            if($('#r_user_email_s').val()=="N"){
            }
        });
    </script>
</head>
<body>
    <form name="registerForm" id="registerForm" method="post" action="registerProc" enctype="multipart/form-data">
        <table>
            <tr>
                <td>아이디</td>
                <td><input type="text" name="r_user_id" id="r_user_id" placeholder="아이디" required></td>
                <td><input type="button" name="id_overlap" id="id_overlap" onclick="idOverlapCheck();" value="아이디 중복 확인"></td>
            </tr>
            <tr>
                <td>비밀번호</td>
                <td><input type="password" name="r_user_pw_1" id="r_user_pw_1" placeholder="비밀번호" required></td>
            </tr>
            <tr>
                <td>비밀번호 확인</td>
                <td><input type="password" name="r_user_pw_2" id="r_user_pw_2" onkeyup="pwOverlapCheck();" placeholder="비밀번호 확인" required></td>
                <td><div id="pw_overlap"></div></td>
            </tr>
            <tr>
                <td>이름</td>
                <td><input type="text" name="r_user_name" id="r_user_name" placeholder="이름" required></td>
            </tr>
            <tr>
                <td>이메일</td>
                <td>
                    <input type="text" name="r_user_email_1" id="r_user_email_1" placeholder="이메일" required>
                    @
                    <input type="text" name="r_user_email_2" id="r_user_email_2" required>
                    <select id="r_user_email_s">
                        <option value="N" selected>직접 입력합니다</option>
                        <option value="naver">naver.com</option>
                        <option value="gmail">gmail.com</option>
                    </select>
                </td>
                <td><input type="button" id="email_overlap" value="이메일 중복 확인"></td>
            </tr>
            <tr>
                <td>연락처</td>
                <td>
                    <input type="text" name="r_user_phone_1" id="r_user_phone_1" placeholder="010" maxlength="3" required>-
                    <input type="text" name="r_user_phone_2" id="r_user_phone_2" placeholder="1234" maxlength="4" required>-
                    <input type="text" name="r_user_phone_3" id="r_user_phone_3" placeholder="5678" maxlength="4" required>
                </td>
            </tr>
            <tr>
                <td>성별</td>
                <td>
                    <select name="r_user_gender" id="r_user_gender">
                        <option value="N" selected>선택</option>
                        <option value="M">남성</option>
                        <option value="W">여성</option>
                    </select>
                </td>
            </tr>
            <tr>
                <td>프로필사진</td>
                <td><input type="file" name="r_user_prop" id="r_user_prop"></td>
            </tr>
            <tr>
                <td>메일 수신 여부</td>
                <td>
                    <input type="radio" name="r_user_mailox" value="Y" checked />예
                    <input type="radio" name="r_user_mailox" value="N" />아니오
                </td>
            </tr>
            <tr>
                <td><input type="submit" value="가입"></td>
                <td><input type="button" value="취소" onclick="location.href='/'"></td>
            </tr>
        </table>
    </form>
<script>
    $("#email_overlap").click(function(){
    });

    $('#r_user_email_s').change(function(){
        if($('#r_user_email_s').val()=="naver"){
            $('#r_user_email_2').val('naver.com');
            $('#r_user_email_2').text('naver.com');
            $('#r_user_email_2').attr("readonly",true);
        }
    });
</script>
</body>
</html>