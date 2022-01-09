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
                <dt id="title">title</dt>
                <p><span id="name">name</span><span id="reg_dt" class="day">reg_dt</span></p>
                <dd id="content">content</dd>
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

            <div class="service_alert_list">
              <span><a href="javascript:goToMenu(type)">목록</a></span>
              <ul id="board_editing_btn_group">
                <%--<li><a href="#">답글</a></li>--%>
                <li><a href="javascript:editToBoard()">수정</a></li>
                <li><a href="javascript:deleteToBoard()">삭제</a></li>
              </ul>
            </div>
            <div id="comment">
              <div class="comment">
                <h6>댓글<span id="comment_cnt">[comment]</span>개</h6>
                <span class="comment focus" id="btn_reg_dt" onclick="searchBoardCommentContent('reg_dt')">최신순</span>
                <span class="comment" id="btn_like_count" onclick="searchBoardCommentContent('like_count')">인기순</span>
                <form action="#" name="comment" class="com">
                  <textarea type="text" id="comment_contents" required wrap="soft" placeholder="댓글을 작성하세요."></textarea>
                  <input type="button" id="insert" value="댓글등록" onclick="insertBoardComment()"/>
                </form>
                <div id= "comment_list">
                </div>
              </div>

              <!--페이징-->
              <div class="list_btn" style="text-align: center;"></div>
              <!-- 리스트 게시판 끝-->

              <table style="border-spacing:0px" ;="">
                <tbody>
                <tr>
                  <th><a>이전글<img src="../img/service_alert_top_btn.png"></a></th>
                  <td id="prev_page_title"><a href="#">제목입니다.</a></td>
                </tr>
                <tr>
                  <th><a>다음글<img src="../img/service_alert_bttom_btn.png"></a></th>
                  <td id="next_page_title"><a href="#">제목입니다.</a></td>
                </tr>
                </tbody>
              </table>
              <img src="../img/theFirstStoryBanner.jpg" class="banner">
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>

<%@include file="../include/footer.jsp"%>

<script type="text/javascript">
  //최초 진입 시 페이징에 필요한 데이터
  var allCnt = ${post_board}[0].comment;
  var postNumBaseCnt = ${postNumBaseCnt};
  var pageNumBaseCnt = ${pageNumBaseCnt};
  var allPage = Math.ceil(allCnt / postNumBaseCnt); //페이징 몫 설정

  var board_seq = ${post_board}[0].seq;
  var type = "${type}";
  var type_group_name = "${type_group_name}";
  var type_name = "${type_name}";
  var post_board = ${post_board}[0];
  var prev_seq = ${post_board}[0].prev_seq;
  var next_seq = ${post_board}[0].next_seq;

  var user_id = '<%=(String)session.getAttribute("user_id")%>';
  var orderType = "reg_dt";
</script>
<script type="text/javascript">
  $(function() {
    //최초 진입 init
    initNotice();
  });

  //최초 게시판 출력
  function initNotice(){
    //게시판 setting
    $('#comment_contents').blur();
    $("#menu_title").text(" " + type_name)
    $("#menu_type_group_name").text(" " + type_group_name)
    $("#menu_type_name").text(" " + type_name)
    $("#title").text(post_board.title)
    $("#name").text(post_board.name)
    $("#content").text(post_board.content)
    $("#reg_dt").text(post_board.reg_dt)
    $("#comment_cnt").text(post_board.comment)
    //왼쪽 게시판 메뉴,헤더 Setting
    var str = menu.createLeftMenu(type,type_group_name);
    $('#setting_menu').html(str);

    if(user_id == post_board.user_id) {
      $("#board_editing_btn_group").show(); //수정,삭제 버튼 display
    }

    var page_str = "";
    var page_link = "";

    page_str = post_board.prev_page_title === undefined ? '이전글이 없습니다.' : post_board.prev_page_title;
    page_link = prev_seq === undefined ? '<a>' : '<a href=' + "/board/readingPostBoard.do?type=" + type + "&seq=" + prev_seq + '>';
    $('#prev_page_title').html(page_link + page_str + '</a>')

    page_str = post_board.next_page_title === undefined ? '다음글이 없습니다.' : post_board.next_page_title;
    page_link = next_seq === undefined ? '<a>' : '<a href=' + "/board/readingPostBoard.do?type=" + type + "&seq=" + next_seq + '>';
    $('#next_page_title').html(page_link + page_str + '</a>')

    //조회수 업데이트 호출
    boardViewUp();
    //페이징 호출
    paging(1);
  }

  //페이징 버튼 클릭시 작동
  function paging(currentPage) {
    if(allPage<1)currentPage=1; //버튼이 첫 페이지 아래로 설정된 경우 첫 페이지로 변경
    else if(currentPage>allPage)currentPage=allPage; //버튼이 마지막 페이지 초과로 설정된 경우 마지막 페이지로 변경

    var data = {
      current_page: currentPage,
      post_num_base_cnt: postNumBaseCnt,
      type : type,
      seq : board_seq,
      order_type : orderType
    };

    $.ajax({
      type: 'POST',
      contentType: "application/json",
      dataType: 'json',
      url: '/board/searchBoardCommentContent.do',
      data: JSON.stringify(data),
      success: function (data) {
        var str = "";
        for (var i = 0; i < data.length; i++) {
          var getList = data[i];
          str +=  '<dl class="comment_list">\n';
          str +=  '<dt>\n'+ '<img src="../img/humen.png">' + getList.name + '</dt>\n';
          str +=  '<dd>\n'+ '<span>' + getList.reg_dt + '</span>\n' + '<span>' + getList.reg_dt_hms + '</span>';
          if(user_id == getList.user_id){
            str +=  '<span><a href="javascript:editBoardComment()">수정</a></span>\n' +
                    '<span class="delete"><a href="javascript:deleteBoardComment()">삭제</a>' +
                    '</span></dd>\n';
          }
          str +=  '<dd class="txt">' + getList.content + '</dd>\n';
          str +=  '<p><img src="../img/good.png">' + getList.like_count + '</p>\n';
          str +=  '</dl>';
        }
        $('#comment_list').html(str);

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

  function searchBoardCommentContent(order_type){
      orderType = order_type;
      if(orderType == "reg_dt"){
        $('#btn_reg_dt').addClass('focus');
        $('#btn_like_count').removeClass('focus');
      } else if(orderType == "like_count"){
        $('#btn_reg_dt').removeClass('focus');
        $('#btn_like_count').addClass('focus');
      }

      paging(1);
  }

  function boardViewUp() {
    if(getCookie("boardViewSeq" + board_seq) === undefined){
      setCookie("boardViewSeq" + board_seq, board_seq, '1');

      var data = {
        seq : board_seq
      };

      $.ajax({
        type: 'POST',
        contentType: "application/json",
        dataType: 'json',
        url: '/board/updateBoardViewUp.do',
        data: JSON.stringify(data),
        success: function (data) {
        },
        error : function(response){
          console.log(response);
        }
      });
    } else if(getCookie("boardViewSeq" + board_seq) === board_seq){
      return;
    }
  }

  function editToBoard(){
    location.href="/board/editingPostBoard.do?type=" + type + "&seq=" + board_seq + "&option=edit";
  }

  function deleteToBoard(){
    if(confirm("작성글을 삭제하시겠습니까?")){
      var data = {
        seq : board_seq
      };

      $.ajax({
        type: 'POST',
        contentType: "application/json",
        dataType: 'json',
        url: '/board/deleteBoardContent.do',
        data: JSON.stringify(data),
        success: function (data) {
          javascript:goToMenu(type);
        },
        error : function(response){
          console.log(response);
        }
      });
    } else{

    }
  }

  function insertBoardComment(){
    if(user_id == "null"){
      if(confirm("로그인 후 작성 가능합니다.\n로그인 화면으로 이동하시겠습니까?")  == true) {
        location.href="/login/login.do";
        return;
      } else {
        return;
      }
    } else if($("#comment_contents").val()==="") {
      alert("댓글을 입력해주세요");
      return;
    }

    var data = {
      user_id : user_id,
      board_seq : board_seq,
      content : $("#comment_contents").val()
    };

    console.log(data);
    console.log(JSON.stringify(data));
    $.ajax({
      type: 'POST',
      contentType: "application/json",
      dataType: 'json',
      url: '/board/insertBoardCommentContent.do',
      data: JSON.stringify(data),
      success: function (seq) {
        location.reload()
      },
      error : function(){
        alert("댓글 작성에 실패 하였습니다. 잠시 후 다시 시도해 주세요.");
      }
    });
  }

  function editBoardComment(){
    if($("#comment_contents").val()===""){
      alert("댓글을 입력해주세요");
      return;
    }

    var data = {
      user_id : user_id,
      seq : seq,
      content : $("#comment_contents").val()
    };

    $.ajax({
      type: 'POST',
      contentType: "application/json",
      dataType: 'json',
      url: '/board/insertBoardComment.do',
      data: JSON.stringify(data),
      success: function (seq) {
        location.reload()
      },
      error : function(){
        alert("글 작성에 실패 하였습니다. 잠시 후 다시 시도해 주세요.");
        return;
      }
    });
  }

  function deleteBoardComment(){
    var data = {
      seq : seq
    };

    $.ajax({
      type: 'POST',
      contentType: "application/json",
      dataType: 'json',
      url: '/board/deleteBoardComment.do',
      data: JSON.stringify(data),
      success: function (data) {
        location.reload()
      },
      error : function(response){
        console.log(response);
      }
    });
  }
</script>

</body>