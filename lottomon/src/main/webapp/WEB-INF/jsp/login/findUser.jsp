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

  <style type="text/css">
.placeholder { color: #aaa; }

#goLogin{
  width: 284px;
  height: 51px;
  position: relative;
  left: calc(50% - 140px);
  background: #2e68bf;
  color: #fff;
}
</style>


</head>
<body>
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
            <h1 class="mb-3 text-9">회원정보 변경</h1>
            <span class="sub-title">최적의 프리미엄조합수 필터링을 통해 서비스를 제공하는 로또몬입니다.</span>
          </div>
          <div class="col-md-4 order-1 order-md-2 align-self-center">
            <ul class="breadcrumb breadcrumb-light d-block text-md-right">
              <li><a href="/main.do">Home</a></li>
              <li class="active">마이페이지</li>
              <li class="active">회원정보 변경</li>
            </ul>
          </div>
        </div>
      </div>
    </section>


    <div class="container py-4 my-5" style="">
      <div class="row justify-content-center text-center mb-4 appear-animation animated fadeInUpShorter appear-animation-visible" data-appear-animation="fadeInUpShorter" data-appear-animation-delay="400" style="animation-delay: 400ms;">

        <!--닉네임변경-->
        <div class="col-lg-10 col-md-12 mb-5">
          <section class="card card-admin">
            <header class="card-header">
              <div class="card-actions">
                <a href="#none" class="card-action card-action-toggle" data-card-toggle=""></a>
                <a href="#none" class="card-action card-action-dismiss" data-card-dismiss=""></a>
              </div>

              <h2 class="card-title">아이디 찾기</h2>
            </header>
            <div class="card-body">
              <form class="form-horizontal form-bordered" name="id_find" onsubmit="return false;">
                <div class="form-group row mb-0">
                  <label class="col-lg-3 control-label text-lg-right pt-2">성명</label>
                  <div class="col-lg-6">
                    <div class="input-group mb-3">
                      <input type="text" class="form-control" placeholder="성명" id="findIdName" name="findIdName" maxlength="10">
                    </div>
                  </div>
                </div>
                <div class="form-group row mb-0">
                  <label class="col-lg-3 control-label text-lg-right pt-2">휴대폰 번호</label>
                  <div class="col-lg-6">
                    <div class="input-group mb-3">
                      <input type="text" class="form-control" placeholder="휴대폰 번호" id="findIdPhone" name="findIdPhone" maxlength="11">
                    </div>
                  </div>
                </div>

                <div class="col-lg-12">
                  <input type="submit" class="col-lg-6 btn btn-quaternary mb-2" id="findIdBtn" value="아이디 찾기">
                </div>
              </form>
              <div style="background-color:#E3E3E3;width:100%;text-align: center;padding:15px 0;margin-top: 20px;display: none;" id="findIdMsg">
              </div>
            </div>
          </section>
        </div><!--end:닉네임변경-->


        <!--비밀번호 초기화-->
        <div class="col-lg-10 col-md-12 mb-5">
          <section class="card card-admin">
            <header class="card-header">
              <div class="card-actions">
                <a href="#none" class="card-action card-action-toggle" data-card-toggle=""></a>
                <a href="#none" class="card-action card-action-dismiss" data-card-dismiss=""></a>
              </div>

              <h2 class="card-title">비밀번호 초기화</h2>
            </header>
            <div class="card-body">
              <form class="form-horizontal form-bordered" name="id_find" onsubmit="return false;">
                <div class="form-group row mb-0">
                  <label class="col-lg-3 control-label text-lg-right pt-2">아이디</label>
                  <div class="col-lg-6">
                    <div class="input-group mb-3">
                      <input type="text" class="form-control" placeholder="아이디" id="findPwId" name="findPwId">
                    </div>
                  </div>
                </div>
                <div class="form-group row mb-0">
                  <label class="col-lg-3 control-label text-lg-right pt-2">성명</label>
                  <div class="col-lg-6">
                    <div class="input-group mb-3">
                      <input type="text" class="form-control" placeholder="성명" id="findPwName" name="findPwName" maxlength="10">
                    </div>
                  </div>
                </div>
                <div class="form-group row mb-0">
                  <label class="col-lg-3 control-label text-lg-right pt-2">휴대폰 번호</label>
                  <div class="col-lg-6">
                    <div class="input-group mb-3">
                      <input type="text" class="form-control" placeholder="휴대폰 번호" id="findPwPhone" name="findIdPhone" maxlength="11">
                    </div>
                  </div>
                </div>

                <div class="col-lg-12">
                  <input type="submit" class="col-lg-6 btn btn-quaternary mb-2" id="findPwBtn" value="임시 비밀번호 발급 받기">
                </div>
              </form>
              <div style="background-color:#E3E3E3;width:100%;text-align: center;padding:15px 0;margin-top: 20px;display: none;" id="tmpPassword">
              </div>
            </div>
          </section>
        </div><!--end:비밀번호변경-->
      </div>
    </div>
  </div><!--end:main-->












<%--

<section id="sub">
  <div class="member_password">
    <div class="wrap">
      <div class="left three">
        <h2>회원서비스</h2>
        <div>
          <a href="./login.do">로그인</a>
          <a href="./findUser" class="on">아이디<span>/패스워드</span> 찾기</a>
          <a href="./joinAgree.do">회원가입</a>
        </div>
      </div>
      <div class="content">
        <div class="head">
          <h2>아이디/패스워드 찾기</h2>
          <h5>
            <a href="/"><img src="/img/home.jpg"> 홈</a>
            <a href="./login.do"><img src="/img/arrow.png"> 회원서비스</a>
            <a href="./joinAgree.do"><img src="/img/arrow.png"> 회원가입</a>
          </h5>
        </div>

        <h3>아이디 찾기</h3>
        <form name="id_find" onsubmit="return false;">
          <dl>
            <dt>이름</dt>
            <dd class="name"><input type="text" name="name" id="findIdName" placeholder=""></dd>
          </dl>
          <dl>
            <dt>이메일</dt>
            <dd class="name"><input type="text" name="email" id="findIdEmail" placeholder=""></dd>
          </dl>
          <dl class="myid my" style="display: none" id="findIdMsg">회원님의 아이디는 <span id="resultId"></span> 입니다.</dl>
          <dl class="submit"><input type="submit" id="findIdBtn" value="아이디 찾기"></dl>
        </form>




        <h3>비밀번호 찾기</h3>
        <form name="pass_find"  onsubmit="return false;">
          <dl>
            <dt>이름</dt>
            <dd class="name"><input type="text" name="name" id="findPwName"></dd>
          </dl>
          <dl>
            <dt>아이디</dt>
            <dd class="name"><input type="text" name="id" id="findPwId"></dd>
          </dl>
          <dl>
            <dt>이메일</dt>
            <dd class="name"><input type="text" name="email" id="findPwEmail" placeholder=""></dd>
          </dl>
          <dl class="mypassword my" id="tmpPassword" style="display: none">회원님의 임시 비밀번호는 <span id="resultIPw"></span> 입니다.</dl>
          <dl class="submit"><input type="submit" id="findPwBtn"  value="비밀번호 찾기"></dl>
        </form>

        <input type="button" value="로그인하기" id="goLogin">
      </div>
    </div>
  </div>
</section>



<%@include file="../include/footer.jsp"%>
--%>

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




<script>
$("#goLogin").click(function(){
  location.href = '/login/login.do';
})

$("#findIdBtn").click(function(){

  if($("#findIdName").val() == '' || $("#findIdEmail").val() == ''){
    alert("정보를 입력해주세요.");
    return false;
  }


  var requestParam = {
    "data":{
       'name' : $("#findIdName").val(),
       'telNo' : $("#findIdPhone").val()
    }
  };

  console.log(requestParam);

  $.ajax({
    type: 'POST',
    url: '/user/findUserId.do',
    data: JSON.stringify(requestParam),
    success: function(data) {
      console.log(data);
      var message;
      if(data==null || data == '') message = '일치하는 회원 정보가 없습니다.';
      else message = '회원님의 아이디는 <strong>' + data.id + '<strong> 입니다.';

      $("#findIdMsg").html(message).show();
    },
    error : function(request, status, error ) {
      alert("알 수 없는 이유로 실패하였습니다. " + request.message);

    },
    contentType: "application/json",
  });
});


$("#findPwBtn").click(function(){

  if($("#findPwName").val() == '' || $("#findPwEmail").val() == '' || $("#findPwId").val() == ''){
    alert("정보를 입력해주세요.");
    return false;
  }


  var requestParam = {
    "data":{
      'name' : $("#findPwName").val(),
      'telNo' : $("#findPwPhone").val(),
      'id' : $("#findPwId").val()
    }
  };

  console.log(requestParam);

  $.ajax({
    type: 'POST',
    url: '/user/findUserPw.do',
    data: JSON.stringify(requestParam),
    success: function(data) {
      console.log(data);
      var message;
      if(data==null || data == '') message = '일치하는 정보가 없습니다.';
      else{
       message = '회원님의 임시비밀 번호는 <span>' + data.tempPassword + '<span> 입니다.';
        $("#findPwBtn").hide();
      }

      $("#tmpPassword").html(message).show();
    },
    error : function(request, status, error ) {
      alert("알 수 없는 이유로 실패하였습니다. " + request.message);

    },
    contentType: "application/json",
  });
});


</script>




<script type="text/javascript">
</script>
</body>
