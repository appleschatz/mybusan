function SendVericode(){
    $.ajax({
        url:'/SendVericode.do',
        type:'post',
        data:{'user_name':$('#user_name').val(),
            'user_email':$('#user_email').val()},
        success: function (data) {
            if (data==1) {
                alert('메일로 인증번호가 전송되었습니다');
                $('#veri_code').attr('readonly', false);
                $('#veri_code').attr('required', true);
                $('#user_name').attr('readonly', true);
                $('#user_email').attr('readonly', true);
            }
            else{
                alert('입력하신 정보와 일치하는 계정이 없습니다');
            }
        }
    });
}
