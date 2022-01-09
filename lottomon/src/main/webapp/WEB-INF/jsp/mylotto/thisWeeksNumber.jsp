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
  <script src="/js/menu.js?ver=1"></script>
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
  <div class="mylotto">
    <div class="wrap">
      <div class="left for">
        <h2>나의로또</h2>
        <div>
          <a href="/lotto/thisWeeksNumber.do" class="on">이번주 나의번호</a>
          <a href="/board/mylotto_payment.do">결제내역</a>
          <a href="/myUpdate.do">내 정보 수정</a>
        </div>
      </div>
      <div class="content">
        <div class="head">
          <h2>이번주 나의번호</h2>
          <h5>
            <a href="#"><img src="../img/home.jpg"> 홈</a>
            <a href="javascript:goToCategoryMenu(type)"><img src="../img/arrow.png"> 나의로또</a>
            <a href="javascript:goToMenu(type)"><img src="../img/arrow.png"> 이번주 나의번호</a>
          </h5>
        </div>

        <%--<div class="mylotto_box_now box">--%>
        <div id="mylotto_box" class="mylotto_box box">
        </div>

        <!--페이징-->
        <div class="list_btn" style="text-align: center;"></div>
        <!-- 리스트 게시판 끝-->
      </div>
    </div>
  </div>
</section>

<%@include file="../include/footer.jsp"%>

<script type="text/javascript">
  //최초 진입 시 페이징에 필요한 데이터
  var allCnt = ${listCnt};
  var postNumBaseCnt = ${postNumBaseCnt};
  var pageNumBaseCnt = ${pageNumBaseCnt};
  var allPage = Math.ceil(allCnt / postNumBaseCnt); //페이징 몫 설정
  var type = "${type}";
</script>
<script type="text/javascript">
  $(document).ready(function() {
    // 테이블의 Row 클릭시 값 가져오기
  });

  $(function() {
    //최초 진입 init
    initNotice();
  });

  //최초 게시판 출력
  function initNotice(){
    //페이징 호출
    find_board_contents();
  }

  function find_board_contents() {
    paging(1);
  }

  function settingColor(number) {
    var color = "";
    if(number >= 1 && number <= 10) color = "red";
    if(number > 10 && number <= 20) color = "orange";
    if(number > 20 && number <= 30) color = "green";
    if(number > 30 && number <= 40) color = "blue";
    if(number > 40 && number <= 45) color = "pup";
    return color;
  }

  //페이징 버튼 클릭시 작동
  function paging(currentPage) {
    if(currentPage<1)currentPage=1; //버튼이 첫 페이지 아래로 설정된 경우 첫 페이지로 변경
    else if(currentPage>allPage)currentPage=allPage; //버튼이 마지막 페이지 초과로 설정된 경우 마지막 페이지로 변경

    var data = {
      current_page: currentPage,
      post_num_base_cnt: postNumBaseCnt
      //id : id
    };

    $.ajax({
      type: 'POST',
      contentType: "application/json",
      dataType: 'json',
      url: '/lotto/searchContent.do',
      data: JSON.stringify(data),
      success: function (data) {
        var str = "";
        for (var i = 0; i < data.length; i++) {
          var getList = data[i];

          str +=  '<h6>\n' + getList.drwNo + '회차 나의번호' + '</h6>\n';
          str +=  '<div class="lotto-number">';
          str +=  '<span class="' + settingColor(getList.drwtNo1) + '">' + getList.drwtNo1 + '</span>';
          str +=  '<span class="' + settingColor(getList.drwtNo2) + '">' + getList.drwtNo2 + '</span>';
          str +=  '<span class="' + settingColor(getList.drwtNo3) + '">' + getList.drwtNo3 + '</span>';
          str +=  '<span class="' + settingColor(getList.drwtNo4) + '">' + getList.drwtNo4 + '</span>';
          str +=  '<span class="' + settingColor(getList.drwtNo5) + '">' + getList.drwtNo5 + '</span>';
          str +=  '<span class="' + settingColor(getList.drwtNo6) + '">' + getList.drwtNo6 + '</span>' +
                  '</div>';
        }
        $('#mylotto_box').html(str);

        pagination(currentPage,data);
      },
      error : function(response){
        console.log(response);
      }
    });

    function pagination(currentPage){
      var pageGroup = Math.ceil(currentPage / pageNumBaseCnt); //설정 단위의 페이지 그룹 숫자 (ex 1~10 = group 1 / 11~20 = group 2)
      var firstPage = Math.floor(((pageGroup-1) * pageNumBaseCnt) + 1); //첫 시작 페이징 번호
      var lastPage = allPage-(pageNumBaseCnt*(pageGroup-1))<pageNumBaseCnt
              ? Math.floor((firstPage-1) + (allPage % pageNumBaseCnt))
              : pageNumBaseCnt*pageGroup; //마지막 그룹의 페이지에 도달할 경우 남은 페이지 만큼 페이징 처리함

      var pagingHtml = '';

      pagingHtml += '<span class="prev"><a href="javascript:paging(1)"><img src="../img/prev_02.jpg"></a></span>'+
              '<span class="prev"><a href="javascript:paging('+(currentPage-1)+')"><img src="../img/prev_01.jpg"></a></span>';

      for (var i = firstPage; i <= lastPage; i++) {
        if(i == currentPage){
          pagingHtml += '<span class="on"><a href="#">'+i+'</a></span>';
        }else{
          pagingHtml += '<span><a href="javascript:paging('+i+')">'+i+'</a></span>';
        }
      }

      pagingHtml += '<span class="next"><a href="javascript:paging('+(currentPage+1)+')"><img src="../img/next_01.jpg"></a></span>'+
              '<span class="next"><a href="javascript:paging('+allPage+')")"><img src="../img/next_02.jpg"></a></span>';

      $('.list_btn').html(pagingHtml);
    }
  }
</script>

</body>
