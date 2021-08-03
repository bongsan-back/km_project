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
      var infoStr = "";
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
      $("#drwNoInfo").html(infoStr);

      var tableStr = '<table class="top" style="border-spacing:0px";>'+
                        '<tr>'+
                          '<th>순위</th>'+
                          '<th>총 당첨금액</th>'+
                          '<th>당첨게임 수</th>'+
                          '<th>1게임당 당첨금액</th>'+
                        '</tr>'+
                        '<tr>'+
                          '<td>1</td>'+
                          '<td>'+numberComma(data.placeNo1_price * data.placeNo1_cnt)+'</td>'+
                          '<td>'+data.placeNo1_cnt+'</td>'+
                          '<td>'+numberComma(data.placeNo1_price)+'</td>'+
                        '</tr>'+
                        '<tr>'+
                          '<td>2</td>'+
                          '<td>'+numberComma(data.placeNo2_price * data.placeNo2_cnt)+'</td>'+
                          '<td>'+data.placeNo2_cnt+'</td>'+
                          '<td>'+numberComma(data.placeNo2_price)+'</td>'+
                        '</tr>'+
                        '<tr>'+
                          '<td>3</td>'+
                          '<td>'+numberComma(data.placeNo3_price * data.placeNo3_cnt)+'</td>'+
                          '<td>'+data.placeNo3_cnt+'</td>'+
                          '<td>'+numberComma(data.placeNo3_price)+'</td>'+
                        '</tr>'+
                        '<tr>'+
                          '<td>4</td>'+
                          '<td>'+numberComma(data.placeNo4_price * data.placeNo4_cnt)+'</td>'+
                          '<td>'+data.placeNo4_cnt+'</td>'+
                          '<td>'+numberComma(data.placeNo4_price)+'</td>'+
                        '</tr>'+
                        '<tr>'+
                          '<td>5</td>'+
                          '<td>'+numberComma(data.placeNo5_price * data.placeNo5_cnt)+'</td>'+
                          '<td>'+data.placeNo5_cnt+'</td>'+
                          '<td>'+numberComma(data.placeNo5_price)+'</td>'+
                        '</tr>'+
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
