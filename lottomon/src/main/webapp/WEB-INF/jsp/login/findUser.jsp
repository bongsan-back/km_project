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
<%@include file="../include/header.jsp"%>
<section class="main">
  <%@include file="../include/quick.jsp"%>
</section>

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
       'email' : $("#findIdEmail").val()
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
      if(data==null || data == '') message = '일치하는 정보가 없습니다.';
      else message = '회원님의 아이디는 <span>' + data.id + '<span> 입니다.';

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
      'email' : $("#findPwEmail").val(),
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
      else message = '회원님의 임시비밀 번호는 <span>' + data.tempPassword + '<span> 입니다.';

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
