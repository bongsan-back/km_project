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
  <link rel="stylesheet" type="text/css" href="/css/common.css?ver=1.0.1" />
  <link rel="stylesheet" type="text/css" href="/css/layout.css" />
  <link rel="stylesheet" type="text/css" href="/css/header.css" />
  <link rel="stylesheet" type="text/css" href="/css/footer.css" />
  <link rel="stylesheet" type="text/css" href="/css/style.css?ver=1.0.2" />

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
      <div class="left for" id="setting_menu">
        <h2></h2>
        <div></div>
      </div>
      <div class="content">
        <div class="head">
          <h2 id="menu_title">title</h2>
          <h5>
            <a href="#"><img src="../img/home.jpg"> 홈</a>
            <img src="../img/arrow.png"><a href="javascript:goToCategoryMenu(type)" id="menu_type_group_name">type_group_name</a>
            <img src="../img/arrow.png"><a href="javascript:goToMenu(type)" id="menu_type_name"> type_name</a>
          </h5>
        </div>
        <div id="table">
          <div class="service_alert">
            <form action="#" name="service_alert" class="title">
              <dl>
                <c:if test="${type == '22'}">
                  <dt id="title">제목<textarea id="post_title" autofocus required wrap="soft" style="width: 90%; margin: 5px 15px; line-height: 5px;" readonly>입금 문의 드립니다.</textarea></dt>

                  <p><span id="name"></span><span id="reg_dt" class="day">reg_dt</span></p>
                  <textarea id="post_contents" rows="20" autofocus required wrap="soft" placeholder="내용을 입력하세요." style="width:100%; margin: 15px 0px 15px; padding: 15px;">
양식에 맞게 작성해 주세요.

입금자 명 :
입금 금액 :
입금 날짜 :
휴대폰 번호 :

*휴대폰 번호는 입금이 잘못되거나, 안내를 도와드리는 목적으로 이용됩니다.
                </textarea>
                </c:if>
                <c:if test="${type != '22'}">
                  <dt id="title">제목<textarea id="post_title" autofocus required wrap="soft" placeholder="제목을 입력하세요." style="width: 90%; margin: 5px 15px; line-height: 5px;"></textarea></dt>

                  <p><span id="name"></span><span id="reg_dt" class="day">reg_dt</span></p>
                  <textarea id="post_contents" rows="20" autofocus required wrap="soft" placeholder="내용을 입력하세요." style="width:100%; margin: 15px 0px 15px; padding: 15px;"></textarea>
                </c:if>

                <%--<div class="filebox">
                  <label for="file">첨부파일</label>
                  <input type="file" id="file">
                  <input class="upload-name" value="test.txt">
                </div>--%>
              </dl>
            </form>

            <script>
              $("#file").on('change', function() {
                var fileName = $("#file").val();
                $(".upload-name").val(fileName);
              });
            </script>
          </div>

          <div class="edit">
            <label id="insert" class="btn"><a onclick="button_click_function()">등록</a></label>
            <label id="cancel" class="btn_cancel"><a onclick="history.back()">취소</a></label>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>

<%@include file="../include/footer.jsp"%>

<script type="text/javascript">
  //최초 진입 시 페이징에 필요한 데이터
  var seq = "${seq}";
  var type = "${type}";
  var type_group_name = "${type_group_name}";
  var type_name = "${type_name}";
  var post_board = ${post_board} == null ? null : ${post_board}[0];

  var user_id = '<%=(String)session.getAttribute("user_id")%>';
</script>
<script type="text/javascript">
  $(function() {
    //최초 진입 init
    initNotice();
  });

  //최초 게시판 출력
  function initNotice(){
    //게시판 setting
    $("#menu_title").text(" " + type_name);
    $("#menu_type_group_name").text(" " + type_group_name);
    $("#menu_type_name").text(" " + type_name);

    if(post_board != null){
      $("#post_title").text(post_board.title)
      $("#post_contents").text(post_board.content)
    }

    var today = new Date();
    $("#reg_dt").text(today.getFullYear()+'-'+('0' + (today.getMonth() + 1)).slice(-2)+'-'+('0' + today.getDate()).slice(-2));
    //왼쪽 게시판 메뉴,헤더 Setting
    var str = menu.createLeftMenu(type,type_group_name);
    $('#setting_menu').html(str);
  }

  function button_click_function(){
    $("#insert").off().on().click(function() {
      if($("#post_title").val()===""){
        alert("제목을 입력해주세요");
        return;
      } else if($("#post_contents").val()===""){
        alert("내용을 입력해주세요");
        return;
      }
    });

    var data = {
      user_id : user_id,
      seq : seq,
      type : type,
      title : $("#post_title").val(),
      content : $("#post_contents").val()
    };

    $.ajax({
      type: 'POST',
      contentType: "application/json",
      dataType: 'json',
      url: '/board/insertBoardContent.do',
      data: JSON.stringify(data),
      success: function (seq) {
        location.href="/board/readingPostBoard.do?type=" + type + "&seq=" + seq; //게시판 이동
      },
      error : function(){
        alert("글 작성에 실패 하였습니다. 잠시 후 다시 시도해 주세요.");
        return;
      }
    });
  }
</script>

</body>
