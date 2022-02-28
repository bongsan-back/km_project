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
<link rel="stylesheet" type="text/css" href="/css/layout.css?ver=0.01" />
<link rel="stylesheet" type="text/css" href="/css/header.css" />
<link rel="stylesheet" type="text/css" href="/css/footer.css" />
<link rel="stylesheet" type="text/css" href="/css/style.css?ver=0.01" />


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
#write_form_user table td{width: 80%}
.message-text{color: red; border: none !important; background-color: #fff !important; display:none; height: 20px !important;}
</style>


</head>
<body>
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


        <!--닉네임,아이디표시-->
        <div class="col-lg-10">
          <h4 class="text-5 mb-4">${user_nickname}(${user_id}) <span class="font-weight-light">고객님 안녕하세요.</span></h4>
        </div>

        <!--닉네임변경-->
        <%--<div class="col-lg-10 col-md-12 mb-5">
          <section class="card card-admin">
            <header class="card-header">
              <div class="card-actions">

              <h2 class="card-title">닉네임 변경</h2>
            </header>
            <div class="card-body">
              <form class="form-horizontal form-bordered" id="nick_form">
                <div class="form-group row mb-0">
                  <label class="col-lg-3 control-label text-lg-right pt-2">닉네임</label>
                  <div class="col-lg-6">
                    <div class="input-group mb-3">
                      <input type="text" class="form-control" placeholder="변경할 닉네임" id="mb_nick" name="mb_nick" maxlength="10">
                      <span class="input-group-append">
                          <button class="btn btn-primary" type="button" onclick="nick_chk()">닉네임 중복체크</button>
                      </span>
                    </div>
                  </div>
                </div>

                <div class="col-lg-12">
                  <button type="button" class="col-lg-6 btn btn-quaternary mb-2" onclick="upd_nick()">닉네임 변경</button>
                </div>

              </form>
            </div>
          </section>
        </div>--%>
        <!--end:닉네임변경-->


        <!--비밀번호변경-->
        <div class="col-lg-10 col-md-12 mb-5">
          <section class="card card-admin">
            <header class="card-header">
              <div class="card-actions">
                <a href="#none" class="card-action card-action-toggle" data-card-toggle=""></a>
                <a href="#none class="card-action card-action-dismiss" data-card-dismiss=""></a>
              </div>

              <h2 class="card-title">비밀번호 변경</h2>
            </header>
            <div class="card-body">
              <form class="form-horizontal form-bordered" id="pwd_form">
                <div class="form-group row mb-0">
                  <label class="col-lg-3 control-label text-lg-right pt-2">현재 비밀번호</label>
                  <div class="col-lg-6">
                    <div class="input-group mb-3">
                      <span class="input-group-prepend">
                          <span class="input-group-text">
                              <i class="fas fa-lock"></i>
                          </span>
                      </span>
                      <input type="password" class="form-control" placeholder="현재 비밀번호" id="c_pwd" name="c_pwd">
                    </div>
                  </div>
                </div>

                <div class="form-group row mb-0">
                  <label class="col-lg-3 control-label text-lg-right pt-2">새로운 비밀번호</label>
                  <div class="col-lg-6">
                    <div class="input-group mb-3">
                      <span class="input-group-prepend">
                          <span class="input-group-text">
                              <i class="fas fa-lock"></i>
                          </span>
                      </span>
                      <input type="password" class="form-control" placeholder="새로운 비밀번호" id="n_pwd1" name="n_pwd1">
                    </div>
                  </div>
                </div>

                <div class="form-group row mb-0">
                  <label class="col-lg-3 control-label text-lg-right pt-2">비밀번호 확인</label>
                  <div class="col-lg-6">
                    <div class="input-group mb-3">
                      <span class="input-group-prepend">
                          <span class="input-group-text">
                              <i class="fas fa-lock"></i>
                          </span>
                      </span>
                      <input type="password" class="form-control" placeholder="비밀번호 확인" id="n_pwd2" name="n_pwd2">
                    </div>
                  </div>
                </div>

                <div class="col-lg-12">

                  <button type="button" class="col-lg-6 btn btn-quaternary mb-2" onclick="passwordChange()" id="pchBtn">비밀번호 수정</button>
                </div>

              </form>
            </div>
          </section>
        </div><!--end:비밀번호변경-->

        <!--휴대폰번호변경-->
        <div class="col-lg-10 col-md-12">
          <section class="card card-admin">
            <header class="card-header">
              <div class="card-actions">
                <a href="#none" class="card-action card-action-toggle" data-card-toggle=""></a>
                <a href="#none" class="card-action card-action-dismiss" data-card-dismiss=""></a>
              </div>

              <h2 class="card-title">휴대폰번호 수정</h2>
            </header>
            <div class="card-body">
              <form class="form-horizontal form-bordered" id="hp_form">
                <div class="form-group row mb-0">
                  <label class="col-lg-3 control-label text-lg-right pt-2">변경할 휴대전화</label>
                  <div class="col-lg-6">
                    <div class="input-group mb-3">
                      <input type="text" class="form-control" placeholder="휴대폰번호" id="mb_hp" maxlength="11">
                      <%--<span class="input-group-append">
                          <button class="btn btn-primary" type="button" onclick="hp_auth()">인증번호 발송</button>
                      </span>--%>
                    </div>
                  </div>
                </div>

                <%--<div class="form-group row mb-0">
                  <label class="col-lg-3 control-label text-lg-right pt-2">인증번호 입력</label>
                  <div class="col-lg-6">
                    <div class="input-group mb-3">
                      <input type="text" class="form-control" placeholder="인증번호" id="auth_num">
                      <span class="input-group-append">
                          <button class="btn btn-primary" type="button" onclick="auth()">인증번호 확인</button>
                      </span>
                    </div>
                  </div>
                </div>
--%>

                <div class="form-group row mb-0">
                  <label class="col-lg-3 control-label text-lg-right pt-2">비밀번호 확인</label>
                  <div class="col-lg-6">
                    <div class="input-group mb-3">
                      <span class="input-group-prepend">
                          <span class="input-group-text">
                              <i class="fas fa-lock"></i>
                          </span>
                      </span>
                      <input type="password" class="form-control" placeholder="비밀번호 확인" id="mb_password">
                    </div>
                  </div>
                </div>

                <div class="col-lg-12">

                  <button type="button" class="col-lg-6 btn btn-quaternary mb-2" onclick="telNoChange();" id="tchBtn">휴대폰번호 변경
                  </button></div>

              </form>
            </div>
          </section>
        </div><!--end:휴대폰번호변경-->



      </div>
    </div>
  </div><!--end:main-->


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













<%--

<%@include file="../include/header.jsp"%>
<section class="main">
  <%@include file="../include/quick.jsp"%>
</section>


<section id="sub">
  <div class="member_go go02">
    <div class="wrap">
      <div class="left three">
        <h2>회원서비스</h2>
        <div>
          &lt;%&ndash;<a href="/lotto/thisWeeksNumber.do">이번주 나의번호</a>&ndash;%&gt;
          <a href="/board/mylotto_payment.do">결제 게시판</a>
          <a href="/myUpdate.do" class="on">내 정보 수정</a>
        </div>
      </div>
      <div class="content">
        <div class="head">
          <h2>내 정보 수정</h2>
          <h5>
            <a href="/"><img src="./img/home.jpg"> 홈</a>
            <a href="./login.do"><img src="./img/arrow.png"> 회원서비스</a>
            <a href="./join.do"><img src="./img/arrow.png"> 회원가입</a>
          </h5>
        </div>
        <div class="sign_Up">
          <div>
            <div class="circle">
              <h3>step 01</h3>
              <p>이용약관동의</p>
            </div>
            <span><img src="/img/arrow_rogin.png"></span>
            <div class="circle on">
              <h3>step 02</h3>
              <p>개인정보입력</p>
            </div>
            <span><img src="/img/arrow_rogin.png"></span>
            <div class="circle">
              <h3>step 03</h3>
              <p>회원가입완료</p>
            </div>
          </div>
        </div>



        <form name="write_form_user" id="write_form_user" method="post">
          <table>
            <h3>계정정보</h3>
            <tr>
              <th>아이디</th>
              <td>
                <input type="text" name="id" id="id" readonly value="${userInfo.id}" style="cursor: default;">
                <a href='#' style='cursor:help'></a>
              </td>
            </tr>
            <tr>
              <th>비밀번호</th>
              <td><input type="password" name="password" id="password" required placeholder="8~20 자리 영문,숫자,특수문자를 포함시켜 입력해 주세요.">
              </td>
            </tr>
            <tr>
              <th>비밀번호 확인</th>
              <td><input type="password" name="password_re" id="password_re" required></td>
            </tr>
            <tr>
              <th>닉네임</th>
              <td>
              	<input type="text" name="nickname" id="nickname" readonly value="${userInfo.nickname}" style="cursor: default;">
              </td>
            </tr>
          </table>

          <table>
            <h3>회원정보</h3>
            <tr>
              <th> 이름</th>
              <td><input type="text" name="name" id="name" readonly value="${userInfo.name}" style="cursor: default;"></td>
            </tr>
            <tr>
              <th>생년월일</th>
              <td class="birthday">
              	<input type="text" name="year" id="year" maxlength="4"  style="cursor: default;" value="${fn:substring(userInfo.birth, 0, 4)}" readonly> 년
                <input type="text" name="mon"  id="mon" maxlength="2"  style="cursor: default;" value="${fn:substring(userInfo.birth, 4, 6)}" readonly> 월
                <input type="text" name="day"  id="day" maxlength="2"  style="cursor: default;" value="${fn:substring(userInfo.birth, 6, 8)}" readonly> 일
              </td>
            </tr>
            <tr>
              <br>
              <th>성별</th>
              <td class="s">
                <c:if test="${userInfo.gender == 'M'}">
                  <input type="text" name="gender" id="gender" readonly value="남성" style="cursor: default;">
                </c:if>
                <c:if test="${userInfo.gender == 'F'}">
                  <input type="text" name="gender" id="gender" readonly value="여성" style="cursor: default;">
                </c:if>
              </td>
            </tr>
            <tr>
              <th>이메일</th>
              <td class="email">
                <input type='text' name="email" id="email" required value="${fn:split(userInfo.email, '@' )[0]}">
                <span>@</span>
                <input type="text" id="emailText" value="${fn:split(userInfo.email, '@' )[1]}">
                <select name="emailaddr" id="emailaddr">
                  <option value="email" selected>직접입력</option>
                  <option value="daum.net">daum.net</option>
                  <option value="empal.com">empal.com</option>
                  <option value="gmail.com">gmail.com</option>
                  <option value="hanmail.net">hanmail.net</option>
                  <option value="msn.com">msn.com</option>
                  <option value="naver.com">naver.com</option>
                  <option value="nate.com">nate.com</option>
                </select>
              </td>
            </tr>
            <tr>
              <th>핸드폰 번호</th>
              <td class="tel">
              	<input type="text" name="tel_h1" id="tel_h1" style="cursor: default;" maxlength="3">
                <span>-</span>
                <input type="text" name="tel_h2_1" id="tel_h2_1" style="cursor: default;" maxlength="4">
                <span>-</span>
                <input type="text" name="tel_h2_2" id="tel_h2_2"  style="cursor: default;" maxlength="4">
                <input type="button" class="form_btn" id="certBtn" value="번호 번경하기">
              </td>
            </tr>
            <tr>
              <th>인증번호</th>
              <td class="certification">
                <input type="text" name="certification" required>
                <input type="button" value="확인" class="form_btn">
              </td>
            </tr>
            <tr>
            </tr>
          </table>
          <div class="btn">
              <a href="javascript:joinSubmit()" class="btn">수정하기</a>
          </div>
        </form>
      </div>
    </div>
  </div>
</section>

<%@include file="../include/footer.jsp"%>

--%>

<script>
var certYn = false;
var checkId= false;
var checkNickname= false;
var telNo;
var name;
var gender;


$(document).ready(function(){

});

function nextTelNo(cnt){
	if(cnt == 1){
		$("#tel_h2_1").focus();
	}else if(cnt ==2){
		$("#tel_h2_2").focus();
	}
}

function verifyId(attr, type){

	var requestParam;
	var value = $(attr).val();
	var textType;

	if(type == 'id'){
		textType = '아이디';
		$("#message_id").show();
		if(value.length < 4 || value.length > 20 || !checkEngNum(value)){
			$("#message_id").val("아이디는 5자리 이상, 20자리 이하로 입력해 주세요.").css("color", "red");
			return false;
		}

		requestParam = {
	            "data":{
	                "id" : value,
	            }
	        };
	}else if(type=='nickname'){
		textType = '닉네임';
		$("#message_nickname").show();
		if(value.length < 2 || value.length > 20){
			$("#message_nickname").val("닉네임은 2자리 이상, 20자리 이하로 입력해 주세요.").css("color", "red");
			return false;
		}

		requestParam = {
	            "data":{
	                "nickname" : value,
	            }
	        };
	}

	$.ajax({
        type: 'POST',
        url: '/user/verifyUser.do',
        data: JSON.stringify(requestParam),
        success: function(data) {
        	if(data == '\"SUCCESS\"'){
        		$("#message_"+type).val("사용가능한 "+textType+" 입니다.").css("color", "#46bf46");
        		if(type == 'id'){
        			checkId = true;
        		}else if(type == 'nickname'){
        			checkNickname = true;
        		}
        	}else{
        		$("#message_"+type).val("이미 사용중인 "+textType+" 입니다.").css("color", "red");
        	}
        },
        error : function(request, status, error ) {
        	alert("알 수 없는 이유로 실패하였습니다. " + error);

        },
        contentType: "application/json",
        dataType: 'text'
    });
}

$("#certBtn").click(function(){
	telNo = $("#tel_h1").val() + $("#tel_h2_1").val() + $("#tel_h2_2").val();
	name = $("#name").val();
	gender = $("input[name=gender]").val();

	var requestParam = {
            "data":{
                "telNo" : telNo,
                "gender": gender,
                "name": name
            }
        };

	var patternPhone = /01[016789]-[^0][0-9]{2,3}-[0-9]{3,4}/;

	if(!patternPhone.test(phoneNum)){
        alert("전화번호를 확인하세요.");
        return false;
    }

	if(!checkKor(name)){
		alert("성명을 확인하세요.");
		return false;
	}

	$.ajax({
        type: 'POST',
        url: '/auth/smsCert.do',
        data: JSON.stringify(requestParam),
        success: function(data) {
        	alert("인증번호가 발송되었습니다. 3분 이내에 입력하세요.")
        },
        error : function(request, status, error ) {
        	alert("알 수 없는 이유로 실패하였습니다. " + error);

        },
        contentType: "application/json",
        dataType: 'text'
    });
})

$("#emailaddr").on('change', function(){
	if($("#emailaddr option:selected").val() == 'email'){
		$("#emailText").show();
	}else{
		$("#emailText").hide();
	}


})

function passwordChange(){
	var id = '${userInfo.id}';
	var name = '${user_name}';
    var nowPassword = $("#c_pwd").val();
	var password = $("#n_pwd1").val();
	var password_re = $("#n_pwd2").val();

	if(nowPassword == '' || password == '' || password_re == ''){
		 alert("비밀번호를 입력하세요.");
		 return false;
	 }

	 if(password !== password_re){
		 alert("비밀번호가 일치하지 않습니다.");
		 return false;
	 }

	 if(!checkPassword(password)){
		 alert("비밀번호는 8~20자리, 영문,숫자,특수문자를 포함하여 입력해 주세요.");
		 return false;
	 }

	 $("#pchBtn").attr("disabled", true).css('cursor', 'not-allowed');

	 var requestParam = {
	    "data":{
	        "id" : id,
            "name" : name,
            "nowPassword" : nowPassword,
	        "password" : password
	    }
	};

	$.ajax({
        type: 'POST',
        url: '/user/passwordChange.do',
        data: JSON.stringify(requestParam),
        success: function(data) {
          if(data == '\"NOT_MATCH\"'){
            alert("비밀번호가 일치하지 않습니다.");
            $("#pchBtn").attr("disabled", false).css('cursor', 'pointer');
            return false;
          }
        	alert("비밀번호가 정상적으로 변경되었습니다.");
        },
        error : function(request, status, error ) {
        	alert("알 수 없는 이유로 실패하였습니다. " + error);

        },
        contentType: "application/json",
        dataType: 'text'
    });
}


function telNoChange(){
  var id = '${userInfo.id}';
  var name = '${user_name}';
  var nowPassword = $("#mb_password").val();
  var telNo = $("#mb_hp").val();

  if(telNo == '' || telNo.length != 11){
    alert("핸드폰 번호를 입력하세요.");
    return false;
  }

  if(nowPassword == ''){
    alert("비밀번호를 입력하세요.");
    return false;
  }

  if(!telNo.startsWith("010") || isNaN(telNo)){
    alert("핸드폰 번호를 확인하세요.");
    return false;
  }

  $("#tchBtn").attr("disabled", true).css('cursor', 'not-allowed');

  var requestParam = {
    "data":{
      "id" : id,
      "name" : name,
      "nowPassword" : nowPassword,
      "telNo" : telNo
    }
  };

  $.ajax({
    type: 'POST',
    url: '/user/telNoChange.do',
    data: JSON.stringify(requestParam),
    success: function(data) {
      if(data == '\"NOT_MATCH\"'){
        alert("비밀번호가 일치하지 않습니다.");
        $("#pchBtn").attr("disabled", false).css('cursor', 'pointer');
        return false;
      }
      alert("비밀번호가 정상적으로 변경되었습니다.");
    },
    error : function(request, status, error ) {
      alert("알 수 없는 이유로 실패하였습니다. " + error);

    },
    contentType: "application/json",
    dataType: 'text'
  });
}



</script>




<script type="text/javascript">
</script>
</body>
