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
<link rel="stylesheet" type="text/css" href="/css/font.css" />
<link rel="stylesheet" type="text/css" href="/css/common.css" />
<link rel="stylesheet" type="text/css" href="/css/layout.css" />
<link rel="stylesheet" type="text/css" href="/css/header.css" />
<link rel="stylesheet" type="text/css" href="/css/footer.css" />
<link rel="stylesheet" type="text/css" href="/css/style.css?ver=0.01" />

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
  <div class="member_go go02">
    <div class="wrap">
      <div class="left three">
        <h2>회원서비스</h2>
        <div>
          <a href="./login.do">로그인</a>
          <a href="./member_password.php">아이디<span>/패스워드</span> 찾기</a>
          <a href="./member_go.php" class="on">회원가입</a>
        </div>
      </div>
      <div class="content">
        <div class="head">
          <h2>회원가입</h2>
          <h5>
            <a href="/"><img src="/img/home.jpg"> 홈</a>
            <a href="./login.do"><img src="/img/arrow.png"> 회원서비스</a>
            <a href="./member_go.php"><img src="/img/arrow.png"> 회원가입</a>
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
        
        
        
        <form name="write_form_user" method="post">
          <table>
            <h3>계정정보</h3>
            <tr>
              <th>아이디</th>
              <td>
                <input type="text" name="id" id="id" required>
                <a href='#' style='cursor:help'></a>
              </td>
            </tr>
            <tr>
              <th>비밀번호</th>
              <td><input type="password" name="password" id="password" required pattern="^(?=.*[A-Za-z])(?=.*\d)(?=.*[$@$!%*#?&])[A-Za-z\d$@$!%*#?&]{8,16}$"></td>
            </tr>
            <tr>
              <th>비밀번호 확인</th>
              <td><input type="password" name="password_re" id="password_re" required></td>
            </tr>
            <tr>
              <th>닉네임</th>
              <td><input type="text" name="nickname" required></td>
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
              	<input type="text" name="year" maxlength="4" required pattern="(19|20)\d{2}" > 년
                <input type="text" name="math" maxlength="2" required> 월
                <input type="text" name="day" maxlength="2" required> 일
              </td>
            </tr>
            <tr>
              <th>성별</th>
              <td class="s">
                <input type="radio" name="m" checked> 남자
                <input type="radio" name="f"> 여자
              </td>
            </tr>
            <tr>
              <th>이메일</th>
              <td class="email">
                <input type='text' name="email" required>
                <span>@</span>
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
              <td class="tel"><input type="text" name="tel_h1" required>
                <span>-</span>
                <input type="text" name="tel_h2_1" required>
                <span>-</span>
                <input type="text" name="tel_h2_2" required>
                <input type="button" class="form_btn" value="인증번호전송">
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
              <a href="./member_go03.php" class="btn">가입하기</a>
          </div>
        </form>
      </div>
    </div>
  </div>
</section>

<%@include file="../include/footer.jsp"%>


<script>




</script>




<script type="text/javascript">
</script>
</body>
