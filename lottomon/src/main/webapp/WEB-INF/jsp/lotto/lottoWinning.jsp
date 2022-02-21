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

    <div class="body">
      <div role="main" class="main">


        <section class="page-header page-header-modern page-header-background page-header-background-md overlay overlay-color-dark overlay-show overlay-op-5" style="background-image: url(img/sub_title_bg.jpg);">
          <div class="container">
            <div class="row">
              <div class="col-md-8 order-2 order-md-1 align-self-center p-static">
                <h1 class="mb-3 text-9">회차별 당첨결과</h1>
                <span class="sub-title">최적의 프리미엄조합수 필터링을 통해 서비스를 제공하는 로또몬입니다.</span>
              </div>
              <div class="col-md-4 order-1 order-md-2 align-self-center">
                <ul class="breadcrumb breadcrumb-light d-block text-md-right">
                  <li><a href="https://mansour-lotto.com/report02.php#">Home</a></li>
                  <li class="active">명예의전당</li>
                  <li class="active">회차별 당첨결과</li>
                </ul>
              </div>
            </div>
          </div>
        </section>


        <div class="container py-4 my-5" style="">
          <div class="row justify-content-center text-center mb-4 appear-animation animated fadeInUpShorter appear-animation-visible" data-appear-animation="fadeInUpShorter" data-appear-animation-delay="400" style="animation-delay: 400ms;">

            <div class="col-lg-12">
              <div class="row">

                <!--회차검색-->
                <div class="col-md-12">
                  <div class="">
                    <form nema="loto_number" class="col d-flex align-items-center justify-content-center mb-4">
                      <h3 class="text-4 mr-3 mb-0">회차선택</h3>
                      <select class="selectpicker text-4 p-2 mr-1 px-4" id="drwSelect" name="drwSelect">
                        <option value="${lottoData.drwNo}">${lottoData.drwNo} 회차</option>
                      </select>
                    </form>
                  </div>
                </div>
                <!--end:회차검색-->

                <div id="drwNoTable" style="width: 100%">
                  <table class="table table-bordered">
                    <thead>
                    <tr class="bg-primary">
                      <th>순위</th>
                      <th>총 당첨금액</th>
                      <th>당첨자 수</th>
                      <th>1인당 당첨금액</th>
                      <th>당첨기준</th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                      <td class="text-color-primary">1등</td>
                      <td><fmt:formatNumber value="${lottoData.placeNo1_price * lottoData.placeNo1_cnt}" pattern="#,###" />원</td>
                      <td class="text-color-primary">${lottoData.placeNo1_cnt}명</td>
                      <td><fmt:formatNumber value="${lottoData.placeNo1_price}" pattern="#,###" />원</td>
                      <td>당첨번호 6개 숫자일치</td>
                    </tr>

                    <tr>
                      <td class="text-color-primary">2등</td>
                      <td><fmt:formatNumber value="${lottoData.placeNo2_price * lottoData.placeNo2_cnt}" pattern="#,###" />원</td>
                      <td class="text-color-primary">${lottoData.placeNo2_cnt}명</td>
                      <td><fmt:formatNumber value="${lottoData.placeNo2_price}" pattern="#,###" />원</td>
                      <td>당첨번호 5개 숫자일치<br>+ 보너스 숫자일치
                      </td>
                    </tr>
                    <tr>
                      <td class="text-color-primary">3등</td>
                      <td><fmt:formatNumber value="${lottoData.placeNo3_price * lottoData.placeNo3_cnt}" pattern="#,###" />원</td>
                      <td class="text-color-primary">${lottoData.placeNo3_cnt}명</td>
                      <td><fmt:formatNumber value="${lottoData.placeNo3_price}" pattern="#,###" />원</td>
                      <td>당첨번호 5개 숫자일치</td>
                    </tr>
                    <tr>
                      <td class="text-color-primary">4등</td>
                      <td><fmt:formatNumber value="${lottoData.placeNo4_price * lottoData.placeNo4_cnt}" pattern="#,###" />원</td>
                      <td class="text-color-primary">${lottoData.placeNo4_cnt}명</td>
                      <td><fmt:formatNumber value="${lottoData.placeNo4_price}" pattern="#,###" />원</td>
                      <td>당첨번호 4개 숫자일치</td>
                    </tr>
                    <tr>
                      <td class="text-color-primary">5등</td>
                      <td><fmt:formatNumber value="${lottoData.placeNo5_price * lottoData.placeNo5_cnt}" pattern="#,###" />원</td>
                      <td class="text-color-primary">${lottoData.placeNo5_cnt}명</td>
                      <td><fmt:formatNumber value="${lottoData.placeNo5_price}" pattern="#,###" />원</td>
                      <td>당첨번호 3개 숫자일치</td>
                    </tr>
                    </tbody>
                  </table>
                </div>

              </div>
            </div>

          </div>
        </div>


        <hr>

      </div><!--end:main-->


      <!------공통:푸터------>
      <<%@include file="../include/footerRenew.jsp"%>

      <!------공통:스크립트------>

      <!-- Vendor -->
      <script src="vendor/jquery/jquery.min.js"></script>
      <script src="vendor/jquery.appear/jquery.appear.min.js"></script>
      <script src="vendor/jquery.easing/jquery.easing.min.js"></script>
      <script src="vendor/jquery.cookie/jquery.cookie.min.js"></script>
      <script src="vendor/popper/umd/popper.min.js"></script>
      <script src="vendor/bootstrap/js/bootstrap.min.js"></script>
      <script src="vendor/common/common.min.js"></script>
      <script src="vendor/jquery.validation/jquery.validate.min.js"></script>
      <script src="vendor/jquery.easy-pie-chart/jquery.easypiechart.min.js"></script>
      <script src="vendor/jquery.gmap/jquery.gmap.min.js"></script>
      <script src="vendor/jquery.lazyload/jquery.lazyload.min.js"></script>
      <script src="vendor/isotope/jquery.isotope.min.js"></script>
      <script src="vendor/owl.carousel/owl.carousel.min.js"></script>
      <script src="vendor/magnific-popup/jquery.magnific-popup.min.js"></script>
      <script src="vendor/vide/jquery.vide.min.js"></script>
      <script src="vendor/vivus/vivus.min.js"></script>

      <!-- Theme Base, Components and Settings -->
      <script src="js/theme.js?1"></script>

      <!-- Current Page Vendor and Views -->
      <script src="vendor/rs-plugin/js/jquery.themepunch.tools.min.js"></script>
      <script src="vendor/rs-plugin/js/jquery.themepunch.revolution.min.js"></script>

      <!-- Theme Custom -->
      <script src="js/custom.js"></script>

      <!-- Theme Initialization Files -->
      <script src="js/theme.init.js"></script>

      <!--js추가_텍스트애니메이션효과-->
      <script src="js/txt/jquery.shuffleLetters.js"></script>
      <script src="js/txt/script.js"></script>

      <!--퀵메뉴-->
      <script src="js/quickmenu.js"></script>


    </div><a class="scroll-to-top hidden-mobile" href="#"><i class="fas fa-chevron-up"></i></a><!--end:bodyClass-->







  <%--
<%@include file="../include/header.jsp"%>
<section class="main">
  <%@include file="../include/quick.jsp"%>
</section>

<section id="sub">
  <div class="winning">
    <div class="wrap">
      <div class="left">
        <h2>로또당첨결과</h2>
        <div class="even">
          <a href="./winning.do" class="on">로또당첨결과</a>
        </div>
      </div>

      <div class="content">
        <div class="head">
          <h2>당첨결과</h2>
          <h5><a href="/"><img src="./img/home.jpg"> 홈 </a><a href="./winning.php"><img src="./img/arrow.png"></a> <a href="./winning_seat.php">로또당첨결과 <img src="./img/arrow.png"> 로또당첨결과</a></h5>
        </div>

        <form name="loto_number">
          <select id="drwSelect" name="drwSelect">
            <option value="${lottoData.drwNo}">${lottoData.drwNo} 회차</option>
          </select>
        </form>

        <div class="result">
          <div id="drwNoInfo">
            <h6><b>${lottoData.drwNo}회차 </b>당첨 결과</h6>
            <div class="lotto-number">
              <span id="drwNo1_span">${lottoData.drwtNo1}</span>
              <span id="drwNo2_span">${lottoData.drwtNo2}</span>
              <span id="drwNo3_span">${lottoData.drwtNo3}</span>
              <span id="drwNo4_span">${lottoData.drwtNo4}</span>
              <span id="drwNo5_span">${lottoData.drwtNo5}</span>
              <span id="drwNo6_span">${lottoData.drwtNo6}</span>
              <span class="plus">+</span>
              <span id="drwNo7_span">${lottoData.bnusNo}</span>
            </div>
          </div>
        </div>
        <div class="table" id="drwNoTable">
          <table class="top" style="border-spacing:0px";>
            <tr>
              <th>순위</th>
              <th>총 당첨금액</th>
              <th>당첨게임 수</th>
              <th>1게임당 당첨금액</th>
            </tr>
            <tr>
              <td>1</td>
              <td><fmt:formatNumber value="${lottoData.placeNo1_price * lottoData.placeNo1_cnt}" pattern="#,###" /></td>
              <td>${lottoData.placeNo1_cnt}</td>
              <td><fmt:formatNumber value="${lottoData.placeNo1_price}" pattern="#,###" /></td>
            </tr>
            <tr>
              <td>2</td>
              <td><fmt:formatNumber value="${lottoData.placeNo2_price * lottoData.placeNo2_cnt}" pattern="#,###" /></td>
              <td>${lottoData.placeNo2_cnt}</td>
              <td><fmt:formatNumber value="${lottoData.placeNo2_price}" pattern="#,###" /></td>
            </tr>
            <tr>
              <td>3</td>
              <td><fmt:formatNumber value="${lottoData.placeNo3_price * lottoData.placeNo3_cnt}" pattern="#,###" /></td>
              <td>${lottoData.placeNo3_cnt}</td>
              <td><fmt:formatNumber value="${lottoData.placeNo3_price}" pattern="#,###" /></td>
            </tr>
            <tr>
              <td>4</td>
              <td><fmt:formatNumber value="${lottoData.placeNo4_price * lottoData.placeNo4_cnt}" pattern="#,###" /></td>
              <td>${lottoData.placeNo4_cnt}</td>
              <td><fmt:formatNumber value="${lottoData.placeNo4_price}" pattern="#,###" /></td>
            </tr>
            <tr>
              <td>5</td>
              <td><fmt:formatNumber value="${lottoData.placeNo5_price * lottoData.placeNo5_cnt}" pattern="#,###" /></td>
              <td>${lottoData.placeNo5_cnt}</td>
              <td><fmt:formatNumber value="${lottoData.placeNo5_price}" pattern="#,###" /></td>
            </tr>
          </table>
      </div>
    </div>
  </div>
  </div>
</section>

<%@include file="../include/footer.jsp"%>
--%>

<script>
  var drwNo = ${lottoData.drwNo}
$(document).ready(function(){
    drwNoAddClass();
    drwNoSeleteAdd();
})

  function drwNoSeleteAdd(){
    for (var i = drwNo-1; i > 0; i--) {
      $("#drwSelect").append("<option value='"+i+"'>"+i+" 회차</option>");
    }
  }

$("#drwSelect").on('change', function(){
  var tmpDrwNo = $("select[name=drwSelect]").val();

  var requestParam = {
    "data":{
      "drwNo" : tmpDrwNo
    }
  };

  $.ajax({
    type: 'POST',
    contentType: "application/json",
    dataType: 'json',
    url: '/lotto/lottoDataSelect.do',
    data: JSON.stringify(requestParam),
    success: function (data) {
      /*var infoStr = "";
      infoStr +='<h6><b>'+data.drwNo+'회차 </b>당첨 결과</h6>'+
              '<div class="lotto-number">'+
              '<span id="drwNo1_span">'+data.drwtNo1+'</span>'+
              '<span id="drwNo2_span">'+data.drwtNo2+'</span>'+
              '<span id="drwNo3_span">'+data.drwtNo3+'</span>'+
              '<span id="drwNo4_span">'+data.drwtNo4+'</span>'+
              '<span id="drwNo5_span">'+data.drwtNo5+'</span>'+
              '<span id="drwNo6_span">'+data.drwtNo6+'</span>'+
              '<span class="plus">+</span>'+
              '<span id="drwNo7_span">'+data.bnusNo+'</span>'+
              '</div>';
      $("#drwNoInfo").html(infoStr);*/

      var tableStr = '<table class="table table-bordered">'+
                        '<thead>'+
                          '<tr class="bg-primary">'+
                            '<th>순위</th>'+
                            '<th>총 당첨금액</th>'+
                            '<th>당첨게임 수</th>'+
                            '<th>1게임당 당첨금액</th>'+
                            '<th>당첨기준</th>'+
                          '</tr>'+
                        '</thead>'+
                        '<tbody>'+
                        '<tr>'+
                          '<td class="text-color-primary">1등</td>'+
                          '<td>'+numberComma(data.placeNo1_price * data.placeNo1_cnt)+'원</td>'+
                          '<td class="text-color-primary">'+data.placeNo1_cnt+'명</td>'+
                          '<td>'+numberComma(data.placeNo1_price)+'원</td>'+
                          '<td>당첨번호 6개 숫자일치</td>'+
                        '</tr>'+
                        '<tr>'+
                          '<td class="text-color-primary">2등</td>'+
                          '<td>'+numberComma(data.placeNo2_price * data.placeNo2_cnt)+'원</td>'+
                          '<td class="text-color-primary">'+data.placeNo2_cnt+'명</td>'+
                          '<td>'+numberComma(data.placeNo2_price)+'원</td>'+
                          '<td>당첨번호 5개 숫자일치<br>+ 보너스 숫자일치'+
                        '</tr>'+
                        '<tr>'+
                          '<td class="text-color-primary">3등</td>'+
                          '<td>'+numberComma(data.placeNo3_price * data.placeNo3_cnt)+'원</td>'+
                          '<td class="text-color-primary">'+data.placeNo3_cnt+'명</td>'+
                          '<td>'+numberComma(data.placeNo3_price)+'원</td>'+
                          '<td>당첨번호 5개 숫자일치</td>'+
                        '</tr>'+
                        '<tr>'+
                          '<td class="text-color-primary">4등</td>'+
                          '<td>'+numberComma(data.placeNo4_price * data.placeNo4_cnt)+'원</td>'+
                          '<td class="text-color-primary">'+data.placeNo4_cnt+'명</td>'+
                          '<td>'+numberComma(data.placeNo4_price)+'원</td>'+
                          '<td>당첨번호 4개 숫자일치</td>'+
                        '</tr>'+
                        '<tr>'+
                          '<td class="text-color-primary">5등</td>'+
                          '<td>'+numberComma(data.placeNo5_price * data.placeNo5_cnt)+'원</td>'+
                          '<td class="text-color-primary">'+data.placeNo5_cnt+'명</td>'+
                          '<td>'+numberComma(data.placeNo5_price)+'원</td>'+
                          '<td>당첨번호 3개 숫자일치</td>'+
                        '</tr>'+
                        '</tbody>'+
                      '</table>';
      $("#drwNoTable").html(tableStr);

      drwNoAddClass();
    },
    error : function(response){
      console.log(response);
    }
  });


})

function drwNoAddClass(){
  for (var i = 1; i < 8; i++) {
    var tmpNo = $("#drwNo"+i+"_span").html();

    if(tmpNo < 11){
      $("#drwNo"+i+"_span").addClass("yellow");
    }else if(tmpNo > 10 && tmpNo < 21){
      $("#drwNo"+i+"_span").addClass("blue");
    }else if(tmpNo > 20 && tmpNo < 31){
      $("#drwNo"+i+"_span").addClass("red");
    }else if(tmpNo > 30 && tmpNo < 41){
      $("#drwNo"+i+"_span").addClass("pup");
    }else{
      $("#drwNo"+i+"_span").addClass("green");
    }
  }
}

function numberComma(num){
  return num.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
}

</script>




<script type="text/javascript">
</script>
</body>
