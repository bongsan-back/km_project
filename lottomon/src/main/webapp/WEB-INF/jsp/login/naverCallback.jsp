<!doctype html>
<html lang="ko">
<head>
    <script type="text/javascript" src="https://static.nid.naver.com/js/naverLogin_implicit-1.0.3.js" charset="utf-8"></script>
    <script type="text/javascript" src="http://code.jquery.com/jquery-1.11.3.min.js"></script>
</head>
<body>
<script type="text/javascript">
    var naver_id_login = new naver_id_login("1Jyeocp4T5_EeeuDWqM2", "http://localhost:8080/login/login.do");
    // 접근 토큰 값 출력
    //alert(naver_id_login.oauthParams.access_token);
    var tocken = naver_id_login.oauthParams.access_token;
    // 네이버 사용자 프로필 조회
    naver_id_login.get_naver_userprofile("naverSignInCallback()");
    // 네이버 사용자 프로필 조회 이후 프로필 정보를 처리할 callback function
    function naverSignInCallback() {
        console.log(naver_id_login.getProfileData('email'));
        console.log(naver_id_login.getProfileData('enc_id'));
        console.log(naver_id_login.getProfileData('name'));
        console.log(naver_id_login.getProfileData('gender'));
        console.log(naver_id_login.getProfileData('age'));

        var email = naver_id_login.getProfileData('email');
        var enc_id = naver_id_login.getProfileData('enc_id');
        var name = naver_id_login.getProfileData('name');
        var gender = naver_id_login.getProfileData('gender');
        var age = naver_id_login.getProfileData('age');

        var requestParam = {
            "data":{
                "sns_tocken" : tocken,
                "join_type" : "naver",
                "email" : email,
                "enc_id": enc_id,
                "name": name,
                "gender": gender,
                "age" : age
            }
        };


        console.log(requestParam);

        $.ajax({
            type: 'POST',
            url: '/login/snsLoginChk.do',
            data: JSON.stringify(requestParam),
            success: function(data) {
                alert("회원가입에 성공하였습니다.");
                location.href = '/login/joinSuc.do';
            },
            error : function(request, status, error ) {
                alert("알 수 없는 이유로 실패하였습니다. " + error);

            },
            contentType: "application/json",
            dataType: 'text'
        });



    }











</script>
</body>
</html>