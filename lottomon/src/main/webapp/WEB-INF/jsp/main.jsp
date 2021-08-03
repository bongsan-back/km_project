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
<link rel="stylesheet" type="text/css" href="/css/style.css" />

<style type="text/css">
.placeholder { color: #aaa; }
</style>


</head>
<body>
<%@include file="./include/header.jsp"%>
<section class="main">
  <%@include file="./include/quick.jsp"%>
</section>

<!-- <section id="sub"> -->
<article class="main-contents wrap">
  <div class="main-1">
    <div class="main-1box">
      <h2>이번주 로또결과</h2>
      <div class="swiper-container swiper-container-lotto">
        <div class="swiper-wrapper">
          <div class="swiper-slide sd1">
            <h3><span>937</span>회 당첨결과</h3>
            <p>2020-11-14 추천</p>
            <div class="lotto-numder">
              <span class="red">2</span>
              <span class="orange">10</span>
              <span class="orange">13</span>
              <span class="green">22</span>
              <span class="green">25</span>
              <span class="pup">40</span>
              <span class="plus">+</span>
              <span class="green">26</span>
            </div>
          </div>
          <div class="swiper-slide sd2">
            <h3><span>557</span>회 당첨결과</h3>
            <p>2020-11-14 추천</p>
            <div class="lotto-numder">
              <span class="red">2</span>
              <span class="orange">10</span>
              <span class="orange">13</span>
              <span class="green">22</span>
              <span class="green">25</span>
              <span class="pup">40</span>
              <span class="plus">+</span>
              <span class="green">26</span>
            </div>
          </div>
          <div class="swiper-slide sd3">
            <h3><span>237</span>회 당첨결과</h3>
            <p>2020-11-14 추천</p>
            <div class="lotto-numder">
              <span class="red">2</span>
              <span class="orange">10</span>
              <span class="orange">13</span>
              <span class="green">22</span>
              <span class="green">25</span>
              <span class="pup">40</span>
              <span class="plus">+</span>
              <span class="green">26</span>
            </div>
          </div>
        </div>
        <!-- If we need pagination -->
        <img src="./img/button-prev.png" class="swiper-button-prev">
        <img src="./img/button-next.png" class="swiper-button-next">
      </div>
      <script>
        var mySwiper_lotto = new Swiper('.swiper-container-lotto', {
          slidesPerView: 'auto',
          loop: true,
          pagination: {
            el: '.swiper-pagination',
          },
          autoplay: {
            delay: 3000,
            disableOnInteraction: false,
          },
          navigation: {
            nextEl: '.swiper-button-next',
            prevEl: '.swiper-button-prev',
          },
        });

      </script>
    </div>
    <div>
      <div class="table">
        <h3><span>당첨</span>현황</h3>
        <table border="0" cellspacing='1' bordercolor="#fff">
          <colgroup>
            <col style="width:45px";>
            <col style="width:*";>
            <col style="width:*";>
            <col style="width:*";>
          </colgroup>
          <tr class="gray">
            <th>번호</th>
            <th>당첨금액</th>
            <th>당첨자수</th>
            <th>1인당 당첨금</th>
          </tr>
          <tr>
            <td style="color:#ee1916;">1</td>
            <td>22,642,555원</td>
            <td>11명</td>
            <td>22,642,555원</td>
          </tr>
          <tr>
          <tr class="gray">
            <td>1</td>
            <td>22,642,555원</td>
            <td>57명</td>
            <td>22,642,555원</td>
          <tr>
            <td>1</td>
            <td>22,642,555원</td>
            <td>84,156명</td>
            <td>22,642,555원</td>
          </tr>
          <tr class="gray">
            <td>1</td>
            <td>22,642,555원</td>
            <td>794,141명</td>
            <td>22,642,555원</td>
          </tr>
          <tr>
            <td>1</td>
            <td>22,642,555원</td>
            <td>2,987,198명</td>
            <td>22,642,555원</td>
          </tr>
        </table>
      </div>
    </div>
    <div>
      <div>
        <h3>로그인</h3>
        <form action='#' method='post'>
          <input type='text' name='id' autocomplate='off' placeholder='아이디' required />
          <input type='password' name='password' autocomplate='off' placeholder='패스워드' required />
          <div class="login">
            <label for="checkbox"><input type="checkbox" id="checkbox"> 자동로그인</label>
            <ul>
              <li>
                <a href="#">아이디</a>/<a href="#">비밀번호 찾기</a> |
              </li>
              <li><a href="#"> 회원가입</a></li>
            </ul>
            <a href="#" style="color:#fff;">
              <submit type='submit'>로그인
              </submit>
            </a>
          </div>
        </form>
      </div>
    </div>
  </div>
  <div class="main-2">
    <div>
      <div class="main-2box">
        <p>1등 당첨금</p>
        <span>당첨자수 : 4명</span>
        <h6>22,646,689,009원</h6>
      </div>
      <p class="btn">
        <a href="#">회차별 당첨결과</a>
        <a href="#">예상번호 받기</a>
      </p>
    </div>
    <div class="main-2table">
      <h3><span>1등</span> 배출점</h3>
      <table border="0" cellspacing='1' bordercolor="#fff">
        <colgroup>
          <col style="width:45px";>
          <col style="width:*";>
          <col style="width:65px";>
          <col style="width:120px";>
        </colgroup>
        <tr class="gray">
          <th>번호</th>
          <th>상호명</th>
          <th>구분</th>
          <th>지역</th>
        </tr>
        <tr>
          <td style="color:#ee1916;">1</td>
          <td>잠실</td>
          <td>자동</td>
          <td>서울시 송파구 올림픽대로</td>
        </tr>
        <tr>
        <tr class="gray">
          <td>2</td>
          <td>대박복권방</td>
          <td>자동</td>
          <td>대박역대박역</td>
        <tr>
          <td>3</td>
          <td>영일식품</td>
          <td>수동</td>
          <td>영일역영일역</td>
        </tr>
        <tr class="gray">
          <td>4</td>
          <td>우정식품</td>
          <td>자동</td>
          <td>친구역친구역</td>
        </tr>
        <tr>
          <td>5</td>
          <td>황금돼지</td>
          <td>자동</td>
          <td>95년생95년생</td>
        </tr>
      </table>
    </div>
    <div class="main-2_number">
      <h6>제목텍스트베너</h6>
      <span>텍스트 텍스트 텍스트 텍스트 텍스트 텍스트</span>
      <a href="#">버튼</a>
    </div>
  </div>
  <div class="main-3">
    <div class="main-3_1box">
      <div class="main3-title">
        <h3><span>1등 당첨자</span> 이야기</h3>
        <h6><a href="./community.php">더보기<img src="./img/arrow.png"></a></h6>
      </div>
      <div class="main3-story">
        <a href="#">
          <div class="photo"></div>
          <div>
            <h6>제목<img src="./img/newred.png"></h6>
            <span>
                Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore nisi ut aliquip ex ea commodo ut aliquip ex ea commodo
              </span>
            <p>2020-1-1</p>
          </div>
        </a>
      </div>
      <a href="#">
        <div class="main3-story">
          <div class="photo"></div>
          <div>
            <h6>제목<img src="./img/newred.png"></h6>
            <span>
                Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore nisi ut aliquip ex ea commodo ut aliquip ex ea commodo
              </span>
            <p>2020-1-1</p>
          </div>
        </div>
      </a>
    </div>
    <div class="balloonimg">
      <p>제목텍스트 </p>
      <span>텍스트 텍스트 텍스트 텍스트 텍스트 텍스트 텍스트 텍스트 텍스트 텍스트</span>
      <a href="#">버튼</a>
    </div>
  </div>
  <div class="main-4 wrap">
    <div class="main-4box">
      <h6><p>당첨의 명당</p><a href="#">더보기<img src="./img/arrow2.png"></a></h6>
      <div class="box">
        <div>
          <a href="#">
            <div>
              <img src="./img/imgbig.jpg">
            </div>
            <p>제목</p>
          </a>
        </div>
        <div>
          <a href="#">
            <div>
              <img src="./img/imgbig.jpg">
            </div>
            <p>제목</p>
          </a>
        </div>
        <div>
          <a href="#">
            <div>
              <img src="./img/imgbig.jpg">
            </div>
            <p>제목</p>
          </a>
        </div>
      </div>
    </div>
    <div class="main-4box-2">
      <h3><span>역대 1등</span> 당첨</h3>
      <span><a href="#">더보기<img src="./img/arrow.png"></a></span>
      <ul>
        <li>459회차 (11명)<span><img src="./img/money.png">22,646,485,000원</span></li>
        <li>459회차 (11명)<span><img src="./img/money.png">22,646,485,000원</span></li>
        <li>459회차 (11명)<span><img src="./img/money.png">22,646,485,000원</span></li>
        <li>459회차 (11명)<span><img src="./img/money.png">22,646,485,000원</span></li>
        <li>459회차 (11명)<span><img src="./img/money.png">22,646,485,000원</span></li>
      </ul>
    </div>
  </div>
  <div class="main-5">
    <div class="main-5box_1 main-5box">
      <h3><span>당첨 기원 </span>게시판</h3>
      <h6><a href="./prayer.php">더보기<img src="./img/arrow.png"></a></h6>
      <ol>
        <li><a href="#"><span>1 </span> 텍스트텍텍스트텍스트텍스트스트텍스트텍스트텍스트텍스트</a></li>
        <li><a href="#"><span>2 </span> 텍스트텍스트텍스트</a></li>
        <li><a href="#"><span>3 </span> 텍스트텍스트텍스트</a></li>
        <li><a href="#"><span>4 </span> 텍스트텍스트텍스트</a></li>
        <li><a href="#"><span>5 </span> 텍스트텍스트텍스트</a></li>
      </ol>
    </div>
    <div class="main-5box_2 main-5box">
      <h3><span>자유 </span>게시판</h3>
      <h6><a href="./free.php">더보기<img src="./img/arrow.png"></a></h6>
      <ol>
        <li><a href="#"><span>1 </span> 텍스트텍스트텍스트</a></li>
        <li><a href="#"><span>2 </span> 텍텍스트텍스트텍스트스트텍스트텍스트텍스트텍스트텍스트</a></li>
        <li><a href="#"><span>3 </span> 텍스트텍스트텍스트</a></li>
        <li><a href="#"><span>4 </span> 텍스트텍스트텍스트</a></li>
        <li><a href="#"><span>5 </span> 텍스트텍스트텍스트</a></li>
      </ol>
    </div>
    <div>
      <div class="swiper-container swiper-container-board">
        <!-- Additional required wrapper -->
        <div class="swiper-wrapper">
          <!-- Slides -->
          <div class="swiper-slide sd1">
            <span>로또몬 1 로또몬 1</span>
            <a href="#">멤버십가입Go</a>
            <!-- <img src="./img/swiper-img-btn.png"> -->
          </div>
          <div class="swiper-slide sd1">
            <span>로또몬 2 로또몬 2</span>
            <a href="#">멤버십가입Go</a>
          </div>
          <div class="swiper-slide sd1">
            <span>로또몬 3 로또몬 3</span>
            <a href="#">멤버십가입Go</a>
          </div>
        </div>
        <div class="swiper-pagination"></div>
      </div>

      <script>
        var mySwiper_board = new Swiper('.swiper-container-board', {
          slidesPerView: 'auto',
          loop: true,
          pagination: {
            el: '.swiper-pagination',
            clickable: true,
          },
          autoplay: {
            delay: 1500,
            disableOnInteraction: false,
          },
        });

      </script>
    </div>
  </div>
  <div class="main-6">
    <div class="coll"><a href="#"><img src="./img/coll_img.jpg"></a></div>
    <div class="bank"><a href="#"><img src="./img/bank_img.jpg"></a></div>
    <div class="main-6box">
      <h3>로또몬<span> 토론실</span></h3>
      <h6><a href="./debate.php">더보기<img src="./img/arrow.png"></a></h6>
      <ol>
        <li><a href="#"><span>1 </span> 텍스트텍스텍스트텍스텍스트텍스텍스트텍스텍스트텍스텍스트텍스</a></li>
        <li><a href="#"><span>2 </span> 텍스트텍스텍스트텍스</a></li>
        <li><a href="#"><span>3 </span> 텍스트텍스텍스트텍스</a></li>
        <li><a href="#"><span>4 </span> 텍스트텍스텍스트텍스</a></li>
        <li><a href="#"><span>5 </span> 텍스트텍스텍스트텍스</a></li>
      </ol>
    </div>
  </div>
</article>



<!-- </section> -->
<%@include file="./include/footer.jsp"%>


<script>
    $('#mobile').click(function(){
        $('.menu_full').fadeIn();
    });
    $('#mobile_x').click(function(){
        $('.menu_full').fadeOut();
    });
</script>




<script type="text/javascript">
</script>
</body>
