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

<style type="text/css">
.placeholder { color: #aaa; }
#write_form_user table td{width: 80%}
.message-text{color: red; border: none !important; background-color: #fff !important; display:none; height: 20px !important;}
</style>


</head>
<body>
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
                <%--<input type="button" class="form_btn" id="certBtn" value="인증번호전송">--%>
              </td>
            </tr>
            <%--<tr>
              <th>인증번호</th>
              <td class="certification">
                <input type="text" name="certification" required>
                <input type="button" value="확인" class="form_btn">
              </td>
            </tr>--%>
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

<%@include file="../include/footer.jsp"%>


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

function joinSubmit(){
	var id = $("#id").val();
	var password = $("#password").val();
	var password_re = $("#password_re").val();
	var nickname = $("#nickname").val();
	var year = $("#year").val();
	var mon = $("#mon").val();
	var day = $("#day").val();
	var birth;

	var name = $("#name").val();

	var gender = $("input[name=gender]").val();
	var email = $("#email").val() + '@' + $("#emailaddr").val();

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

	 if(nickname == ''){
		 alert("닉네임을 2글자 이상 입력해주세요.");
		 return false;
	 }

	 if(!checkNickname){
		 alert("닉네임을 확인하세요.");
		 $("#nickname").focus();
		return false;
	 }

	 if(year < 1900 || year > now_year || year == ''){
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
	 if(day.length <2 && day < 10) day = '0' + day;

	 birth = year+""+mon+""+day

	 if($("#email").val() == ''){
		 alert("이메일을 정확히 입력해 주세요.");
		 return false;
	 }else{
		 if($("#emailaddr option:selected").val() == 'email'){
			 if($("#emailText").val() == '' || $("#emailText").val().indexOf('.') < 0){
				 alert("이메일 주소를 정확히 입력해주세요.");
				 return false;
			 }else{
				 email =  $("#email").val().trim() + '@' + $("#emailText").val().trim();
			 }
		 }else{
			 email =  $("#email").val().trim() + '@' + $("#emailaddr option:selected").val();
		 }
	 }





	 if($("#tel_h1").val().length < 3 || $("#tel_h2_1").val().length < 4 || $("#tel_h2_2").val().length < 4){
	   alert("휴대폰 번호를 확인하세요.");
	   $("#tel_h1").focus();
	   return false;
     }

       telNo = $("#tel_h1").val() + $("#tel_h2_1").val() + $("#tel_h2_2").val();

	 var requestParam = {
	    "data":{
	        "telNo" : telNo,
	        "gender": gender,
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




<script type="text/javascript">
</script>
</body>
