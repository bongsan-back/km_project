<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
  <link rel="stylesheet" type="text/css" href="/css/layout.css" />
  <link rel="stylesheet" type="text/css" href="/css/font.css" />
  <link rel="stylesheet" type="text/css" href="/css/common.css" />
<link rel="stylesheet" type="text/css" href="/css/header.css" />
<link rel="stylesheet" type="text/css" href="/css/footer.css" />
<link rel="stylesheet" type="text/css" href="/css/style.css" />

<style type="text/css">
.placeholder { color: #aaa; }

.main-2table .placeTable tr:nth-child(odd){background-color: #f5f6f7}
.main-2table .placeTable tr:nth-child(2) td:nth-child(1){color: #ee1916 !important;}
</style>


</head>
<body>
<%@include file="./include/header.jsp"%>
<section class="main">
  <%@include file="./include/quick.jsp"%>


<!-- <section id="sub"> -->
<article class="main-contents wrap">
  <div class="main-1">
    <div class="main-1box">
      <h2>이번주 로또결과</h2>
      <div class="swiper-container swiper-container-lotto">
        <div class="swiper-wrapper">
          <c:forEach items="${lottoData3Week}" var="weekList" >
            <div class="swiper-slide">
              <h3><span>${weekList.drwNo}</span>회 당첨결과</h3>
              <p>${weekList.dwr_dt}</p>
              <div class="lotto-number">
                <span class="red">${weekList.drwtNo1}</span>
                <span class="orange">${weekList.drwtNo2}</span>
                <span class="orange">${weekList.drwtNo3}</span>
                <span class="green">${weekList.drwtNo4}</span>
                <span class="green">${weekList.drwtNo5}</span>
                <span class="pup">${weekList.drwtNo6}</span>
                <span class="plus">+</span>
                <span class="green">${weekList.bnusNo}</span>
              </div>
            </div>
          </c:forEach>
        </div>
        <!-- If we need pagination -->
        <img src="/img/button-prev.png" class="swiper-button-prev">
        <img src="/img/button-next.png" class="swiper-button-next">
      </div>
      <script>
        var mySwiper_lotto = new Swiper('.swiper-container-lotto', {
          slidesPerView: 'auto',
          loop: true,
          pagination: {
            el: '.swiper-pagination',
          },
          /*autoplay: {
            delay: 3000,
            disableOnInteraction: false,
          },*/
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
            <col style="";>
            <col style="";>
            <col style="";>
          </colgroup>
          <tr class="gray">
            <th>번호</th>
            <th>당첨금액</th>
            <th>당첨자수</th>
            <th>1인당 당첨금</th>
          </tr>
          <tr>
            <td style="color:#ee1916;">1</td>
            <td><fmt:formatNumber value="${lottoData3Week[0].placeNo1_price * lottoData3Week[0].placeNo1_cnt}" pattern="#,###" /></td>
            <td><fmt:formatNumber value="${lottoData3Week[0].placeNo1_cnt}" pattern="#,###" />명</td>
            <td><fmt:formatNumber value="${lottoData3Week[0].placeNo1_price}" pattern="#,###" />원</td>
          </tr>
          <tr>
          <tr class="gray">
            <td>2</td>
              <td><fmt:formatNumber value="${lottoData3Week[0].placeNo2_price * lottoData3Week[0].placeNo2_cnt}" pattern="#,###" /></td>
              <td><fmt:formatNumber value="${lottoData3Week[0].placeNo2_cnt}" pattern="#,###" />명</td>
              <td><fmt:formatNumber value="${lottoData3Week[0].placeNo2_price}" pattern="#,###" />원</td>
          <tr>
            <td>3</td>
            <td><fmt:formatNumber value="${lottoData3Week[0].placeNo3_price * lottoData3Week[0].placeNo3_cnt}" pattern="#,###" /></td>
            <td><fmt:formatNumber value="${lottoData3Week[0].placeNo3_cnt}" pattern="#,###" />명</td>
            <td><fmt:formatNumber value="${lottoData3Week[0].placeNo3_price}" pattern="#,###" />원</td>
          </tr>
          <tr class="gray">
            <td>4</td>
              <td><fmt:formatNumber value="${lottoData3Week[0].placeNo4_price * lottoData3Week[0].placeNo4_cnt}" pattern="#,###" /></td>
              <td><fmt:formatNumber value="${lottoData3Week[0].placeNo4_cnt}" pattern="#,###" />명</td>
              <td><fmt:formatNumber value="${lottoData3Week[0].placeNo4_price}" pattern="#,###" />원</td>
          </tr>
          <tr>
            <td>5</td>
              <td><fmt:formatNumber value="${lottoData3Week[0].placeNo5_price * lottoData3Week[0].placeNo5_cnt}" pattern="#,###" /></td>
              <td><fmt:formatNumber value="${lottoData3Week[0].placeNo5_cnt}" pattern="#,###" />명</td>
              <td><fmt:formatNumber value="${lottoData3Week[0].placeNo5_price}" pattern="#,###" />원</td>
          </tr>
        </table>
      </div>
    </div>
    <div>
      <div>

        <c:if test="${empty user_id }">
          <h3>로그인</h3>
          <form action='#' method='post'>
            <input type='text' name='id' autocomplate='off' placeholder='아이디' required id="id" />
            <input type='password' name='password' autocomplate='off' placeholder='패스워드' required id="password" />
            <div class="login">
              <label for="checkbox"><input type="checkbox" id="checkbox"> 자동로그인</label>
              <ul>
                <li>
                  <a href="/login/findUser.do">아이디</a>/<a href="/login/findUser.do">비밀번호 찾기</a> |
                </li>
                <li><a href="/login/joinAgree.do"> 회원가입</a></li>
              </ul>
              <a href="#none" style="color:#fff;">
                <submit type='submit' onclick="javascript:loginProc()">로그인
                </submit>
              </a>
            </div>
          </form>
        </c:if>
        <c:if test="${not empty user_id }">
          <div class="main-2_number">
            <h6>${user_id}님 환영합니다.</h6>
            <span>회원 등급 : ${grade_name}</span>
            <a href="#">마이 페이지</a>
          </div>
        </c:if>





      </div>
    </div>
  </div>
  <div class="main-2">
    <div>
      <div class="main-2box">
        <p>1등 당첨금</p>
        <span>당첨자수 : ${lottoData3Week[0].placeNo1_cnt}명</span>
        <h6><fmt:formatNumber value="${lottoData3Week[0].placeNo1_price}" pattern="#,###" />원</h6>
      </div>
      <p class="btn">
        <a href="/winning.do">회차별 당첨결과</a>
        <a href="/membership.do">예상번호 받기</a>
      </p>
    </div>
    <div class="main-2table">
      <h3><span>1등</span> 배출점</h3>
      <table border="0" cellspacing='1' bordercolor="#fff" class="placeTable">
        <colgroup>
          <col style="width:45px";>
          <col style="";>
          <col style="width:65px";>
          <col style="width:120px";>
        </colgroup>
        <tr class="gray">
          <th>번호</th>
          <th>상호명</th>
          <th>구분</th>
          <th>지역</th>
        </tr>

        <c:forEach items="${selectPlaceList}" var="placeList" varStatus="status">
          <tr>
            <td style="">${status.count}</td>
            <td>${placeList.name}</td>
            <td>${placeList.type}</td>
            <td>${placeList.addr}</td>
          </tr>
        </c:forEach>
      </table>
    </div>

    <div>
      <div class="swiper-container swiper-container-board">
        <!-- Additional required wrapper -->
        <div class="swiper-wrapper">
          <!-- Slides -->
          <div class="swiper-slide sd1">
            <span>로또몬 1 로또몬 1</span>
            <a href="/membership.do">멤버십가입Go</a>
            <!-- <img src="./img/swiper-img-btn.png"> -->
          </div>
          <div class="swiper-slide sd1">
            <span>로또몬 2 로또몬 2</span>
            <a href="/membership.do">멤버십가입Go</a>
          </div>
          <div class="swiper-slide sd1">
            <span>로또몬 3 로또몬 3</span>
            <a href="/membership.do">멤버십가입Go</a>
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

    <%--

    사용할것
    <div class="main-2_number">
      <h6>제목텍스트베너</h6>
      <span>텍스트 텍스트 텍스트 텍스트 텍스트 텍스트</span>
      <a href="#">버튼</a>
    </div>--%>
  </div>

  <%--
  <div class="main-3">


    <div class="main-3_1box">
      <div class="main3-title">
        <h3><span>1등 당첨자</span> 이야기</h3>
        <h6><a href="/board/theFirstStory.do">더보기<img src="./img/arrow.png"></a></h6>
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



    <div class="main-4box-2">
      <h3><span>역대 1등</span> 당첨</h3>
      <ul>
        <li>${selectOrderingNo1[0].drwNo}회차 (${selectOrderingNo1[0].placeNo1_cnt}명)<span><img src="./img/money.png"><fmt:formatNumber value="${selectOrderingNo1[0].placeNo1_price}" pattern="#,###" />원</span></li>
        <li>${selectOrderingNo1[1].drwNo}회차 (${selectOrderingNo1[1].placeNo1_cnt}명)<span><img src="./img/money.png"><fmt:formatNumber value="${selectOrderingNo1[1].placeNo1_price}" pattern="#,###" />원</span></li>
        <li>${selectOrderingNo1[2].drwNo}회차 (${selectOrderingNo1[2].placeNo1_cnt}명)<span><img src="./img/money.png"><fmt:formatNumber value="${selectOrderingNo1[2].placeNo1_price}" pattern="#,###" />원</span></li>
        <li>${selectOrderingNo1[3].drwNo}회차 (${selectOrderingNo1[3].placeNo1_cnt}명)<span><img src="./img/money.png"><fmt:formatNumber value="${selectOrderingNo1[3].placeNo1_price}" pattern="#,###" />원</span></li>
        <li>${selectOrderingNo1[4].drwNo}회차 (${selectOrderingNo1[4].placeNo1_cnt}명)<span><img src="./img/money.png"><fmt:formatNumber value="${selectOrderingNo1[4].placeNo1_price}" pattern="#,###" />원</span></li>
      </ul>
    </div>
  </div>
  --%>

  <%--<div class="main-4 wrap">
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
      <ul>
        <li>${selectOrderingNo1[0].drwNo}회차 (${selectOrderingNo1[0].placeNo1_cnt}명)<span><img src="./img/money.png"><fmt:formatNumber value="${selectOrderingNo1[0].placeNo1_price}" pattern="#,###" />원</span></li>
        <li>${selectOrderingNo1[1].drwNo}회차 (${selectOrderingNo1[1].placeNo1_cnt}명)<span><img src="./img/money.png"><fmt:formatNumber value="${selectOrderingNo1[1].placeNo1_price}" pattern="#,###" />원</span></li>
        <li>${selectOrderingNo1[2].drwNo}회차 (${selectOrderingNo1[2].placeNo1_cnt}명)<span><img src="./img/money.png"><fmt:formatNumber value="${selectOrderingNo1[2].placeNo1_price}" pattern="#,###" />원</span></li>
        <li>${selectOrderingNo1[3].drwNo}회차 (${selectOrderingNo1[3].placeNo1_cnt}명)<span><img src="./img/money.png"><fmt:formatNumber value="${selectOrderingNo1[3].placeNo1_price}" pattern="#,###" />원</span></li>
        <li>${selectOrderingNo1[4].drwNo}회차 (${selectOrderingNo1[4].placeNo1_cnt}명)<span><img src="./img/money.png"><fmt:formatNumber value="${selectOrderingNo1[4].placeNo1_price}" pattern="#,###" />원</span></li>
      </ul>
    </div>
  </div>--%>
  <div class="main-5">
    <div class="main-5box_1 main-5box">
      <h3><span>당첨 기원 </span>게시판</h3>
      <h6><a href="/board/winPrayer.do">더보기<img src="./img/arrow.png"></a></h6>
      <ol>
        <li><a href="#"><span>1 </span> ${board_winhope[0].title}</a></li>
        <li><a href="#"><span>2 </span> ${board_winhope[1].title}</a></li>
        <li><a href="#"><span>3 </span> ${board_winhope[2].title}</a></li>
        <li><a href="#"><span>4 </span> ${board_winhope[3].title}</a></li>
        <li><a href="#"><span>5 </span> ${board_winhope[4].title}</a></li>
      </ol>
    </div>
    <div class="main-5box_2 main-5box">
      <h3><span>자유 </span>게시판</h3>
      <h6><a href="/board/bulletin.do">더보기<img src="./img/arrow.png"></a></h6>
      <ol>
        <li><a href="#"><span>1 </span> ${board_free[0].title}</a></li>
        <li><a href="#"><span>2 </span> ${board_free[1].title}</a></li>
        <li><a href="#"><span>3 </span> ${board_free[2].title}</a></li>
        <li><a href="#"><span>4 </span> ${board_free[3].title}</a></li>
        <li><a href="#"><span>5 </span> ${board_free[4].title}</a></li>
      </ol>
    </div>
    <div class="main-4box-2">
      <h3><span>역대 1등</span> 당첨</h3>
      <ul>
        <li>${selectOrderingNo1[0].drwNo}회차 (${selectOrderingNo1[0].placeNo1_cnt}명)<span><img src="./img/money.png"><fmt:formatNumber value="${selectOrderingNo1[0].placeNo1_price}" pattern="#,###" />원</span></li>
        <li>${selectOrderingNo1[1].drwNo}회차 (${selectOrderingNo1[1].placeNo1_cnt}명)<span><img src="./img/money.png"><fmt:formatNumber value="${selectOrderingNo1[1].placeNo1_price}" pattern="#,###" />원</span></li>
        <li>${selectOrderingNo1[2].drwNo}회차 (${selectOrderingNo1[2].placeNo1_cnt}명)<span><img src="./img/money.png"><fmt:formatNumber value="${selectOrderingNo1[2].placeNo1_price}" pattern="#,###" />원</span></li>
        <li>${selectOrderingNo1[3].drwNo}회차 (${selectOrderingNo1[3].placeNo1_cnt}명)<span><img src="./img/money.png"><fmt:formatNumber value="${selectOrderingNo1[3].placeNo1_price}" pattern="#,###" />원</span></li>
        <li>${selectOrderingNo1[4].drwNo}회차 (${selectOrderingNo1[4].placeNo1_cnt}명)<span><img src="./img/money.png"><fmt:formatNumber value="${selectOrderingNo1[4].placeNo1_price}" pattern="#,###" />원</span></li>
      </ul>
    </div>

    <%--<div>
      <div class="swiper-container swiper-container-board">
        <!-- Additional required wrapper -->
        <div class="swiper-wrapper">
          <!-- Slides -->
          <div class="swiper-slide sd1">
            <span>로또몬 1 로또몬 1</span>
            <a href="/membership.do">멤버십가입Go</a>
            <!-- <img src="./img/swiper-img-btn.png"> -->
          </div>
          <div class="swiper-slide sd1">
            <span>로또몬 2 로또몬 2</span>
            <a href="/membership.do">멤버십가입Go</a>
          </div>
          <div class="swiper-slide sd1">
            <span>로또몬 3 로또몬 3</span>
            <a href="/membership.do">멤버십가입Go</a>
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
    </div>--%>
  </div>
  <div class="main-6">
    <div class="coll"><a href="#none" style="cursor: default"><img src="/img/coll_img.jpg"></a></div>
    <div class="bank"><a href="#none" style="cursor: default"><img src="/img/bank_img.jpg"></a></div>
    <div class="main-6box">
      <h3>로또몬<span> 토론실</span></h3>
      <h6><a href="/board/debateRoom.do">더보기<img src="/img/arrow.png"></a></h6>
      <ol>
        <li><a href="#"><span>1 </span> ${board_debate[0].title}</a></li>
        <li><a href="#"><span>2 </span> ${board_debate[1].title}</a></li>
        <li><a href="#"><span>3 </span> ${board_debate[2].title}</a></li>
        <li><a href="#"><span>4 </span> ${board_debate[3].title}</a></li>
        <li><a href="#"><span>5 </span> ${board_debate[4].title}</a></li>
      </ol>
    </div>
  </div>
</article>


</section>
<!-- </section> -->
<%@include file="./include/footer.jsp"%>


<script>
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
            location.href="/main.do";
          }else if(message == '"NOT_MATCHE"'){
            alert('아이디 혹은 비밀번호가 일치하지 않습니다.');
          }else if(message == '"LEAVE"'){
            alert('회원탈퇴된 계정입니다.');
          }else if(message == '"DORMANT"'){
            if(confirm('휴면처리된 계정입니다.\n본인인증을 하시면 휴면상태가 해제됩니다.. \n이동하시겠습니까?')){
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


    function logout() {
      $.ajax({
        type: 'GET',
        url: '/auth/logout.do',
        success: function (data) {
          alert("정상적으로 로그아웃 되었습니다.");
          location.href="/main.do";
        },
        error: function (request, status, error) {
          alert("알 수 없는 이유로 실패하였습니다. " + error + "\n" + status + "\n" + request);

        },
        contentType: "application/json",
        dataType: 'text'
      });
    }

</script>




<script type="text/javascript">
</script>
</body>
