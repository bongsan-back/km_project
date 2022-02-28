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


    <%--리뉴얼--%>
    <!--웹폰트추가-->
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300;400;500&amp;display=swap" rel="stylesheet">

    <!-- Mobile Metas -->
    <meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1.0, shrink-to-fit=no">

    <!-- Web Fonts  -->
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700,800%7CShadows+Into+Light%7CPlayfair+Display:400" rel="stylesheet" type="text/css">

    <!-- Vendor CSS -->
    <link rel="stylesheet" href="/renew/vendor/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="/renew/vendor/fontawesome-free/css/all.min.css">
    <link rel="stylesheet" href="/renew/vendor/animate/animate.min.css">
    <link rel="stylesheet" href="/renew/vendor/simple-line-icons/css/simple-line-icons.min.css">
    <link rel="stylesheet" href="/renew/vendor/owl.carousel/assets/owl.carousel.min.css">
    <link rel="stylesheet" href="/renew/vendor/owl.carousel/assets/owl.theme.default.min.css">
    <link rel="stylesheet" href="/renew/vendor/magnific-popup/magnific-popup.min.css">

    <!-- Theme CSS -->
    <link rel="stylesheet" href="/renew/css/theme.css?1">
    <link rel="stylesheet" href="/renew/css/theme-elements.css">
    <link rel="stylesheet" href="/renew/css/theme-blog.css">
    <link rel="stylesheet" href="/renew/css/theme-shop.css">

    <!-- Current Page CSS -->
    <link rel="stylesheet" href="/renew/vendor/rs-plugin/css/settings.css">
    <link rel="stylesheet" href="/renew/vendor/rs-plugin/css/layers.css">
    <link rel="stylesheet" href="/renew/vendor/rs-plugin/css/navigation.css">

    <!-- Demo CSS -->

    <!-- Skin CSS -->
    <link rel="stylesheet" href="/renew/css/skins/skin-corporate-9.css">

    <!-- Theme Custom CSS -->
    <link rel="stylesheet" href="/renew/css/custom.css">

    <!-- Head Libs -->
    <script src="/renew/vendor/modernizr/modernizr.min.js"></script>
    <script src="https://kit.fontawesome.com/4b29b1942b.js" crossorigin="anonymous"></script>

    <!--css추가-->
    <link rel="stylesheet" href="/renew/css/new_style1.css">
</head>



<body class="" data-plugin-page-transition="" data-loading-overlay="" data-plugin-options="{'hideDelay': 500}">
<div class="loading-overlay">
    <div class="bounce-loader">
        <div class="bounce1"></div>
        <div class="bounce2"></div>
        <div class="bounce3"></div>
    </div>
</div>

<div class="body">
    <%@include file="../include/headerRenew.jsp"%>
    <div role="main" class="main">
        <section class="page-header page-header-modern page-header-background page-header-background-md overlay overlay-color-dark overlay-show overlay-op-5" style="background-image: url(img/sub_title_bg.jpg);">
            <div class="container">
                <div class="row">
                    <div class="col-md-8 order-2 order-md-1 align-self-center p-static">
                        <h1 class="mb-3 text-9">로그인/회원가입</h1>
                        <span class="sub-title">최적의 프리미엄조합수 필터링을 통해 서비스를 제공하는 로또몬입니다.</span>
                    </div>
                    <div class="col-md-4 order-1 order-md-2 align-self-center">
                        <ul class="breadcrumb breadcrumb-light d-block text-md-right">
                            <li><a href="#none">Home</a></li>
                            <li class="active">로그인/회원가입</li>
                        </ul>
                    </div>
                </div>
            </div>
        </section>

        <div class="container py-4 my-5" style="">
            <div class="row justify-content-center text-center mb-4 appear-animation animated fadeInUpShorter appear-animation-visible" data-appear-animation="fadeInUpShorter" data-appear-animation-delay="400" style="animation-delay: 400ms;">
                <div class="col-lg-10 col-md-12 mb-5">
                    <div class="tabs">
                        <ul class="nav nav-tabs nav-justified flex-column flex-md-row">
                            <li class="nav-item active">
                                <a class="nav-link" href="/login/login.do">로그인</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="/login/joinAgree.do">회원가입</a>
                            </li>
                        </ul>

                        <div class="tab-content">

                            <!--로그인-->
                            <div class="tab-pane active">
                                <section class="p-4">
                                    <form class="form-horizontal form-bordered" method="get">
                                        <div class="form-group row mb-0">
                                            <label class="col-lg-3 control-label text-lg-right pt-2">아이디</label>
                                            <div class="col-lg-6">
                                                <div class="input-group mb-3">
                                                            <span class="input-group-prepend">
                                                                <span class="input-group-text">
                                                                    <i class="fas fa-user"></i>
                                                                </span>
                                                            </span>
                                                    <input type="text" class="form-control" placeholder="아이디" id="id">
                                                </div>
                                            </div>
                                        </div>


                                        <div class="form-group row">
                                            <label class="col-lg-3 control-label text-lg-right pt-2">비밀번호</label>
                                            <div class="col-lg-6">
                                                <div class="input-group mb-3">
                                                            <span class="input-group-prepend">
                                                                <span class="input-group-text">
                                                                    <i class="fas fa-lock"></i>
                                                                </span>
                                                            </span>
                                                    <input type="password" class="form-control" placeholder="비밀번호" id="password">
                                                </div>
                                                <div class="custom-control custom-checkbox text-left">
                                                    <input type="checkbox" class="custom-control-input" id="idSaveCheck" checked="true" name="idSaveCheck">
                                                    <label class="custom-control-label" name="idSaveCheck" for="idSaveCheck">아이디 저장</label>
                                                </div>
                                                <a href="/login/findUser.do" class="text-color-dark" style="text-decoration: underline;">비밀번호를 잊어버리셨나요?</a>
                                            </div>
                                        </div>

                                        <div class="col-lg-12">
                                            <button type="button" class="col-lg-6 btn btn-primary mb-0"  onclick="javascript:loginProc()">로그인
                                            </button>
                                        </div>
                                    </form>
                                </section>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <hr>
    </div>
    <!--end:main-->


    <!------공통:푸터------>

    <%@include file="../include/footerRenew.jsp"%>

    <!------공통:스크립트------>

    <!-- Vendor -->
    <script src="/renew/vendor/jquery/jquery.min.js"></script>
    <script src="/renew/vendor/jquery.appear/jquery.appear.min.js"></script>
    <script src="/renew/vendor/jquery.easing/jquery.easing.min.js"></script>
    <script src="/renew/vendor/jquery.cookie/jquery.cookie.min.js"></script>
    <script src="/renew/vendor/popper/umd/popper.min.js"></script>
    <script src="/renew/vendor/bootstrap/js/bootstrap.min.js"></script>
    <script src="/renew/vendor/common/common.min.js"></script>
    <script src="/renew/vendor/jquery.validation/jquery.validate.min.js"></script>
    <script src="/renew/vendor/jquery.easy-pie-chart/jquery.easypiechart.min.js"></script>
    <script src="/renew/vendor/jquery.gmap/jquery.gmap.min.js"></script>
    <script src="/renew/vendor/jquery.lazyload/jquery.lazyload.min.js"></script>
    <script src="/renew/vendor/isotope/jquery.isotope.min.js"></script>
    <script src="/renew/vendor/owl.carousel/owl.carousel.min.js"></script>
    <script src="/renew/vendor/magnific-popup/jquery.magnific-popup.min.js"></script>
    <script src="/renew/vendor/vide/jquery.vide.min.js"></script>
    <script src="/renew/vendor/vivus/vivus.min.js"></script>

    <!-- Theme Base, Components and Settings -->
    <script src="/renew/js/theme.js?1"></script>

    <!-- Current Page Vendor and Views -->
    <script src="/renew/vendor/rs-plugin/js/jquery.themepunch.tools.min.js"></script>
    <script src="/renew/vendor/rs-plugin/js/jquery.themepunch.revolution.min.js"></script>

    <!-- Theme Custom -->
    <script src="/renew/js/custom.js"></script>

    <!-- Theme Initialization Files -->
    <script src="/renew/js/theme.init.js"></script>

    <!--js추가_텍스트애니메이션효과-->
    <script src="/renew/js/txt/jquery.shuffleLetters.js"></script>
    <script src="/renew/js/txt/script.js"></script>

    <!--퀵메뉴-->
    <script src="/renew/js/quickmenu.js"></script>


</div><a class="scroll-to-top hidden-mobile" href="#"><i class="fas fa-chevron-up"></i></a><!--end:bodyClass-->




</body>









<%--

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
                                &lt;%&ndash;<label for="autoLogin"><input type="checkbox" id="autoLogin"> 자동로그인</label>&ndash;%&gt;
                                <ul>
                                    <li>
                                        <a href="./findUser.do">아이디</a>/<a href="./findUser.do">비밀번호 찾기</a> |
                                    </li>
                                    <li><a href="./joinAgree.do"> 회원가입</a></li>
                                </ul>
                                <input type='button' value="로그인" onclick="javascript:loginProc()"/>
                            </div>
                        </form>
                       &lt;%&ndash; <div class="simple">
                            <h6>간편 로그인</h6>
                            <a href="#" class="pcicon"><img src="/img/kakao_login.jpg"></a>
                            <a href="#none" id="naver_id_login" class="pcicon"><img src="/img/naver_login.jpg"></a>
                            <a href="#" class="pcicon"><img src="/img/facebook_login.jpg"></a>
                            <a href="#" class="moicon"><img src="/img/kakao_icon_m.jpg"></a>
                            <a href="#" class="moicon"><img src="/img/naver_icon_m.jpg"></a>
                            <a href="#" class="moicon"><img src="/img/facebook_icon_m.jpg"></a>
                        </div>&ndash;%&gt;
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<%@include file="../include/footer.jsp"%>



</body>
--%>



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
