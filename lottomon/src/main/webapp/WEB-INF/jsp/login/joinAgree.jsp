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
  <div class="member_go">
    <div class="wrap">
      <div class="left three">
        <h2>회원서비스</h2>
        <div>
	        <a href="./login.do"  class="on">로그인</a>
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
            <a href="member_go.php"><img src="./img/arrow.png"> 회원가입</a>
          </h5>
        </div>

        <div class="sign_Up">
          <div>
            <div class="circle on">
              <h3>step 01</h3>
              <p>이용약관동의</p>
            </div>

            <span><img src="/img/arrow_rogin.png"></span>

            <div class="circle">
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

        <div class="seolmyeong">
          <p>이용약관</p>
          <form action="#" name="seolmyeong">

            <textarea name="seolmyeong_txt01" readonly>
				제 1 조 (총칙)
				
				(주)브레인콘텐츠(이하 “회사”)의 이용약관은 다음과 같고, 회사는 로또리치(lottorich)라는 명칭의 웹 사이트(http://www.lottorich.co.kr), 모바일 사이트(http://m.lottorich.co.kr), 어플리케이션을 운영하고 있습니다(이하 회사를 통칭하여 “로또리치”). 로또리치는 종합 콘텐츠 포털 서비스를 제공하는 사이트로 복권 콘텐츠 및 영화, 만화, 운세, 게임 등 각종 엔터테인먼트 콘텐츠를 유 / 무료로 제공하고 있습니다. 당사의 분석시스템은 지금까지 당첨된 1등당첨 조합의 누적패턴을 분석, 필터링하여 최적의 조합을 추출, 제공하는 시스템으로 정보제공만을 목적로 하며, 당첨확률 개선서비스가 아니므로 서비스 이용에 참고바랍니다. 더불어 서비스 이용 과정에서 기대이익을 얻지못하거나 발생한 손해 등에 대한최종 책임은 서비스 이용자 본인에게 있습니다. 본 이용약관은 로또리치가 제공하는 서비스 및 정책에 따라 내용이 변경될 수 있으니, 본 페이지를 정기적으로 방문하여 추가되거나혹은 수정된 내용을 확인하여 이용하여야 합니다.
				
				제 2 조 (목적)
			</textarea>
            <label for="seolmyeong_txt01">
              <input type="checkbox" name="seolmyeong_txt01" id="seolmyeong_txt01" required>이용약관에 동의합니다
            </label>

            <p>개인정보 수집 및 이용에 대한 안내</p>
            <textarea name="seolmyeong_txt02" readonly>
				1. 개인정보 수집 및 이용 목적
				
				가. 서비스 제공에 관한 계약 이행 및 서비스 제공에 따른 요금정산
				컨텐츠 제공, 특정 맞춤 서비스 제공, 본인인증, 구매 및 요금 결제, 요금추심
				
				나. 회원관리
				회원제 서비스 이용 및 제한적 본인 확인제에 따른 본인확인, 개인식별, 불량회원의 부정 이용방지와 비인가 사용방지, 가입의사 확인, 가입 및 가입횟수 제한, 분쟁 조정을 위한 기록보존,
				불만처리 등 민원처리, 고지사항 전달, 회원탈퇴 의사의 확인
			</textarea>
            <label for="seolmyeong_txt02">
              <input type="checkbox" name="seolmyeong_txt02" id="seolmyeong_txt02" required>이용약관에 동의합니다
            </label>
            <div class="btn">
              <a href="javascript:joinNext()" class="btn">다음단계로</a>
            </div>
          </form>
        </div>
      </div>
    </div>
  </div>
</section>


<%@include file="../include/footer.jsp"%>


<script>
function joinNext(){
	if($('#seolmyeong_txt01').is(":checked") == true && $('#seolmyeong_txt02').is(":checked") == true){
        location.href='./joinInfo.do'

    }else{
    	alert("약관에 동의해 주세요.");
    }
}



</script>




<script type="text/javascript">
</script>
</body>
