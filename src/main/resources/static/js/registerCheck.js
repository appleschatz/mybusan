let idCheckResult = false;
let pwCheckResult1 = false;
let pwCheckResult2 = false;
let nameCheckResult = false;
let emailCheckResult = false;
let phoneCheckResult = false;

function idCheck(){
    let idPattern = /^[A-Za-z0-9_]{4,}$/;
    let user_id = $('#user_id').val();

    if(user_id==''){
        $('#idCheckResult').html('필수 정보입니다');
        idCheckResult = false;
        return false;
    }
    else if(!idPattern.test(user_id)){
        $('#idCheckResult').html('4자 이상의 영문 대 소문자, 숫자, 특수기호(_)만 사용 가능합니다');
        idCheckResult = false;
        return false;
    }

    $.ajax({
        url: '/id_overlap.do',
        type: 'POST',
        data: {'user_id': user_id},
        success: function (data) {
            if (data==1) {
                $('#idCheckResult').html('이미 사용중이거나 탈퇴한 아이디입니다'); // 중복
                idCheckResult = false;
            }
            else{
                $('#idCheckResult').html('멋진 아이디네요!'); // 중복 아닌 경우
                idCheckResult = true;
            }
        }
    });
}

function pwInputCheck(){
    let pwPattern = /^[A-Za-z0-9`~!@#$%^&*()-_=+]{8,}$/;
    let user_pw = $('#user_pw_1').val();

    if(user_pw==''){
        $('#pwInputCheckResult').html('필수 정보입니다');
        pwCheckResult1 = false;
    }
    else if(!pwPattern.test(user_pw)){
        $('#pwInputCheckResult').html('8자 이상의 영문 대 소문자, 숫자, 특수문자를 사용하세요');
        pwCheckResult1 = false;
    }
    else{
        $('#pwInputCheckResult').html('');
        pwCheckResult1 = true;
    }
}

function pwSameCheck(){
    if($('#user_pw_1').val()!=$('#user_pw_2').val()){
        $('#pwSameCheckResult').html('비밀번호가 일치하지 않습니다');
        pwCheckResult2 = false;
    }
    else{
        $('#pwSameCheckResult').html('비밀번호가 일치합니다');
        pwCheckResult2 = true;
    }
}

function nameCheck(){
    let namePattern = /^[A-Za-z가-힣]{1,}$/;
    let user_name = $('#user_name').val();

    if(user_name==''){
        $('#nameCheckResult').html('필수 정보입니다');
        nameCheckResult = false;
    }
    else if(!namePattern.test(user_name)){
        $('#nameCheckResult').html('한글과 영문 대 소문자를 사용하세요');
        nameCheckResult = false;
    }
    else{
        $('#nameCheckResult').html('');
        nameCheckResult = true;
    }
}

function emailCheck(){
    let emailPattern = 
    // /^[A-Za-z0-9`~!@#$%^&*()-_=+]+@[a-zA-Z0-9]+\.[a-zA-Z]+$/;
    /^([a-z0-9_\.-]+)@([\da-z\.-]+)\.([a-z\.]{2,6})$/;
    let user_email = $('#user_email').val();

    if(user_email==''){
        $('#emailCheckResult').html('필수 정보입니다');
        emailCheckResult = false;
        return false;
    }
    else if(!emailPattern.test(user_email)){
        $('#emailCheckResult').html('이메일 주소를 다시 확인해주세요');
        emailCheckResult = false;
        return false;
    }

    $.ajax({
        url: '/email_overlap.do',
        type: 'POST',
        data: {'user_email': user_email},
        success: function (data) {
            if (data==1) {
                $('#emailCheckResult').html('이미 사용중인 이메일입니다'); // 중복
                emailCheckResult = false;
            }
            else{
                $('#emailCheckResult').html(''); // 중복 아닌 경우
                emailCheckResult = true;
            }
        }
    });
}

function phoneCheck(){
    let phonePattern = // /^[0-9]{10,}$/; 
    /^01(?:0|1|[6-9])[.-]?(\\d{3}|\\d{4})[.-]?(\\d{4})$/;
    let user_phone = $('#user_phone').val();

    if(user_phone==''){
        $('#phoneCheckResult').html('필수 정보입니다');
        phoneCheckResult = false;
        return false;
    }
    else if(!phonePattern.test(user_phone)){
        $('#phoneCheckResult').html('휴대폰 번호를 다시 확인해주세요');
        phoneCheckResult = false;
        return false;
    }

    $.ajax({
        url: '/phone_overlap.do',
        type: 'POST',
        data: {'user_phone': user_phone},
        success: function (data) {
            if (data==1) {
                $('#phoneCheckResult').html('이미 사용중인 번호입니다'); // 중복
                phoneCheckResult = false;
            }
            else{
                $('#phoneCheckResult').html(''); // 중복 아닌 경우
                phoneCheckResult = true;
            }
        }
    });
}

function propPreview(input) {
        let reader = new FileReader();
        reader.onload = function(event) {
            $('#prop_preview').attr('src',event.target.result);
        };
        reader.readAsDataURL(input.files[0]);
}

function registerCheck(){
    let formData = new FormData();
    if(idCheckResult==true && pwCheckResult1==true && pwCheckResult2==true && nameCheckResult==true //&& emailCheckResult==true && phoneCheckResult==true
    	){
        formData.append('user_id', $('#user_id').val());
        formData.append('user_pw', $('#user_pw_1').val());
        formData.append('user_name', $('#user_name').val());
        formData.append('user_email', $('#user_email').val());
        formData.append('user_phone', $('#user_phone').val());
        formData.append('user_gender', $('#user_gender').val());
        formData.append('prop_file', $('#user_prop').get(0).files[0]);
        formData.append('user_mailox', $("input[name='user_mailox']:checked").val());

        $.ajax({
            url: '/registerProc',
            type: 'POST',
            data: formData,
            processData:false,
            contentType: false,
            success: function (data) {
                alert(data);
            }
        });
    }
    else{
        alert("실패");
    }
}
