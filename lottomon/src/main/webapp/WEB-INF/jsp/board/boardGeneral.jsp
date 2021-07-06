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
            <img src="../img/home.jpg"> 홈
            <img src="../img/arrow.png"> 커뮤니티
            <img src="../img/arrow.png"> 자유게시판
          </h5>
        </div>

        <div id="table_free">
          <div class="table">
            <table style="border-spacing:0px" ;>
              <colgroup>
                <col width="75">
                <col width="*">
                <col width="100">
                <col width="70">
                <col width="100">
              </colgroup>
              <tr>
                <th scope="col">번호</th>
                <th scope="col">제목</th>
                <th scope="col">작성일</th>
                <th scope="col">작성자</th>
                <th scope="col">조회수</th>
              </tr>
              <tbody id="boardBody">
                <tr>
                  <td class="no"></td>
                  <td class="title"><a href="#"></a></td>
                  <td class="date"></td>
                  <td class="name"></td>
                  <td class="pv"></td>
                </tr>
              </tbody>
              <tr class="new">
                <td>419</td>
                <td>제목입니다.제목입니다[100]<span>new</span> - publishing 남겨놓았음. </td>
                <td>2020-12-08</td>
                <td>관리자</td>
                <td>1512</td>
              </tr>

            </table>
            <p class="btn"><a href="#">글쓰기</a></p>
          </div>


          <!--페이징-->
          <div class="list_btn" style="text-align: center;"></div>
          <!-- 리스트 게시판 끝-->

          <form id="service_seclect" action="/">
            <select id="seclect">
              <option value="">전체</option>
              <option value="alert">1</option>
              <option value="console">2</option>
              <option value="both">3</option>
            </select>
            <div class="find">
              <input type="text" placeholder="검색어를 입력하세요."><button type="submit"><img src="../img/find.png"></button>
            </div>
          </form>
        </div>
      </div>
    </div>
  </div>
</section>

<%@include file="../include/footer.jsp"%>

<script type="text/javascript">
  //최초 진입 시 페이징에 필요한 데이터
  /*<![CDATA[*/
  var allList = ${list};
  var allCnt = ${allCnt};
  var nowPage = ${nowPage};
  var allPage = ${allPage};
  /*]]>*/
</script>
<script type="text/javascript">
    $(function() {
      //최초 진입 init
      initNotice();
    });

    function joinNext(){
      if($('#seolmyeong_txt01').is(":checked") == true && $('#seolmyeong_txt02').is(":checked") == true){
          location.href='./joinInfo.do'

      }else{
          alert("약관에 동의해 주세요.");
      }
    }

    //최초 공지사항 출력
    function initNotice(){
      var str = "";

      for (var i = 0; i < allList.length && i < 10; i++) {
        var getList = allList[i];
        str += '<tr>\n' +
                '<td class="no">'+getList.seq+'</td>\n'
        str +=  '<td class="title"><a href="javascript:toggleContent('+i+')">'+getList.title;
        str +=  getList.dsp_new_dt=="Y"?'<span>new</span>\n':'';
        str +=  '</a></td>\n'
        str +=  '<td class="date">'+getList.reg_dt+'</td>\n'
        str +=  '<td class="name">'+getList.name+'</td>\n'
        str +=  '<td class="pv">'+getList.pv+'</td>\n'+
                '</tr>';
      }
      $("#boardBody").html(str);

      //페이징 메서드 호출
      pagination(allPage);
    }

    var pageShowCnt = 10; //페이지당 기본 출력 개수
    var nowPage = 1;
    var pageGroup = Math.ceil(nowPage/pageShowCnt);

    var last = pageGroup * pageShowCnt;
    if(last > allPage) last = allPage;
    var first = (pageGroup * 10 ) - 9;
    if(first < 1) first = 1;
    var next = nowPage + 1;
    var prev = nowPage - 1;

    function pagination(){
      var pagingHtml = '';

      pagingHtml += '<span class="prev"><a href="#"><img src="../img/prev_02.jpg"></a></span>'+
                    '<span class="prev"><a href="#"><img src="../img/prev_01.jpg"></a></span>';

      for (var i = first; i <= last; i++) {
        if(i == nowPage){
          pagingHtml += '<span class="on"><a href="#">'+i+'</a></span>';
        }else{
          pagingHtml += '<span><a href="javascript:paging('+i+')">'+i+'</a></span>';
        }
      }

      pagingHtml += '<span class="next"><a href="#"><img src="../img/next_01.jpg"></a></span>'+
                    '<span class="next"><a href="#"><img src="../img/next_02.jpg"></a></span>';

      $('.list_btn').html(pagingHtml);
    }

    //페이징 버튼 클릭시 작동
    /*function paging(currentPage) {
      nowPage = currentPage;

      $.ajax({
        type: 'POST',
        url: '/support_notice',
        data: {nowPage: nowPage, pageShowCnt: pageShowCnt},
        success: function (data) {
          pageGroup = Math.ceil(nowPage / pageShowCnt); //10개 단위의 페이지 그룹 숫자 (ex 1~10 = group 1 / 11~20 = group 2)

          last = pageGroup * pageShowCnt;		//표기할 페이지의 마지막 페이지
          if (last >= allPage) last = allPage;		// 최대 페이지가 10단위가 아닐경우
          first = (pageGroup * 10) - 9; 		//표기할 페이지의 첫 페이지
          if (first < 1) first = 1; 				//총 페이지가 10개보다 적을경우 최소페이지 지정
          next = nowPage + 1;						//다음페이지 숫자
          prev = nowPage - 1; 					//이전페이지 숫자

          pagination(allPage);

          var str = "";
          for (var i = 0; i < data.length; i++) {
            var list = data[i];

            str += '<tr>\n' +
                    '  <td class="no">' + list.seq + '</td>\n';
            if (list.category == '0') {
              str += '  <td class="type">공지사항</td>\n';
            } else if (list.category == '1') {
              str += '  <td class="type">이벤트</td>\n';
            }
            str += '  <td class="title">\n' +
                    '      <a href="javascript:toggleContent(' + i + ')">' + list.title + '</a>\n' +
                    '  </td>\n' +
                    '  <td class="date">' + list.reg_dt + '</td>\n' +
                    '</tr>' +
                    '<tr>' +
                    '<td class="contentBox" colspan="4" id="content_' + i + '"><div class="contentDiv"><p style="display: inline-block">' + list.content + '</p></div></td>' +
                    '</tr>';
          }
          $('#noticeBody').html(str);
        }
      });
    }*/
</script>

</body>
