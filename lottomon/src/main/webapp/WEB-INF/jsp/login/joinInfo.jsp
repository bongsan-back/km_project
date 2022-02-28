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
              <li><a href="/main.do">Home</a></li>
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
              <li class="nav-item">
                <a class="nav-link" href="/login/login.do">로그인</a>
              </li>
              <li class="nav-item active">
                <a class="nav-link" href="/login/joinAgree.do">회원가입</a>
              </li>
            </ul>



            <div class="tab-content">
              <!--회원가입-->
              <div class="tab-pane active">
                <h3 class="mt-3 mb-3">회원정보 입력</h3>
                <section class="p-4">
                  <form class="" method="get" id="join_form">
                    <div class="form-group row mb-0">
                      <label class="col-lg-3 control-label text-lg-right pt-2">아이디(4~12자리)</label>
                      <div class="col-lg-6">
                        <div class="input-group mb-3">
                            <span class="input-group-prepend">
                                <span class="input-group-text">
                                    <i class="fas fa-user"></i>
                                </span>
                            </span>
                          <input type="text" class="form-control" placeholder="아이디" name="id" id="id" required onkeyup="javascript:verifyId(this,'id')">
                        </div>
                        <input type="text" class="message-text" id="message_id" value="" disabled="disabled" style="margin-bottom:14px"/>
                      </div>
                    </div>
                    <div class="form-group row mb-0">
                      <label class="col-lg-3 control-label text-lg-right pt-2">비밀번호</label>
                      <div class="col-lg-6">
                        <div class="input-group mb-3">
                          <span class="input-group-prepend">
                              <span class="input-group-text">
                                  <i class="fas fa-lock"></i>
                              </span>
                          </span>
                          <input type="password" class="form-control" placeholder="비밀번호" name="password" id="password">
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
                          <input type="password" class="form-control" placeholder="비밀번호 확인" name="password_re" id="password_re">
                        </div>
                      </div>
                    </div>

                    <div class="form-group row mb-0">
                      <label class="col-lg-3 control-label text-lg-right pt-2">생년월일(8자리)</label>
                      <div class="col-lg-6">
                        <div class="input-group mb-3">
                          <input type="text" class="form-control" placeholder="ex) 19920101" name="birth" id="birth" maxlength="8"><br/>
                        </div>
                      </div>
                    </div>

                    <div class="form-group row mb-0">
                      <label class="col-lg-3 control-label text-lg-right pt-2">성명</label>
                      <div class="col-lg-6">
                        <div class="input-group mb-3">
                          <input type="text" class="form-control" placeholder="성명" name="name" id="name" maxlength="10" minlength="2" required><br/>
                        </div>
                      </div>
                    </div>

                    <div class="form-group row mb-0">
                      <label class="col-lg-3 control-label text-lg-right pt-2">닉네임(2~10자리)</label>
                      <div class="col-lg-6">
                        <div class="input-group mb-3">
                          <input type="text" class="form-control" placeholder="닉네임" name="nickname" id="nickname" maxlength="10" minlength="2" required onkeyup="javascript:verifyId(this,'nickname')"><br/>
                        </div>
                        <input type="text" class="message-text" id="message_nickname" value="" disabled="disabled" style="margin-bottom:14px"/>
                      </div>
                    </div>

                    <div class="form-group row mb-0">
                      <label class="col-lg-3 control-label text-lg-right pt-2">휴대폰 번호</label>
                      <div class="col-lg-6">
                        <div class="input-group mb-3">
                          <input type="text" class="form-control" placeholder="휴대폰번호" name="mb_hp" id="mb_hp" maxlength="11" onkeyup="this.value=this.value.replace(/[^0-9]/g,&#39;&#39;);">
                        </div>
                      </div>
                    </div>

                    <div class="form-group row mb-0">
                      <label class="col-lg-3 control-label text-lg-right pt-2">이메일</label>
                      <div class="col-lg-6">
                        <div class="input-group mb-3">
                                <span class="input-group-prepend">
                                    <span class="input-group-text">
                                        <i class="fas fa-envelope"></i>
                                    </span>
                                </span>
                          <input type="text" class="form-control" placeholder="이메일" name="email" id="email">
                        </div>
                      </div>
                    </div>


                    <div class="col-lg-12">
                      <button type="button" class="col-lg-6 btn btn-primary mb-2" onclick="joinSubmit()">가입하기</button>
                    </div>

                  </form>
                </section>
              </div>
              <!--end:회원가입-->

            </div>
          </div>
        </div>
      </div>
    </div>
    <hr>
  </div>
  <!--end:main-->


  <!------공통:푸터------>
  <footer id="footer" class="mt-0"><%@include file="../include/footerRenew.jsp"%>

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
          	<a href="./login.do">로그인</a>
	        <a href="./findUser.do">아이디<span>/패스워드</span> 찾기</a>
	        <a href="./join.do" class="on">회원가입</a>
        </div>
      </div>
      <div class="content">
        <div class="head">
          <h2>회원가입</h2>
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
                <input type="text" name="id" id="id" required onkeyup="javascript:verifyId(this,'id')">
                <a href='#' style='cursor:help'></a>
                <input type="text" class="message-text" id="message_id" value="" disabled="disabled"/>
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
              	<input type="text" name="nickname" id="nickname" required onkeyup="javascript:verifyId(this,'nickname')">
              	<input type="text" class="message-text" id="message_nickname" value="" disabled="disabled"/>
              </td>
            </tr>
          </table>

          <table>
            <h3>회원정보</h3>
            <tr>
              <th> 이름</th>
              <td><input type="text" name="name" id="name" required></td>
            </tr>
            <tr>
              <th>생년월일</th>
              <td class="birthday">
              	<input type="text" name="year" id="year" maxlength="4" required> 년
                <input type="text" name="mon"  id="mon" maxlength="2" required> 월
                <input type="text" name="day"  id="day" maxlength="2" required> 일
              </td>
            </tr>
            <tr>
              <th>성별</th>
              <td class="s">
                <input type="radio" name="gender" value="M" checked> 남자
                <input type="radio" name="gender" value="F"> 여자
              </td>
            </tr>
            <tr>
              <th>이메일</th>
              <td class="email">
                <input type='text' name="email" id="email" required>
                <span>@</span>
                <input type="text" id="emailText">
                <select name="emailaddr" id="emailaddr">
                  <option value="email">직접입력</option>
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
              	<input type="text" name="tel_h1" id="tel_h1" required maxlength="3" onkeyup="javascript:nextTelNo(1, this.value)">
                <span>-</span>
                <input type="text" name="tel_h2_1" id="tel_h2_1" required maxlength="4" onkeyup="javascript:nextTelNo(2, this.value)">
                <span>-</span>
                <input type="text" name="tel_h2_2" id="tel_h2_2" required maxlength="4">
                &lt;%&ndash;<input type="button" class="form_btn" id="certBtn" value="인증번호전송">&ndash;%&gt;
              </td>
            </tr>
            &lt;%&ndash;<tr>
              <th>인증번호</th>
              <td class="certification">
                <input type="text" name="certification" required>
                <input type="button" value="확인" class="form_btn">
              </td>
            </tr>&ndash;%&gt;
            <tr>
            </tr>
          </table>
          <div class="btn">
              <a href="javascript:joinSubmit()" class="btn">가입하기</a>
          </div>
        </form>
      </div>
    </div>
  </div>
</section>

<%@include file="../include/footerRenew.jsp"%>
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

function nextTelNo(cnt, value){
	if(cnt == 1 && value.length == 3){
		$("#tel_h2_1").focus();
	}else if(cnt ==2 && value.length == 4){
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
	telNo = $("#mb_hp").val();
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

function joinSubmit(){
	var id = $("#id").val();
	var password = $("#password").val();
	var password_re = $("#password_re").val();
	var nickname = $("#nickname").val();
	var birth = $("#birth").val();
    var telNo = $("#mb_hp").val();
	var name = $("#name").val();
	var email = $("#email").val();

	/* if(!certYn){
		alert("휴대폰 인증을 해주세요.");
		return false;
	}
	 */

	 if(!checkId){
		 alert("아이디를 확인하세요.");
		 $("#id").focus();
		return false;
	 }


	if(id.length < 4 || id.length > 20 || !checkEngNum(id)){
		alert("아이디는 5자리 이상, 20자리 이하로 입력하세요.");
		return false;
	}

	if(password == '' || password_re == ''){
		 alert("비밀번호를 입력하세요.");
		 return false;
	 }

	 if(password !== password_re){
		 alert("비밀번호가 일히하지 않습니다.");
		 return false;
	 }

	 if(!checkPassword(password)){
		 alert("비밀번호는 8~20자리, 영문,숫자,특수문자를 포함하여 입력해 주세요.");
		 return false;
	 }

  if(birth.length != 8 || isNaN(birth)){
    alert("생년월일 8자리를 정확히 입력해 주세요.");
    $("#birth").focus();
    return false;
  }

  if(name == ''){
    alert("성명을 확인하세요.");
    $("#nickname").focus();
    return false;
  }

	 if(nickname == ''){
		 alert("닉네임을 2글자 이상 입력해주세요.");
		 return false;
	 }

	 if(!checkNickname){
		 alert("닉네임을 확인하세요.");
		 $("#nickname").focus();
		return false;
	 }

	 /*if(year < 1900 || year > now_year || year == ''){
		 alert("생년월일을 정확히 입력하세요.");
		 return false;
	 }

	 if(mon < 0 || mon > 12 || mon == ''){
		 alert("생년월일을 정확히 입력하세요.");
		 return false;
	 }

	 if(day < 0 || day > 31 || day == ''){
		 alert("생년월일을 정확히 입력하세요	.");
		 return false;
	 }

	 if(mon.length <2 && mon < 10) mon = '0' + mon;
	 if(day.length <2 && day < 10) day = '0' + day;*/



  if(telNo.length != 11 || isNaN(telNo)){
    alert("휴대폰 번호를 확인하세요.");
    $("#mb_hps").focus();
    return false;
  }

	if($("#email").val() == ''){
		 alert("이메일을 정확히 입력해 주세요.");
		 return false;
	}else if($("#email").val().indexOf('@') < 0 || $("#email").val().indexOf('.') < 0){
        alert("이메일 주소를 정확히 입력해주세요.");
        return false;
	}

	 var requestParam = {
	    "data":{
	        "telNo" : telNo,
	        /*"gender": gender,*/
	        "name": name,
	        "id" : id,
	        "password" : password,
	        "nickname" : nickname,
	        "birth" : birth,
	        "email" : email
	    }
	};


	 console.log(requestParam);

	$.ajax({
        type: 'POST',
        url: '/user/join.do',
        data: JSON.stringify(requestParam),
        success: function(data) {
          if(data == '\"SUCCESS\"'){
            alert("회원가입에 성공하였습니다.");
            location.href = '/login/login.do';

          }else{
            alert("이미 회원가입 된 휴대폰 번호입니다.\n본인이 가입하지 않았거나, 번호가 바뀌었을 경우에 고객센터에 문의바랍니다.");
          }


        },
        error : function(request, status, error ) {
          alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);

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
