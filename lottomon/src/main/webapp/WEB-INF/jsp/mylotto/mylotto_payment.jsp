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
  <script src="/js/menu.js"></script>
  <link rel="stylesheet" type="text/css" href="/css/font.css" />
  <link rel="stylesheet" type="text/css" href="/css/common.css" />
  <link rel="stylesheet" type="text/css" href="/css/layout.css" />
  <link rel="stylesheet" type="text/css" href="/css/header.css" />
  <link rel="stylesheet" type="text/css" href="/css/footer.css" />
  <link rel="stylesheet" type="text/css" href="/css/style.css" />

  <style type="text/css">
    .placeholder { color: #aaa; }

    .newBox{
      border-radius: 3px;
      padding: 0px 4px;
      margin: 0 5px;
      background-color: #ffbf00;
    }
  </style>


</head>
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

  .paging-bar .paging-btn{
    padding: 5px 10px;
    color: #d92c26 !important;;
    border: 1px solid #eee;
    text-decoration-line : none;
  }

  .paging-bar .paging-btn.on{
    padding: 5px 10px;
    color: #ffffff !important;
    border: 1px solid #d92c26;
    background-color: #d92c26;
    text-decoration-line : none;
  }

  .paging-btn img{
    position: relative;
    bottom: 2px ;
  }

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
  <div role="main" class="main">



    <section class="page-header page-header-modern page-header-background page-header-background-md overlay overlay-color-dark overlay-show overlay-op-5" style="background-image: url(img/sub_title_bg.jpg);">
      <div class="container">
        <div class="row">
          <div class="col-md-8 order-2 order-md-1 align-self-center p-static">
            <h1 class="mb-3 text-9" style="letter-spacing: 0.03em">결제게시판</h1>
            <span class="sub-title">최적의 프리미엄조합수 필터링을 통해 서비스를 제공하는 로또몬입니다.</span>
          </div>
          <div class="col-md-4 order-1 order-md-2 align-self-center">
            <ul class="breadcrumb breadcrumb-light d-block text-md-right">
              <li><a href="https://mansour-lotto.com/customer01.php#">Home</a></li>
              <li class="active">나의로또</li>
              <li class="active">결제게시판</li>
            </ul>
          </div>
        </div>
      </div>
    </section>




    <div class="container py-4 my-5" style="">
      <div class="row justify-content-center text-center mb-4 appear-animation animated fadeInUpShorter appear-animation-visible" data-appear-animation="fadeInUpShorter" data-appear-animation-delay="400" style="animation-delay: 400ms;">

        <!--pc버전-->
        <div class="table_pc col-lg-12">
          <table class="table-text-color-dark table table-hover" id="table">
            <thead>
            <tr>
              <th>번호</th>
              <th style="width: 60%;">제목</th>
              <th>작성자</th>
              <th>작성일</th>
              <th style="width: 100px">조회수</th>
            </tr>
            </thead>
            <tbody id="table_body">

            <!--<tr>
                <td colspan="4">게시물이 존재하지 않습니다.</td>
            </tr>-->
            </tbody>
          </table>
          <div class="text-right mt-3">
            <a class="btn btn-gray mb-2" href="javascript:editingPostBoard()">글 쓰기</a>
          </div>
        </div>
        <!--end:pc번-->

        <!--모바일버전-->
        <div class="table_m col-lg-12 text-left">
          <ul class="p-0" id="mobile-li">
          </ul>
          <div class="text-right mt-3">
            <a class="btn btn-gray mb-2" href="javascript:editingPostBoard()">글 쓰기</a>
          </div>
        </div>
        <!--end:모바일버전-->

        <!-- 이전,다음 페이징 -->
        <%--<div class="col">
          <ul class="pagination justify-content-center text-center">
            <li class="page-item"><a class="page-link" href="https://mansour-lotto.com/customer01.php#a"><i class="fas fa-angle-left"></i></a></li><li class="page-item active"><a class="page-link" href="https://mansour-lotto.com/customer01.php#a">1</a></li><a class="page-link" href="https://mansour-lotto.com/customer01.php#a"><i class="fas fa-angle-right"></i></a>
          </ul>
        </div>--%>

        <div class="list_btn paging-bar" style="text-align: center;"></div>
        <!-- 이전,다음 페이징 end -->


      </div>
      <%--<div id="search_button" class="find" style="text-align: center; width: 100%">
        <input id="search_text" type="text" placeholder="검색어를 입력하세요." onkeypress="if(event.keyCode==13)find_board_contents()">
        <button type='button' value="검색" onclick="find_board_contents()"/><img src="../img/find.png"></button>
      </div>--%>
    </div>


    <hr>

  </div><!--end:main-->


  <!------공통:푸터------>
  <%@include file="../include/footerRenew.jsp"%>

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


</div><a class="scroll-to-top hidden-mobile" href="#"><i class="fas fa-chevron-up"></i></a>
























<%--

<%@include file="../include/header.jsp"%>
<section class="main">
  <%@include file="../include/quick.jsp"%>
</section>

<section id="sub">
  <div class="service_main">
    <div class="wrap">
      <div class="left for">
        <h2>나의로또</h2>
        <div>
          &lt;%&ndash;<a href="/lotto/thisWeeksNumber.do">이번주 나의번호</a>&ndash;%&gt;
          <a href="/board/mylotto_payment.do" class="on">결제 게시판</a>
          <a href="/myUpdate.do">내 정보 수정</a>
        </div>
      </div>
      <div class="content" style="min-height: 700px;">
        <div class="head">
          <h2>결제 게시판</h2>
          <h5>
            <a href="#"><img src="../img/home.jpg"> 홈</a>
            <a href="javascript:goToCategoryMenu(type)"><img src="../img/arrow.png"> 나의로또</a>
            <a href="javascript:goToMenu(type)"><img src="../img/arrow.png"> 결제 게시판</a>
          </h5>
        </div>

        <div class="table">
          <table id="table" style="border-spacing:0px">
            <colgroup>
              <col width="75">
              <col width="*">
              <col width="100">
              <col width="70">
              <col width="100">
            </colgroup>
            <thead>
            <tr>
              <th>번호</th>
              <th>제목</th>
              <th>작성일</th>
              <th>작성자</th>
              <th>조회수</th>
            </tr>
            </thead>
            <tbody id="table_body">
            </tbody>
          </table>

          <p class="btn"><a href="javascript:editingPostBoard()">글쓰기</a></p>
        </div>

        <!--페이징-->
        <div class="list_btn" style="text-align: center;"></div>
        <!-- 리스트 게시판 끝-->

        <form id="service_select" onsubmit="return false">
          <select id="content_search_option">
            <option value="all">전체</option>
            <option value="title">제목</option>
            <option value="content">내용</option>
            <option value="title_content">제목+내용</option>
            <option value="writer">작성자</option>
          </select>
          <div id="search_button" class="find">
            <input id="search_text" type="text" placeholder="검색어를 입력하세요." onkeypress="if(event.keyCode==13)find_board_contents()">
            <button type='button' value="검색" onclick="find_board_contents()"/><img src="../img/find.png"></button>
          </div>
        </form>
      </div>
    </div>
  </div>
</section>

<%@include file="../include/footer.jsp"%>
--%>

<script type="text/javascript">
  //최초 진입 시 페이징에 필요한 데이터
  var allCnt = ${listCnt};
  var postNumBaseCnt = ${postNumBaseCnt};
  var pageNumBaseCnt = ${pageNumBaseCnt};
  var allPage = Math.ceil(allCnt / postNumBaseCnt); //페이징 몫 설정
  var type = "${type}";

  var user_id = '<%=(String)session.getAttribute("user_id")%>';
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

  //페이징 버튼 클릭시 작동
  function paging(currentPage) {
    if(currentPage<1)currentPage=1; //버튼이 첫 페이지 아래로 설정된 경우 첫 페이지로 변경
    else if(currentPage>allPage)currentPage=allPage; //버튼이 마지막 페이지 초과로 설정된 경우 마지막 페이지로 변경

    var search_word = $("#search_text").val()==""? "%" : $("#search_text").val();

    var data = {
      current_page: currentPage,
      post_num_base_cnt: postNumBaseCnt,
      type : type,
      search_type : $("#content_search_option option:selected").val(),
      search_word : search_word
    };

    $.ajax({
      type: 'POST',
      contentType: "application/json",
      dataType: 'json',
      url: '/board/searchBoardContent.do',
      data: JSON.stringify(data),
      success: function (data) {
        var str = "";
        var mstr = "";
        for (var i = 0; i < data.length; i++) {
          var getList = data[i];

          str +=  '<tr>\n' +
                  '<td>'+getList.seq+'</td>\n'
          str +=  '<td style="text-align: left">'+getList.title;
          str +=  getList.comment==0?'':'['+getList.comment+']';
          str +=  getList.dsp_new_dt=="Y"?'<span class="newBox">new</span>\n':'';
          str +=  '</td>\n'
          str +=  '<td>'+getList.reg_dt+'</td>\n'
          str +=  '<td>'+getList.name+'</td>\n'
          str +=  '<td>'+getList.pv+'</td>\n' +
                  '</tr>';

          mstr += '<li class="border-b-gray pb-2 pt-2">';
          mstr += '<a href="/board/readingPostBoard.do?type=22&seq='+getList.seq+'">';
          mstr += '<h4 class="text-4 mb-0 mr-1" style="display: inline-block;">'+getList.title+'</h4>';
          mstr += '<div class="">';
          mstr += '<span class="mr-2">'+getList.name+'</span><span>'+getList.reg_dt+'</span>';
          mstr += '</div>';
          mstr += '</a>';
          mstr += '</li>';

        }
        $('#table_body').html(str);
        $('#mobile-li').html(mstr);
        table_click_function();

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

      pagingHtml += '<span class="prev"><a class="paging-btn" href="javascript:paging(1)"><img src="../img/prev_02.jpg"></a></span>'+
              '<span class="prev"><a class="paging-btn" href="javascript:paging('+(currentPage-1)+')"><img src="../img/prev_01.jpg"></a></span>';

      for (var i = firstPage; i <= lastPage; i++) {
        if(i == currentPage){
          pagingHtml += '<span><a class="paging-btn on" href="#">'+i+'</a></span>';
        }else{
          pagingHtml += '<span><a class="paging-btn" href="javascript:paging('+i+')">'+i+'</a></span>';
        }
      }

      pagingHtml += '<span class="next"><a class="paging-btn" href="javascript:paging('+(currentPage+1)+')"><img src="../img/next_01.jpg"></a></span>'+
              '<span class="next"><a class="paging-btn" href="javascript:paging('+allPage+')")"><img src="../img/next_02.jpg"></a></span>';

      $('.list_btn').html(pagingHtml);
    }

    function table_click_function(){
      $("#table tr").click(function() {
        if($(this).children().eq(0).text() === "번호")return;
        location.href="/board/readingPostBoard.do?type=22&seq=" + $(this).children().eq(0).text();//게시판 이동
      });
    }
  }

  function editingPostBoard(){
    if(user_id == "null")location.href="/login/login.do";
    else location.href="/board/editingPostBoard.do?type=22";
  }
</script>

</body>
