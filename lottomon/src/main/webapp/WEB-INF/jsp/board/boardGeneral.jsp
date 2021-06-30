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
  <div class="service_main">
    <div class="wrap">
      <div class="left for">
        <h2>커뮤니티</h2>
        <div>
          <a href="./free.php" class="on">자유게시판</a>
          <a href="./prayer.php">당첨기원게시판</a>
          <a href="./debate.php">토론방</a>
          <a href="./community.php">1등<span>당첨자</span>이야기</a>
        </div>
      </div>
      <div class="content">
        <div class="head">
          <h2>자유게시판</h2>
          <h5>
            <img src="./img/home.jpg"> 홈
            <img src="./img/arrow.png"> 커뮤니티
            <img src="./img/arrow.png"> 자유게시판
          </h5>
        </div>

        <div id="table_free">
          <div class="table">
            <table style="border-spacing:0px" ;>
              <colgroup>
                <col style="width:75px;">
                <col style="width:*;">
                <col style="width:100px;">
                <col style="width:70px;">
                <col style="width:100px;">
              </colgroup>
              <tr>
                <th>번호</th>
                <th>제목</th>
                <th>작성일</th>
                <th>작성자</th>
                <th>조회수</th>
              </tr>
              <tr class="new">
                <td>419</td>
                <td>제목입니다.제목입니다[100]<span>new</span></td>
                <td>2020-12-08</td>
                <td>관리자</td>
                <td>1512</td>
              </tr>
              <tr class="new gray">
                <td>419</td>
                <td>제목입니다.제목입니다[100]<span>new</span></td>
                <td>2020-12-08</td>
                <td>관리자</td>
                <td>1512</td>
              </tr>
              <tr>
                <td>419</td>
                <td>제목입니다.제목입니다[100]</td>
                <td>2020-12-08</td>
                <td>관리자</td>
                <td>1512</td>
              </tr>
              <tr class="gray">
                <td>419</td>
                <td>제목입니다.제목입니다[100]</td>
                <td>2020-12-08</td>
                <td>관리자</td>
                <td>1512</td>
              </tr>
              <tr>
                <td>419</td>
                <td>제목입니다.제목입니다[100]</td>
                <td>2020-12-08</td>
                <td>관리자</td>
                <td>1512</td>
              </tr>
              <tr class="gray">
                <td>419</td>
                <td>제목입니다.제목입니다[100]</td>
                <td>2020-12-08</td>
                <td>관리자</td>
                <td>1512</td>
              </tr>
              <tr>
                <td>419</td>
                <td>제목입니다.제목입니다[100]</td>
                <td>2020-12-08</td>
                <td>관리자</td>
                <td>1512</td>
              </tr>
              <tr class="gray">
                <td>419</td>
                <td>제목입니다.제목입니다[100]</td>
                <td>2020-12-08</td>
                <td>관리자</td>
                <td>1512</td>
              </tr>
              <tr>
                <td>419</td>
                <td>제목입니다.제목입니다[100]</td>
                <td>2020-12-08</td>
                <td>관리자</td>
                <td>1512</td>
              </tr>
              <tr class="gray">
                <td>419</td>
                <td>제목입니다.제목입니다[100]</td>
                <td>2020-12-08</td>
                <td>관리자</td>
                <td>1512</td>
              </tr>
            </table>
            <p class="btn"><a href="#">글쓰기</a></p>
          </div>
          <div class="list_btn">
            <span class="prev"><a href="#"><img src="./img/prev_02.jpg"></a></span>
            <span class="prev"><a href="#"><img src="./img/prev_01.jpg"></a></span>
            <span class="on"><a href="#">1</a></span>
            <span><a href="#">2</a></span>
            <span><a href="#">3</a></span>
            <span><a href="#">4</a></span>
            <span><a href="#">5</a></span>
            <span><a href="#">6</a></span>
            <span><a href="#">7</a></span>
            <span><a href="#">8</a></span>
            <span><a href="#">9</a></span>
            <span><a href="#">10</a></span>
            <span class="next"><a href="#"><img src="./img/next_01.jpg"></a></span>
            <span class="next"><a href="#"><img src="./img/next_02.jpg"></a></span>
          </div>
          <form id="service_seclect" action="/">
            <select id="seclect">
              <option value="">전체</option>
              <option value="alert">1</option>
              <option value="console">2</option>
              <option value="both">3</option>
            </select>
            <div class="find">
              <input type="text" placeholder="검색어를 입력하세요."><button type="submit"><img src="./img/find.png"></button>
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
