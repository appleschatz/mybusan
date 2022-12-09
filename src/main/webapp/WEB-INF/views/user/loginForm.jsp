<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>

    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>

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
<div class="container">
    <div class="d-flex justify-content-center">
        <div class="col-sm-6 col-6">
            <h3 class="text-center">Busan</h3>

            <form class="form" method="post" action="loginProc">
                <div class="form-group my-1">
                    <input type="text" class="form-control" name="user_id" id="user_id" value="${save_id}" placeholder="아이디" required>
                </div>
                <div class="form-group my-1">
                    <input type="password" class="form-control" name="user_pw" id="user_pw" placeholder="비밀번호" required>
                </div>
                <div class="form-group my-1">
                    <input type="checkbox" class="form-check-input" name="save_id" id="save_id" value="SAVE"><label class="mx-1" for="save_id">아이디 저장</label>
                </div>
                <div class="form-group my-3 text-center">
                    <input type="submit" class="btn btn-primary" style="width:50%" value="로그인">
                </div>
                <div class="d-flex flex-column flex-sm-row justify-content-sm-around">
                    <div class="text-center">
                        <a href="/registerForm">회원가입</a>
                    </div>
                    <div class="text-center">
                        <a href="/findIDForm">아이디 찾기</a>
                    </div>
                    <div class="text-center">
                        <a href="/findPWForm">비밀번호 찾기</a>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>
</body>
</html>
