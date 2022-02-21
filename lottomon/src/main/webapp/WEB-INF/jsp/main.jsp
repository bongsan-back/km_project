<%@ page import="com.company.lottomon.model.LottoData" %>
<%@ page import="java.util.List" %>
<%@ page import="org.aspectj.org.eclipse.jdt.internal.eval.IRequestor" %>
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

<%--<link rel="stylesheet" href="/css/swiper-min.css" />
<script src="/js/swiper.min.js"></script>
  <link rel="stylesheet" type="text/css" href="/css/layout.css" />
  <link rel="stylesheet" type="text/css" href="/css/font.css" />
  <link rel="stylesheet" type="text/css" href="/css/common.css" />
<link rel="stylesheet" type="text/css" href="/css/header.css" />
<link rel="stylesheet" type="text/css" href="/css/footer.css" />
<link rel="stylesheet" type="text/css" href="/css/style.css" />--%>


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

/*자동로그인 임시 제거*/
#checkbox {
  position: absolute;
  width: 1px;
  height: 1px;
  padding: 0;
  margin: -1px;
  overflow: hidden;
  clip:rect(0,0,0,0);
  border: 0;
  color: #fff;
}

.main-2table .placeTable tr:nth-child(odd){background-color: #f5f6f7}
.main-2table .placeTable tr:nth-child(2) td:nth-child(1){color: #ee1916 !important;}
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
  <%@include file="./include/headerRenew.jsp"%>
  <script>
    var popup_right = '';

    function q_insert() {
      var q_name = $('#q_name').val();
      var q_hp = $('#q_hp').val();

      if($.trim(q_name) == '') {
        alert('이름을 입력해주세요.');
        return false;
      }

      if($.trim(q_hp) == '') {
        alert('핸드폰 번호를 입력해주세요.');
        return false;
      }

      if(confirm('신청하시겠습니까?')) {
        $.ajax({
          type: "POST",
          url: "num_insert_proc.php",
          data: $('#q_form').serialize(),
          cache: false,
          async: false,
          success :function(data) {
            console.log(data);
          }
        });
      }
    }

  </script>       <!-------end:공통:헤더-------->


  <!--레이어팝업-->
  <style>
    .popup-style{
      position: absolute;
      text-align: center;
      border: 1px solid #000;
      box-sizing: border-box;
      left: 50%;
      top: 50%;
      transform: translate(-50%,-50%);
      z-index: 9;
    }
    .popup-style.popup-style2{left: 85%;top: 50%; z-index: 10;  }
    .popup-style.popup-style2 .popup_img{width: 450px;}
    .popup-style .popup_img{width: 700px;}

    @media screen and (max-width:600px){
      .popup-style .popup_img{width: 350px;}
      .popup-style.popup-style2 .popup_img{width: 300px;}
      .popup-style.popup-style2{left: 50%;top: 50%;}
    }
  </style>

  <script language="JavaScript">
    function setCookie( name, value, expiredays ) {
      var todayDate = new Date();
      todayDate.setDate( todayDate.getDate() + expiredays );
      document.cookie = name + "=" + escape( value ) + "; path=/; expires=" + todayDate.toGMTString() + ";"
    }

    function closePop() {
      if ( document.pop_form.chkbox.checked ){
        setCookie( "maindiv", "done" , 1 );
      }
      document.all['popup_01'].style.visibility = "hidden";
    }
    function closePop2() {
      if ( document.pop_form2.chkbox2.checked ){
        setCookie( "maindiv2", "done" , 1 );
      }
      document.all['popup_02'].style.visibility = "hidden";
    }

  </script>


  <!--<div id="popup_02" class="popup-style popup-style2" style="visibility: visible;">
      <div class="popup_img" style="">
          <img style="width: 100%;" src="/renew/img/popup_210915.jpg" alt="추석팝업">
      </div>
      <div class="" style="background: #000;">
          <form name="pop_form2" style="display: flex;justify-content: center;">
              <div id="check2"><label for="chk_none"><input id="chk_none" type="checkbox" name="chkbox2" value="checkbox" style="margin-right:5px;">오늘 하루동안 보지 않기</label></div>
              <a href="javascript:closePop2();"><b>[닫기]</b></a>
          </form>
      </div>
  </div>-->


  <div id="popup_01" class="popup-style" style="visibility: hidden;">
    <div class="popup_img">
      <img style="width: 100%;" src="/renew/img/popup-win-969.gif?1" alt="969회차당첨팝업">
    </div>
    <div class="" style="background: #000;">
      <form name="pop_form" style="display: flex;justify-content: center;">
        <div id="check"><label for="chk_none" style="margin-bottom:0 !important"><input id="chk_none" type="checkbox" name="chkbox" value="checkbox" style="margin-right:5px;">오늘 하루동안 보지 않기</label></div>
        <a href="javascript:closePop();"><b>[닫기]</b></a>
      </form>
    </div>
  </div>

  <script language="Javascript">

    cookiedata = document.cookie;
    if ( cookiedata.indexOf("maindiv=done") < 0 ){
      document.all['popup_01'].style.visibility = "visible";
    }
    else {
      document.all['popup_01'].style.visibility = "hidden";
    }

  </script>

  <script language="Javascript">

    cookiedata = document.cookie;
    if ( cookiedata.indexOf("maindiv2=done") < 0 ){
      document.all['popup_02'].style.visibility = "visible";
    }
    else {
      document.all['popup_02'].style.visibility = "hidden";
    }

  </script>
  <!--end:레이어팝업-->




  <!--메인페이지-->
  <div role="main" class="main">

    <div class="z-index-1 appear-animation animated fadeInDownShorter appear-animation-visible" data-appear-animation="fadeInDownShorter" data-appear-animation-delay="500" style="animation-delay: 500ms;">
      <div class="owl-carousel owl-theme full-width owl-loaded owl-drag owl-carousel-init m-0 mb-0" data-plugin-options="{'items': 1, 'loop': true, 'nav': true, 'dots': false, 'autoplay': true, 'autoplayTimeout': 9000}" style="height: auto;">


        <div class="owl-stage-outer">
          <div class="owl-stage" style="transform: translate3d(-2908px, 0px, 0px); transition: all 0.25s ease 0s; width: 8724px;"><div class="owl-item cloned" style="width: 1454px;">
            <div class="main_bg" style="background-image: url(/renew/img/section1_img1.jpg)"></div>
            <div class="main_txt_box">
              <div class="txt_anime txt_sub">등급별 VIP서비스 혜택</div>
              <div class="txt_anime txt_title">로또1등 당첨자가 직접 분석합니다.</div>
              <div class="txt_p">
                등급별 분석필터링을 통해 최적의 조합수 발송,<br>
                로또 핵심자료 게시판을 이용할 수 있는 서비스를 제공합니다.
              </div>
              <a href="goods01.php" class="btn_new1 btn-red rounded-0 mb-2">상품안내 확인하기</a>
            </div>
          </div>
            <div class="owl-item cloned" style="width: 1454px;">
            <div class="main_bg" style="background-image: url(/renew/img/section1_img2.jpg)"></div>
            <div class="main_txt_box">
              <div class="txt_anime txt_sub">타겟 파워분석시스템 도입!</div>
              <div class="txt_anime txt_title">로또몬 당첨분석법 공개!</div>
              <div class="txt_p">
                통계분석,필터분석,데이터마이닝등 정확한 타겟을 분석을통해<br>
                1등당첨 예상번호를 무료로 알려드립니다.
              </div>
              <a href="goods01.php" class="btn_new1 btn-red rounded-0 mb-2">상품안내 확인하기</a>

            </div>
          </div>
          </div>
        </div>
        <div class="owl-nav">
          <button type="button" role="presentation" class="owl-prev"></button>
          <button type="button" role="presentation" class="owl-next"></button>
        </div>
        <div class="owl-dots disabled"></div>
        <div class="owl-nav"><button type="button" role="presentation" class="owl-prev"></button><button type="button" role="presentation" class="owl-next"></button></div><div class="owl-dots disabled"></div></div>
    </div>

    <section class="parallax section section-height-3 section-parallax m-0" data-plugin-parallax="" data-plugin-options="{'speed': 1.5}" data-image-src="/renew/img/section_bg2.jpg" style="position: relative; overflow: hidden;"><div class="parallax-background" style="background-image: url(/renew/img/section_bg2.jpg&quot;); background-size: cover; position: absolute; top: 0px; left: 0px; width: 100%; height: 180%; transform: translate3d(0px, -262.857px, 0px); background-position-x: 50%;"></div>
      <div class="container">

        <!--고액당첨영수증-->
        <div class="row align-items-center">
          <div class="m-txt-center col-lg-5 mb-5 mb-lg-0 appear-animation animated fadeInRightShorter appear-animation-visible" data-appear-animation="fadeInRightShorter" style="animation-delay: 100ms;">
            <p class="text-color-light text-4 line-height-1 mb-2">동행복권 현황</p>
            <h4 class="line-height-3 text-12 font-weight-extra-bold text-color-primary">명예의전당</h4>
            <p class="text-color-light lead pb-2 mb-4 text-4">프리미엄 로또 브랜드 로또몬의
              실제 당첨내역,<br>
              고액당첨배출,15단계필터링,실제 당첨후기</p>
            <a href="report01.php" class="btn btn-primary font-weight-light text-1 px-4 btn-py-2 text-4">당첨내역 더보기</a>
          </div>
          <div class="col-lg-7">
            <img style="width:100% " onerror="this.src='img/winner_565_1.jpg?1'" src="/renew/img/winner_565_1.jpg?1" alt="명예의전당 영수증">
            <!--<img style="width:100% " src="/renew/img/win1_img1.jpg" alt="명예의전당 영수증">-->
            <!--여기-->
          </div>
        </div>
        <!--end:고액당첨영수증-->

        <!--5등~3등당첨영수증-->
        <div class="row mt-3">
          <div class="col">

            <div class="lightbox">
              <div class="owl-carousel owl-theme stage-margin owl-loaded owl-drag owl-carousel-init" data-plugin-options="{'items': 4, 'margin': 10, 'loop': false, 'nav': true, 'dots': false, 'stagePadding': 40, 'autoplay': true, 'autoplayTimeout': 3000}" style="height: auto;">
                <div class="owl-stage-outer"><div class="owl-stage" style="transform: translate3d(-1560px, 0px, 0px); transition: all 0.25s ease 0s; width: 2680px; padding-left: 40px; padding-right: 40px;"><div class="owl-item" style="width: 250px; margin-right: 10px;"><div style="cursor:pointer">
                  <a class="img-thumbnail img-thumbnail-no-borders">
                    <img class="fixed-height" src="https://mansour-lotto.com/n_board/win_img/1634779606.jpg" alt="Project Image" onclick="location.href='report01-view.php?sq=49'">
                  </a>
                </div></div><div class="owl-item" style="width: 250px; margin-right: 10px;"><div style="cursor:pointer">
                  <a class="img-thumbnail img-thumbnail-no-borders">
                    <img class="fixed-height" src="https://mansour-lotto.com/n_board/win_img/1634300549.jpg" alt="Project Image" onclick="location.href='report01-view.php?sq=48'">
                  </a>
                </div></div><div class="owl-item" style="width: 250px; margin-right: 10px;"><div style="cursor:pointer">
                  <a class="img-thumbnail img-thumbnail-no-borders">
                    <img class="fixed-height" src="https://mansour-lotto.com/n_board/win_img/1634300498.jpg" alt="Project Image" onclick="location.href='report01-view.php?sq=47'">
                  </a>
                </div></div><div class="owl-item" style="width: 250px; margin-right: 10px;"><div style="cursor:pointer">
                  <a class="img-thumbnail img-thumbnail-no-borders">
                    <img class="fixed-height" src="https://mansour-lotto.com/n_board/win_img/1634300432.jpg" alt="Project Image" onclick="location.href='report01-view.php?sq=46'">
                  </a>
                </div></div><div class="owl-item" style="width: 250px; margin-right: 10px;"><div style="cursor:pointer">
                  <a class="img-thumbnail img-thumbnail-no-borders">
                    <img class="fixed-height" src="https://mansour-lotto.com/n_board/win_img/1630553081.jpg" alt="Project Image" onclick="location.href='report01-view.php?sq=45'">
                  </a>
                </div></div><div class="owl-item" style="width: 250px; margin-right: 10px;"><div style="cursor:pointer">
                  <a class="img-thumbnail img-thumbnail-no-borders">
                    <img class="fixed-height" src="https://mansour-lotto.com/n_board/win_img/1624951624.jpg" alt="Project Image" onclick="location.href='report01-view.php?sq=44'">
                  </a>
                </div></div><div class="owl-item active" style="width: 250px; margin-right: 10px;"><div style="cursor:pointer">
                  <a class="img-thumbnail img-thumbnail-no-borders">
                    <img class="fixed-height" src="https://mansour-lotto.com/n_board/win_img/1624951552.jpg" alt="Project Image" onclick="location.href='report01-view.php?sq=43'">
                  </a>
                </div></div><div class="owl-item active" style="width: 250px; margin-right: 10px;"><div style="cursor:pointer">
                  <a class="img-thumbnail img-thumbnail-no-borders">
                    <img class="fixed-height" src="https://mansour-lotto.com/n_board/win_img/1620875166.jpg" alt="Project Image" onclick="location.href='report01-view.php?sq=42'">
                  </a>
                </div></div><div class="owl-item active" style="width: 250px; margin-right: 10px;"><div style="cursor:pointer">
                  <a class="img-thumbnail img-thumbnail-no-borders">
                    <img class="fixed-height" src="https://mansour-lotto.com/n_board/win_img/1620875154.jpg" alt="Project Image" onclick="location.href='report01-view.php?sq=41'">
                  </a>
                </div></div><div class="owl-item active" style="width: 250px; margin-right: 10px;"><div style="cursor:pointer">
                  <a class="img-thumbnail img-thumbnail-no-borders">
                    <img class="fixed-height" src="https://mansour-lotto.com/n_board/win_img/1620027662.jpg" alt="Project Image" onclick="location.href='report01-view.php?sq=40'">
                  </a>
                </div></div></div></div><div class="owl-nav"><button type="button" role="presentation" class="owl-prev"></button><button type="button" role="presentation" class="owl-next disabled"></button></div><div class="owl-dots disabled"></div></div>
            </div>
          </div>

        </div>
        <!--end:5등~3등당첨영수증-->

      </div>
    </section>


    <div class="container py-4 my-5" style="">
      <div class="row justify-content-center text-center mb-4 appear-animation animated" data-appear-animation="fadeInUpShorter" data-appear-animation-delay="400">
        <div class="col-lg-8">
          <div class="txt_type2">로또1등번호 예측 시스템</div>
          <div class="txt_type1 m-b-70 text-color-dark">인공지능 예측시스템으로<br>인생역전 로또1등번호 예측!</div>
        </div>
      </div>
      <div class="row featured-boxes featured-boxes-style-4">
        <div class="col-md-12 col-lg-6">
          <div class="li_box bg-navy" style="background-image: url(/renew/img/section2_img1.png)">
            <a href="company02.php">
              <p>
                통계학적<br>
                수학확률<br>
                <i class="fas fa-long-arrow-alt-right"></i>
              </p>
            </a>
          </div>
        </div>

        <div class="col-md-12 col-lg-6">
          <div class="li_box bg-primary" style="background-image: url(/renew/img/section2_img2.png)">
            <a href="company01.php">
              <p>
                인공지능<br>
                예측시스템<br>
                <i class="fas fa-long-arrow-alt-right"></i>
              </p>
            </a>
          </div>
        </div>

        <div class="col-md-12 col-lg-6">
          <div class="li_box bg-primary" style="background-image: url(/renew/img/section2_img3.png)">
            <a href="company01.php">
              <p>
                핵심필터링<br>
                기법<br>
                <i class="fas fa-long-arrow-alt-right"></i>
              </p>
            </a>
          </div>
        </div>

        <div class="col-md-12 col-lg-6">
          <div class="li_box bg-navy" style="background-image: url(/renew/img/section2_img4.png)">
            <a href="company01.php">
              <p>
                소수3배수<br>
                합성수 필터<br>
                <i class="fas fa-long-arrow-alt-right"></i>
              </p>
            </a>
          </div>
        </div>
      </div>
    </div>


    <div class="container py-4 my-5" style="">
      <div class="row justify-content-center text-center mb-4 appear-animation animated" data-appear-animation="fadeInUpShorter" data-appear-animation-delay="400">
        <div class="col-lg-8">
          <div class="txt_type1 text-color-dark">${lottoData3Week[0].drwNo}회차 당첨번호 분석시스템</div>
          <div class="txt_type3 m-b-40 text-color-dark">수학적 확률계산을통해 1등번호를 분석하는 분석필터링 시스템</div>
        </div>
      </div>
      <div class="row featured-boxes featured-boxes-style-4">
        <div class="col-md-12 col-lg-12">
          <div class="li_box_2">
            <div class="li_box_top text-center text-color-light">동행복권 발표 - 제${lottoData3Week[0].drwNo}회차</div>
            <div class="lotto_num py-3">
              <div class="ball_num" id="drw1_1">${lottoData3Week[0].drwtNo1}</div>
              <div class="ball_num" id="drw1_2">${lottoData3Week[0].drwtNo2}</div>
              <div class="ball_num" id="drw1_3">${lottoData3Week[0].drwtNo3}</div>
              <div class="ball_num" id="drw1_4">${lottoData3Week[0].drwtNo4}</div>
              <div class="ball_num" id="drw1_5">${lottoData3Week[0].drwtNo5}</div>
              <div class="ball_num" id="drw1_6">${lottoData3Week[0].drwtNo6}</div>
              <div class="ball_num" style="color: #000;font-size: 22px;">+</div>
              <div class="ball_num" id="drw1_7">${lottoData3Week[0].bnusNo}</div>
            </div>
          </div>
        </div>

        <div class="col-md-12 col-lg-6 mt-3">
          <div class="table_box">
            <table class="table_type1">
              <thead>
              <tr class="thead1">
                <td colspan="3" class="text-color-light">당첨번호 분석</td>
              </tr>
              <tr class="thead2">
                <td>분석방법</td>
                <td>결과</td>
                <td>출현확률</td>
              </tr>
              </thead>
              <tbody>
              <tr>
                <td>합계</td>
                <td>번대</td>
                <td>11.43%</td>
              </tr>
              <tr>
                <td>홀/짝</td>
                <td>1:5</td>
                <td>7.3%</td>
              </tr>
              <tr>
                <td>고/저</td>
                <td>2:4</td>
                <td>22.72%</td>
              </tr>
              <tr>
                <td>끝수분포</td>
                <td>2, 8, 9, 2, 2, 2</td>
                <td>0.019%</td>
              </tr>
              <tr>
                <td colspan="3" class="text-color-primary">출현확률 총계: 41.469%</td>
              </tr>
              </tbody>
            </table>
          </div>
        </div>

        <div class="col-md-12 col-lg-6 mt-3">
          <div class="table_box">
            <table class="table_type1">
              <thead>
              <tr class="thead1">
                <td colspan="7" class="text-color-light">당첨번호 색상분석</td>
              </tr>
              <tr class="thead2">
                <td>회차</td>
                <td colspan="6">당첨번호색상</td>
              </tr>
              </thead>
              <tbody>
              <c:forEach items="${lottoData3Week}" var="weekList" varStatus="status">
                <tr>
                  <td>${weekList.drwNo}회</td>
                  <td id="drw${status.count+1}_1">${weekList.drwtNo1}</td>
                  <td id="drw${status.count+1}_2">${weekList.drwtNo2}</td>
                  <td id="drw${status.count+1}_3">${weekList.drwtNo3}</td>
                  <td id="drw${status.count+1}_4">${weekList.drwtNo4}</td>
                  <td id="drw${status.count+1}_5">${weekList.drwtNo5}</td>
                  <td id="drw${status.count+1}_6">${weekList.drwtNo6}</td>
                </tr>
              </c:forEach>
              </tbody>
            </table>
          </div>
        </div>


      </div>
    </div>




    <section class="bg_type1 section-height-3 section-no-border section-center mb-0" style="background-image: url(/renew/img/section5_bg.jpg);">
      <div class="container">
        <div class="row justify-content-center text-center mb-4 appear-animation animated" data-appear-animation="fadeInUpShorter" data-appear-animation-delay="400">
          <div class="col-lg-8">
            <div class="txt_type1 text-color-light">실제로또1등<br><strong>당첨자의 당첨비법!</strong></div>
            <div class="txt_type3 m-b-40 text-color-light">수학적 확률계산을통해 1등번호를 분석하는 분석필터링 시스템</div>
          </div>
        </div>
        <div class="row featured-boxes featured-boxes-style-4">
          <div class="col-md-12 col-lg-12 text-center">
            <ul class="icon_li1 p-0">
              <li><img src="/renew/img/section5_img1.png" alt="">
                <p class="text-color-light text-center mt-2 text-4">1등당첨 비법</p>
              </li>
              <li><img src="/renew/img/section5_img2.png" alt="">
                <p class="text-color-light text-center mt-2 text-4">생생한 당첨후기</p>
              </li>
              <li><img src="/renew/img/section5_img3.png" alt="">
                <p class="text-color-light text-center mt-2 text-4">당첨자 인터뷰</p>
              </li>
            </ul>
            <a class="btn-outline-light mt-3" href="https://www.youtube.com/channel/UC4FcZUxwwBj0RsVbtVay3Bg/featured" target="_blank">1등당첨 노하우보기</a>
          </div>
        </div>
      </div>
    </section>




    <div class="container py-4 my-5" style="">
      <div class="row justify-content-center text-center mb-4 appear-animation animated" data-appear-animation="fadeInUpShorter" data-appear-animation-delay="400">
        <div class="col-lg-8">
          <div class="txt_type1 text-color-dark">ANALYSIS SYSTEM RATING GUIDE</div>
          <div class="txt_type3 m-b-70 text-color-dark">분석시스템 상품안내</div>
        </div>
      </div>
      <div class="row featured-boxes featured-boxes-style-4">
        <div class="col-md-12 col-lg-12">
          <div class="pricing-table pricing-table-no-gap mb-4">
            <div class="col-md-4 mb-4">
              <div class="plan">
                <div class="plan-header">
                  <h3 class="text-4">다이아 (12개월)</h3>
                </div>
                <div class="plan-price py-3">

                  <div class="rank-img"><img src="/renew/img/goods_03.jpg" alt=""></div>

                  <span class="price mt-2 mb-2">599,000원</span>
                </div>
                <div class="plan-features">
                  <ul>
                    <li class="text-color-primary">VVIP자료 + 게시판 열람가능</li>
                    <li class="text-color-primary">AI필터링 15단계 적용</li>
                    <li>패턴 매칭 4X4 적용</li>
                    <li>조합 및 당첨 결과 문자발송</li>
                    <li>조합수 : 20조합</li>
                  </ul>
                </div>
                <div class="plan-footer">
                  <a href="#none" class="btn btn-dark btn-modern btn-outline py-2 px-4 text-3" onclick="javascript:pay('15');">구매하기</a>

                </div>
              </div>
            </div>
            <div class="col-md-4">
              <div class="plan plan-featured">
                <div class="plan-header bg-primary">
                  <h3 class="text-4">브론즈 (1개월)</h3>
                </div>

                <div class="plan-price py-3">

                  <div class="rank-img"><img src="/renew/img/goods_bronze.jpg" alt=""></div>

                  <span class="price mt-2 mb-2">39,900원</span>
                </div>
                <div class="plan-features">
                  <ul>
                    <li class="text-color-primary">비공개자동게시판 열람가능</li>
                    <li class="text-color-primary">AI필터링 8단계 적용</li>
                    <li>패턴 매칭 3X3 적용</li>
                    <li>조합 및 당첨 결과 문자발송</li>
                    <li>조합수 : 20조합</li>
                  </ul>
                </div>
                <div class="plan-footer">
                  <a href="#none" class="btn btn-primary btn-modern py-2 px-4 text-3" onclick="javascript:pay('12');">구매하기</a>
                </div>
              </div>
            </div>

            <div class="col-md-4 mb-4">
              <div class="plan">
                <div class="plan-header">
                  <h3 class="text-4">마스터 (24개월)</h3>
                </div>
                <div class="plan-price py-3">

                  <div class="rank-img"><img src="/renew/img/goods_04.jpg" alt=""></div>

                  <span class="price mt-2 mb-2">999,000원</span>
                </div>
                <div class="plan-features">
                  <ul>
                    <li class="text-color-primary">VVIP자료 + 게시판 열람가능</li>
                    <li class="text-color-primary">AI필터링 15단계 적용</li>
                    <li>패턴 매칭 4X4 적용</li>
                    <li>조합 및 당첨 결과 문자발송</li>
                    <li>조합수 : 20조합</li>
                  </ul>
                </div>
                <div class="plan-footer">
                  <a href="#none" class="btn btn-dark btn-modern btn-outline py-2 px-4 text-3" onclick="javascript:pay('16');">구매하기</a>
                </div>
              </div>
            </div>
          </div>



          <div class="pricing-table pricing-table-gap mb-4 mt-5 justify-content-center">
            <div class="col-md-4 mb-4">
              <div class="plan">
                <div class="plan-header">
                  <h3 class="text-4">골드 (6개월)</h3>
                </div>
                <div class="plan-price py-3">

                  <div class="rank-img"><img src="/renew/img/goods_02.jpg" alt=""></div>

                  <span class="price mt-2 mb-2">399,000원</span>
                </div>
                <div class="plan-features">
                  <ul>
                    <li class="text-color-primary">VVIP자료 + 게시판 열람가능</li>
                    <li class="text-color-primary">AI필터링 12단계 적용</li>
                    <li>패턴 매칭 3X3 적용</li>
                    <li>조합 및 당첨 결과 문자발송</li>
                    <li>조합수 : 20조합</li>
                  </ul>
                </div>
                <div class="plan-footer">
                  <a href="#none" class="btn btn-dark btn-modern btn-outline py-2 px-4 text-3" onclick="javascript:pay('14');">구매하기</a>
                </div>
              </div>
            </div>

            <!--<div class="col-md-4">
                <div class="plan plan-featured">
                    <div class="plan-header bg-primary">
                        <h3 class="text-4">프리미엄 (24개월+12개월)</h3>
                    </div>

                    <div class="plan-price py-3">

                    <div class="rank-img"><img src="/renew/img/goods_05.jpg" alt=""></div>

                        <span class="price mt-2 mb-2">1,599,000원</span>
                    </div>
                    <div class="plan-features">
                        <ul>
                            <li class="text-color-primary">VVIP자료 + 게시판 열람가능</li>
                            <li class="text-color-primary">AI필터링 15단계 적용</li>
                            <li>패턴 매칭 4X4 적용</li>
                            <li>조합 및 당첨 결과 문자발송</li>
                            <li>조합수 : 20조합</li>
                        </ul>
                    </div>
                    <div class="plan-footer">
                        <a href="#none" class="btn btn-primary btn-modern py-2 px-4 text-3" onclick="javascript:pay('17');">구매하기</a>
                    </div>
                </div>
            </div>-->

            <div class="col-md-4 mb-4">
              <div class="plan">
                <div class="plan-header">
                  <h3 class="text-4">실버 (3개월)</h3>
                </div>
                <div class="plan-price py-3">

                  <div class="rank-img"><img src="/renew/img/goods_01.jpg" alt=""></div>

                  <span class="price mt-2 mb-2">299,000원</span>
                </div>
                <div class="plan-features">
                  <ul>
                    <li class="text-color-primary">VVIP자료 + 게시판 열람가능</li>
                    <li class="text-color-primary">AI필터링 12단계 적용</li>
                    <li>패턴 매칭 3X3 적용</li>
                    <li>조합 및 당첨 결과 문자발송</li>
                    <li>조합수 : 20조합</li><!--여기-->
                  </ul>
                </div>
                <div class="plan-footer">
                  <a href="#none" class="btn btn-dark btn-modern btn-outline py-2 px-4 text-3" onclick="javascript:pay('13');">구매하기</a>
                </div>
              </div>
            </div>
          </div>

        </div>
      </div>
    </div>


    <section class="parallax section section-height-3 section-parallax m-0" data-plugin-parallax="" data-plugin-options="{'speed': 1.5}" data-image-src="/renew/img/section3_bg.jpg" style="position: relative; overflow: hidden;"><div class="parallax-background" style="background-image: url(/renew/img/section3_bg.jpg&quot;); background-size: cover; position: absolute; top: 0px; left: 0px; width: 100%; height: 180%; transform: translate3d(0px, -1714.01px, 0px); background-position-x: 50%;"></div>
      <div class="container">
        <div class="row align-items-center">
          <div class="m-txt-center col-lg-7 mb-5 mb-lg-0 appear-animation animated" data-appear-animation="fadeInRightShorter">
            <p class="text-color-light text-4 line-height-1 mb-2">로또몬 분석기법</p>

            <h4 class="text-color-light font-weight-normal line-height-3 text-6"><strong class="font-weight-extra-bold text-color-primary">동행복권 1000회차</strong> 당첨번호 분석</h4>
            <p class="text-color-light lead pb-2 mb-4 text-4">만수르로또만의 빅데이터 필터링으로 사용자에게 최상의 번호조합을 제공합니다.</p>
            <a href="statistics01.php" class="btn btn-primary font-weight-light text-1 px-4 btn-py-2 text-4">통합분석보기</a>
          </div>
          <div class="col-lg-5">
            <div class="row">
              <div class="col appear-animation animated" data-appear-animation="fadeInRightShorter" data-appear-animation-delay="200">
                <div class="row counters counters-lg counters-text-red">
                  <div class="col-md-6 mb-5">
                    <div class="counter counter-with-unit counter-primary">
                      <strong class="text-12" data-to="7.3">7.3</strong>
                      <strong class="text-12">%</strong>
                      <label class="text-4">홀짝분석/홀(1):짝(5)</label>
                    </div>
                  </div>
                  <div class="col-md-6 mb-5">
                    <div class="counter counter-with-unit counter-primary">
                      <strong class="text-12" data-to="22.72">22.72</strong>
                      <strong class="text-12">%</strong>
                      <label class="text-4">저고비율/저(4):고(2)</label>
                    </div>
                  </div>
                  <div class="col-md-6 mb-5 mb-md-0">
                    <div class="counter counter-with-unit counter-primary">
                      <strong class="text-12" data-to="11.80">11.80</strong>
                      <strong class="text-12">%</strong>
                      <label class="text-4">합계/125(120번대)</label>
                    </div>
                  </div>

                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>

    <div class="container py-4 my-5" style="">
      <div class="row justify-content-center text-center mb-4 appear-animation animated" data-appear-animation="fadeInUpShorter" data-appear-animation-delay="400">
        <div class="col-lg-8">
          <div class="txt_type1 text-color-dark">로또몬 분석번호 필터링 시스템</div>
          <div class="txt_type3 m-b-70 text-color-dark">AI필터링을 통해 최적의 예상번호를 추출합니다.</div>
        </div>
      </div>
      <div class="row featured-boxes featured-boxes-style-4">
        <div class="col-md-12 col-lg-12">
          <div class="row portfolio-list sort-destination" data-sort-id="portfolio" data-filter="*" style="position: relative; height: 290px;">
            <div class="col-12 col-sm-6 col-lg-3 isotope-item websites" style="position: absolute; left: 0px; top: 0px;">
              <div class="portfolio-item">
                <a href="company01.php">
                                    <span class="thumb-info thumb-info-lighten border-radius-0">
                                        <span class="thumb-info-wrapper border-radius-0">
                                            <img src="/renew/img/section6_img1.jpg" class="img-fluid border-radius-0" alt="">
                                            <span class="thumb-info-title">
                                                <span class="thumb-info-inner">AI 파워 분석시스템</span>
                                                <span class="thumb-info-type">더보기</span>
                                            </span>
                                            <span class="thumb-info-action">
                                                <span class="thumb-info-action-icon bg-dark opacity-8"><i class="fas fa-plus"></i></span>
                                            </span>
                                        </span>
                                    </span>
                </a>
              </div>
            </div>
            <div class="col-12 col-sm-6 col-lg-3 isotope-item medias" style="position: absolute; left: 285px; top: 0px;">
              <div class="portfolio-item">
                <a href="statistics10.php">
                  <span class="thumb-info thumb-info-lighten border-radius-0">
                      <span class="thumb-info-wrapper border-radius-0">
                          <img src="/renew/img/section6_img2.jpg" class="img-fluid border-radius-0" alt="">
                          <span class="thumb-info-title">
                              <span class="thumb-info-inner">고저통계</span>
                              <span class="thumb-info-type">더보기</span>
                          </span>
                          <span class="thumb-info-action">
                              <span class="thumb-info-action-icon bg-dark opacity-8"><i class="fas fa-plus"></i></span>
                          </span>
                      </span>
                  </span>
                </a>
              </div>
            </div>
            <div class="col-12 col-sm-6 col-lg-3 isotope-item logos" style="position: absolute; left: 570px; top: 0px;">
              <div class="portfolio-item">
                <a href="statistics02.php">
                  <span class="thumb-info thumb-info-lighten border-radius-0">
                      <span class="thumb-info-wrapper border-radius-0">
                          <img src="/renew/img/section6_img3.jpg" class="img-fluid border-radius-0" alt="">
                          <span class="thumb-info-title">
                              <span class="thumb-info-inner">패턴분석</span>
                              <span class="thumb-info-type">더보기</span>
                          </span>
                          <span class="thumb-info-action">
                              <span class="thumb-info-action-icon bg-dark opacity-8"><i class="fas fa-plus"></i></span>
                          </span>
                      </span>
                  </span>
                </a>
              </div>
            </div>
            <div class="col-12 col-sm-6 col-lg-3 isotope-item brands" style="position: absolute; left: 855px; top: 0px;">
              <div class="portfolio-item">
                <a href="goods01.php">
                  <span class="thumb-info thumb-info-lighten border-radius-0">
                      <span class="thumb-info-wrapper border-radius-0">
                          <img src="/renew/img/section6_img4.jpg" class="img-fluid border-radius-0" alt="">
                          <span class="thumb-info-title">
                              <span class="thumb-info-inner">등급별 필터링</span>
                              <span class="thumb-info-type">더보기</span>
                          </span>
                          <span class="thumb-info-action">
                              <span class="thumb-info-action-icon bg-dark opacity-8"><i class="fas fa-plus"></i></span>
                          </span>
                      </span>
                  </span>
                </a>
              </div>
            </div>
          </div>


        </div>
      </div>
    </div>





    <section class="section section-height-3 section-no-border section-center mb-0 appear-animation animated" data-appear-animation="fadeIn" style="background-image: url(/renew/img/section8_bg.jpg)">
      <div class="container">



        <div class="row justify-content-center">
          <div class="col-lg-10 appear-animation animated" data-appear-animation="fadeInUpShorter" data-appear-animation-delay="200">
            <div class="owl-carousel owl-theme nav-bottom rounded-nav mb-0 owl-loaded owl-drag owl-carousel-init" data-plugin-options="{'items': 1, 'autoplay': true, 'autoplayTimeout': 3000}" style="height: auto;">

              <!--<div>
                  <div class="col">
                      <div class="testimonial testimonial-style-2 testimonial-with-quotes testimonial-quotes-dark mb-0 row justify-content-center">
                          <div class="goods_img">
                              <img src="/renew/img/section8_img1.png" class="text-center" alt="">
                          </div>
                      </div>
                      <a href="goods01.php" type="button" class="btn btn_new_round btn-red mb-2 text-5 font-weight-light">상품안내/구매</a>
                  </div>
              </div>-->











              <div class="owl-stage-outer"><div class="owl-stage" style="transform: translate3d(-4600px, 0px, 0px); transition: all 0.25s ease 0s; width: 10120px;"><div class="owl-item cloned" style="width: 920px;"><div>
                <div class="col">
                  <div class="testimonial testimonial-style-2 testimonial-with-quotes testimonial-quotes-dark mb-0 row justify-content-center">
                    <div class="goods_img">
                      <img src="/renew/img/section8_img4.png" class="text-center" alt="">
                    </div>
                  </div>
                  <a href="goods01.php" type="button" class="btn btn_new_round btn-red mb-2 text-5 font-weight-light">상품안내/구매</a>
                </div>
              </div></div><div class="owl-item cloned" style="width: 920px;"><div>
                <div class="col">
                  <div class="testimonial testimonial-style-2 testimonial-with-quotes testimonial-quotes-dark mb-0 row justify-content-center">
                    <div class="goods_img">
                      <img src="/renew/img/section8_img5.png" class="text-center" alt="">
                    </div>
                  </div>
                  <a href="goods01.php" type="button" class="btn btn_new_round btn-red mb-2 text-5 font-weight-light">상품안내/구매</a>
                </div>
              </div></div><div class="owl-item cloned" style="width: 920px;"><div>
                <div class="col">
                  <div class="testimonial testimonial-style-2 testimonial-with-quotes testimonial-quotes-dark mb-0 row justify-content-center">
                    <div class="goods_img">
                      <img src="/renew/img/section8_img6.png" class="text-center" alt="">
                    </div>
                  </div>
                  <a href="goods01.php" type="button" class="btn btn_new_round btn-red mb-2 text-5 font-weight-light">상품안내/구매</a>
                </div>
              </div></div><div class="owl-item" style="width: 920px;"><div>
                <div class="col">
                  <div class="testimonial testimonial-style-2 testimonial-with-quotes testimonial-quotes-dark mb-0 row justify-content-center">
                    <div class="goods_img">
                      <img src="/renew/img/section8_img2.png" class="text-center" alt="">
                    </div>
                  </div>
                  <a href="goods01.php" type="button" class="btn btn_new_round btn-red mb-2 text-5 font-weight-light">상품안내/구매</a>
                </div>
              </div></div><div class="owl-item" style="width: 920px;"><div>
                <div class="col">
                  <div class="testimonial testimonial-style-2 testimonial-with-quotes testimonial-quotes-dark mb-0 row justify-content-center">
                    <div class="goods_img">
                      <img src="/renew/img/section8_img3.png" class="text-center" alt="">
                    </div>
                  </div>
                  <a href="goods01.php" type="button" class="btn btn_new_round btn-red mb-2 text-5 font-weight-light">상품안내/구매</a>
                </div>
              </div></div><div class="owl-item active" style="width: 920px;"><div>
                <div class="col">
                  <div class="testimonial testimonial-style-2 testimonial-with-quotes testimonial-quotes-dark mb-0 row justify-content-center">
                    <div class="goods_img">
                      <img src="/renew/img/section8_img4.png" class="text-center" alt="">
                    </div>
                  </div>
                  <a href="goods01.php" type="button" class="btn btn_new_round btn-red mb-2 text-5 font-weight-light">상품안내/구매</a>
                </div>
              </div></div><div class="owl-item" style="width: 920px;"><div>
                <div class="col">
                  <div class="testimonial testimonial-style-2 testimonial-with-quotes testimonial-quotes-dark mb-0 row justify-content-center">
                    <div class="goods_img">
                      <img src="/renew/img/section8_img5.png" class="text-center" alt="">
                    </div>
                  </div>
                  <a href="goods01.php" type="button" class="btn btn_new_round btn-red mb-2 text-5 font-weight-light">상품안내/구매</a>
                </div>
              </div></div><div class="owl-item" style="width: 920px;"><div>
                <div class="col">
                  <div class="testimonial testimonial-style-2 testimonial-with-quotes testimonial-quotes-dark mb-0 row justify-content-center">
                    <div class="goods_img">
                      <img src="/renew/img/section8_img6.png" class="text-center" alt="">
                    </div>
                  </div>
                  <a href="goods01.php" type="button" class="btn btn_new_round btn-red mb-2 text-5 font-weight-light">상품안내/구매</a>
                </div>
              </div></div><div class="owl-item cloned" style="width: 920px;"><div>
                <div class="col">
                  <div class="testimonial testimonial-style-2 testimonial-with-quotes testimonial-quotes-dark mb-0 row justify-content-center">
                    <div class="goods_img">
                      <img src="/renew/img/section8_img2.png" class="text-center" alt="">
                    </div>
                  </div>
                  <a href="goods01.php" type="button" class="btn btn_new_round btn-red mb-2 text-5 font-weight-light">상품안내/구매</a>
                </div>
              </div></div><div class="owl-item cloned" style="width: 920px;"><div>
                <div class="col">
                  <div class="testimonial testimonial-style-2 testimonial-with-quotes testimonial-quotes-dark mb-0 row justify-content-center">
                    <div class="goods_img">
                      <img src="/renew/img/section8_img3.png" class="text-center" alt="">
                    </div>
                  </div>
                  <a href="goods01.php" type="button" class="btn btn_new_round btn-red mb-2 text-5 font-weight-light">상품안내/구매</a>
                </div>
              </div></div><div class="owl-item cloned" style="width: 920px;"><div>
                <div class="col">
                  <div class="testimonial testimonial-style-2 testimonial-with-quotes testimonial-quotes-dark mb-0 row justify-content-center">
                    <div class="goods_img">
                      <img src="/renew/img/section8_img4.png" class="text-center" alt="">
                    </div>
                  </div>
                  <a href="goods01.php" type="button" class="btn btn_new_round btn-red mb-2 text-5 font-weight-light">상품안내/구매</a>
                </div>
              </div></div></div></div><div class="owl-nav disabled"><button type="button" role="presentation" class="owl-prev"></button><button type="button" role="presentation" class="owl-next"></button></div><div class="owl-dots"><button role="button" class="owl-dot"><span></span></button><button role="button" class="owl-dot"><span></span></button><button role="button" class="owl-dot active"><span></span></button><button role="button" class="owl-dot"><span></span></button><button role="button" class="owl-dot"><span></span></button></div></div>


          </div>
        </div>
      </div>
    </section>


    <!--고객센터-->
    <div class="container py-4 my-5" style="">
      <div class="row justify-content-center text-center mb-4 appear-animation animated" data-appear-animation="fadeInUpShorter" data-appear-animation-delay="400">
        <div class="col-lg-12">
          <div class="txt_type1 text-color-dark m-b-70" style="text-transform: uppercase">Bank info &amp; Service center</div>
          <div class="row">
            <div class="bank bg-primary col-md-12 col-lg-6">
              <img src="/renew/img/icon_money.png" alt="">
              <h3 class="text-color-light mt-3">무통장 입금안내</h3>
              <p><strong>예금주</strong> 차상우</p>
              <p><strong>기업은행</strong> 187-093620-01-011</p>
              <p>무통장입금은 평일 18:30분까지 확인이 가능합니다.</p>
            </div>
            <div class="bank service col-md-12 col-lg-6">
              <img src="/renew/img/icon_call.png" alt="">
              <h3 class="text-color-dark mt-3">고객센터</h3>
              <p><strong>업무시간</strong> 09:30~18:00</p>
              <p><strong>점심시간</strong> 12:30~14:00</p>
              <p><strong>휴무</strong> 주말 및 공휴일</p>
              <p class="text-color-primary">업무시간외 시간에는 1:1문의를 이용해주세요.</p>
            </div>

          </div>

        </div>
      </div>
    </div><!--end:고객센터-->
  </div><!--end:메인페이지-->



  <!------공통:푸터------>
  <%@include file="./include/footerRenew.jsp"%>
  <!------공통:스크립트------>

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
              <label for="checkbox" style="color: #fff"><input type="checkbox" id="checkbox"> 자동로그인</label>
              <ul style="position: relative;">
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
            <span>회원 등급 : ${grade_name}<br>
              <c:if test="${grade_end_dt != null}">
                등급 기간 : ${fn:substring(grade_end_dt,0,10)}
              </c:if>

            </span>
            <a href="/myUpdate.do">마이 페이지</a>
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
        <a href="/winning.do" style="background:#2e68bf;">회차별 당첨결과</a>
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

    <div style="padding: 0px;">
      <div class="swiper-container swiper-container-board">
        <!-- Additional required wrapper -->
        <div class="swiper-wrapper">
          <!-- Slides -->
          <div class="swiper-slide sd1" onclick="javascript:goMembership()">
            <!-- <img src="./img/swiper-img-btn.png"> -->
          </div>
          <div class="swiper-slide sd2" onclick="javascript:goMembership()">
          </div>
          <div class="swiper-slide sd3" onclick="javascript:goMembership()">
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
            delay: 5000,
            disableOnInteraction: false,
          },
        });

      </script>
    </div>

    &lt;%&ndash;

    사용할것
    <div class="main-2_number">
      <h6>제목텍스트베너</h6>
      <span>텍스트 텍스트 텍스트 텍스트 텍스트 텍스트</span>
      <a href="#">버튼</a>
    </div>&ndash;%&gt;
  </div>

  &lt;%&ndash;
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
  &ndash;%&gt;

  &lt;%&ndash;<div class="main-4 wrap">
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
  </div>&ndash;%&gt;
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

    &lt;%&ndash;<div>
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
    </div>&ndash;%&gt;
  </div>
  <div class="main-6">
    <div class="coll"><a href="/membership.do" style="cursor: pointer;"><img style="max-height: 260px;width: 400px;" src="./img/banner_01.jpg"></a></div>
    <div class="bank"><a href="/board/mylotto_payment.do" style="cursor: default"><img src="/img/bank_img.jpg"></a></div>
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
--%>


<script>
  $(document).ready(function(){
    drwNoAddClass();

  })

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


    function goMembership(){
      location.href = "/membership.do";
    }

/*
    function getNumberColor(num){
      var colorClass = ['yellow','blue','red','purple','green',]
      var className = 'ball_color_';

      if(num < 11){
        className += colorClass[0];
      }else if(10 < num && num < 21){
        className += colorClass[1];
      }else if(20 < num && num < 31){
        className += colorClass[2];
      }else if(30 < num && num < 41){
        className += colorClass[3];
      }else if(40 < num){
        className += colorClass[4];
      }

      return className;
    }*/
    function getNumberColor(num,div){
      var colorClass = ['yellow','blue','red','purple','green']
      var className = 'ball_color_';

      if(num < 11){
        className += colorClass[0];
      }else if(10 < num && num < 21){
        className += colorClass[1];
      }else if(20 < num && num < 31){
        className += colorClass[2];
      }else if(30 < num && num < 41){
        className += colorClass[3];
      }else if(40 < num){
        className += colorClass[4];
      }

      console.log(className);

      $(this).addClass(className);
    }




    function drwNoAddClass(){
      console.log("진입");
      for (var i = 1; i < 7; i++) {
        for(var j = 1; j < 8; j++){
          var tmpNo = $("#drw"+i+"_"+j).html();

          if(tmpNo < 11){
            $("#drw"+i+"_"+ j).addClass("ball_color_yellow");
          }else if(tmpNo > 10 && tmpNo < 21){
            $("#drw"+i+"_"+ j).addClass("ball_color_blue");
          }else if(tmpNo > 20 && tmpNo < 31){
            $("#drw"+i+"_"+ j).addClass("ball_color_red");
          }else if(tmpNo > 30 && tmpNo < 41){
            $("#drw"+i+"_"+ j).addClass("ball_color_purple");
          }else{
            $("#drw"+i+"_"+ j).addClass("ball_color_green");
          }
        }
      }
    }

</script>




<script type="text/javascript">
</script>
</body>
