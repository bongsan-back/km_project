<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="user-scalable=no, initial-scale=1.0, maximum-scale=1.0 minimal-ui"/>
<meta name="apple-mobile-web-app-capable" content="yes"/>
<meta name="apple-mobile-web-app-status-bar-style" content="black">

<title>로또몬</title>

<link rel="apple-touch-icon" sizes="57x57" href="/img/apple-icon-57x57.png">
<link rel="apple-touch-icon" sizes="60x60" href="/img/apple-icon-60x60.png">
<link rel="apple-touch-icon" sizes="72x72" href="/img/apple-icon-72x72.png">
<link rel="apple-touch-icon" sizes="76x76" href="/img/apple-icon-76x76.png">
<link rel="apple-touch-icon" sizes="114x114" href="/img/apple-icon-114x114.png">
<link rel="apple-touch-icon" sizes="120x120" href="/img/apple-icon-120x120.png">
<link rel="apple-touch-icon" sizes="144x144" href="/img/apple-icon-144x144.png">
<link rel="apple-touch-icon" sizes="152x152" href="/img/apple-icon-152x152.png">
<link rel="apple-touch-icon" sizes="180x180" href="/img/apple-icon-180x180.png">
<link rel="icon" type="image/png" sizes="192x192" href="/img/android-icon-192x192.png">
<link rel="icon" type="image/png" sizes="16x16" href="/img/favicon-16x16.png">
<link rel="icon" type="image/png" sizes="32x32" href="/img/favicon-32x32.png">
<link rel="icon" type="image/png" sizes="96x96" href="/img/favicon-96x96.png">


<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

<link rel="stylesheet" href="/css/swiper-min.css" />
<script src="/js/swiper.min.js"></script>
<script src="/js/common.js"></script>
<link rel="stylesheet" type="text/css" href="/css/font.css" />
<link rel="stylesheet" type="text/css" href="/css/common.css" />
<link rel="stylesheet" type="text/css" href="/css/layout.css" />
<link rel="stylesheet" type="text/css" href="/css/header.css" />
<link rel="stylesheet" type="text/css" href="/css/footer.css" />
<link rel="stylesheet" type="text/css" href="/css/style.css" />

<style type="text/css">
.placeholder { color: #aaa; }
</style>


</head>
<body>
<%@include file="../include/header.jsp"%>
<section class="main">
  <%@include file="../include/quick.jsp"%>
</section>


<section id="sub">
    <div class="membership_login">
        <div class="wrap">
            <div class="left three">
                <h2>회원서비스</h2>
                <div>
                    <a href="./login.do"  class="on">로그인</a>
                    <a href="./findUser.do">아이디<span>/패스워드</span> 찾기</a>
                    <a href="./joinAgree.do">회원가입</a>
                </div>
            </div>
            <div class="content">
                <div class="head">
                    <h2>로그인</h2>
                    <h5>
                        <a href="/"><img src="/img/home.jpg"> 홈</a>
                        <a href="./login.do"><img src="/img/arrow.png"> 회원서비스</a>
                        <a href="./login.do"><img src="/img/arrow.png"> 로그인</a>
                    </h5>
                </div>

                <div class="login_box">
                    <div class="login_box_wrap">
                        <h6>일반 로그인</h6>
                        <form action='#' method='post'>
                            <input type='text' name='id'  id='id' autocomplate='off' placeholder='아이디' required />
                            <input type='password' name='password' id='password' autocomplate='off' placeholder='패스워드' required />
                            <div class="login">
                                <label for="autoLogin"><input type="checkbox" id="autoLogin"> 자동로그인</label>
                                <ul>
                                    <li>
                                        <a href="./findUser.do">아이디</a>/<a href="./findUser.do">비밀번호 찾기</a> |
                                    </li>
                                    <li><a href="./joinAgree.do"> 회원가입</a></li>
                                </ul>
                                <input type='button' value="로그인" onclick="javascript:loginProc()"/>
                            </div>
                        </form>
                       <%-- <div class="simple">
                            <h6>간편 로그인</h6>
                            <a href="#" class="pcicon"><img src="/img/kakao_login.jpg"></a>
                            <a href="#none" id="naver_id_login" class="pcicon"><img src="/img/naver_login.jpg"></a>
                            <a href="#" class="pcicon"><img src="/img/facebook_login.jpg"></a>
                            <a href="#" class="moicon"><img src="/img/kakao_icon_m.jpg"></a>
                            <a href="#" class="moicon"><img src="/img/naver_icon_m.jpg"></a>
                            <a href="#" class="moicon"><img src="/img/facebook_icon_m.jpg"></a>
                        </div>--%>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<%@include file="../include/footer.jsp"%>

<script type="text/javascript" src="https://static.nid.naver.com/js/naverLogin_implicit-1.0.3.js" charset="utf-8"></script>
<script type="text/javascript" src="http://code.jquery.com/jquery-1.11.3.min.js"></script>
<script>
    var message = '${message}';
    var redirectUrl = '${redirectUrl}';

    $(document).ready(function(){
        if('${message}' != ''){
            alert('${message}');
        };
    })

    function loginProc(){
        var id = $("#id").val();
        var password = $("#password").val();

        if(id == '' || password == ''){
            alert("아이디와 비밀번호를 입력하세요.");
            return;
        }
        var requestParam = {
            "data":{
                "id" : id,
                "password": password
            }
        };
        $.ajax({
            type: 'POST',
            url: '/login/loginProc.do',
            data: JSON.stringify(requestParam),
            success: function(data) {
                var message = data;

                if(message == '"SUCCESS"'){
                    //alert('로그인에 성공하였습니다.');
                    if('${redirectUrl}' == null || '${redirectUrl}' == '' ){
                        location.href="../main.do";
                    }else{
                        location.reload();
                    }
                }else if(message == '"NOT_MATCHE"'){
                    alert('아이디 혹은 비밀번호가 일치하지 않습니다.');
                }else if(message == '"LEAVE"'){
                    alert('회원탈퇴된 계정입니다.');
                }else if(message == '"DORMANT"'){
                    if(confirm('휴면처리된 계정입니다.\n본인인증을 하시면 휴면 해제를 해드립니다. \n이동하시겠습니까?')){
                        location.href="";
                    }else{

                    }
                }else if(message == '"BENNED"'){
                    alert('정지 처리된 계정입니다.');
                }else{
                    alert('알 수 없는 오류입니다.');
                }
            },
            error : function(request, status, error ) {
                alert("알 수 없는 이유로 실패하였습니다. " + error);
            },
            contentType: "application/json",
            dataType: 'text'
        });
    }

    $(document).ready(function(){
       if(${user_id != null}){
           alert("이미 로그인이 되어있습니다.");
           location.href="../main.do";
        }
    });

/*

    //naver 로그인 변수
    var naver_id_login = new naver_id_login("OE2CmixkLpQy33V4vswA", "http://localhost:8080/login/naverCallback.do");
    var state = naver_id_login.getUniqState();
    naver_id_login.setButton("green", 3,490)
    naver_id_login.setDomain("http://localhost:8080/");
    naver_id_login.setState(state);
    naver_id_login.setPopup();
    naver_id_login.init_naver_id_login();
*/





</script>




<script type="text/javascript">
</script>
</body>
