<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<header id="header" data-plugin-options="{'stickyEnabled': true, 'stickyEnableOnBoxed': true, 'stickyEnableOnMobile': true, 'stickyStartAt': 45, 'stickySetTop': '-48px', 'stickyChangeLogo': true}" style="height: 145px;">
    <div class="header-body">
        <div class="header-container container">
            <div id="top-nav" class="header-row pt-3">
                <nav class="header-nav-top">
                    <ul class="nav nav-pills">
                        <!-- 로그아웃 상태 start -->

                        <c:if test="${empty user_id }">
                            <li id="logoin"
                                class="nav-item nav-item-left-border nav-item-left-border-remove nav-item-left-border-md-show">
                                <a class="border_type1" href="/login/login.do">로그인</a>
                            </li>

                            <li class="nav-item nav-item-left-border nav-item-left-border-remove nav-item-left-border-md-show">
                                <a class="border_type2" href="/login/joinAgree.do">회원가입</a>
                            </li>
                        </c:if>
                        <c:if test="${not empty user_id }">
                            <li class="nav-item nav-item-left-border nav-item-left-border-remove nav-item-left-border-md-show text-color-light border_type3 bg-primary mr-2">
                                    ${grade_name}
                            </li>
                            <c:if test="${role eq 'ADMIN'}">
                                <li class="nav-item nav-item-left-border nav-item-left-border-remove nav-item-left-border-md-show">
                                    <a class="border_type1" href="/admin/main.do">관리자 페이지</a>
                                </li>
                            </c:if>

                            <li id="logo-out"
                                class="nav-item nav-item-left-border nav-item-left-border-remove nav-item-left-border-md-show">
                                <a class="border_type1" href="javascript:logout()">로그아웃</a>
                            </li>
                        </c:if>
                        <!-- 로그아웃 상태 end -->
                        <!-- 로그인 상태 end -->
                    </ul>
                </nav>

            </div>
            <div class="header-row">
                <div class="header-column">
                    <div class="header-row">
                        <div class="header-logo" style="width: 200px; height: 120px;">
                            <a href="/main.do">
                                <img alt="Porto" width="250" height="80" data-sticky-width="180" data-sticky-height="56" data-sticky-top="10" src="http://lotto-kingdom.co.kr/img/lm_main.png" style="top:-20px">
                            </a>
                        </div>
                        <!--번호추가-->
                        <%--<a href="tel:1668-4042">
                            <p class="mt-4 ml-2 text-color-primary text-4 mb-0 p-1" style="border: 2px solid #d92c26;border-radius: 10px;"><i class="fas fa-phone-alt"></i>1668-4042</p></a>--%>
                    </div>
                </div>
                <div class="header-column justify-content-end">
                    <div class="header-row">
                        <div class="header-nav pt-1">
                            <div class="header-nav-main header-nav-main-effect-1 header-nav-main-sub-effect-1">
                                <nav class="collapse">
                                    <ul class="nav nav-pills" id="mainNav">
                                        <li class="dropdown">
                                            <a class="dropdown-item dropdown-toggle " href="/winning.do">
                                                결과 & 소개
                                                <i class="fas fa-chevron-down"></i></a>
                                            <ul class="dropdown-menu">
                                                <li>
                                                    <a class="dropdown-item" href="/winning.do">
                                                        로또당첨결과
                                                    </a>
                                                </li>
                                                <%--<li>
                                                    <a class="dropdown-item" href="/introduce.do">
                                                        시스템 소개
                                                    </a>
                                                </li>--%>
                                            </ul>
                                        </li>
                                        <li class="dropdown">
                                            <a class="dropdown-item dropdown-toggle " href="/membership.do">
                                                멤버십안내
                                                <i class="fas fa-chevron-down"></i></a>
                                            <ul class="dropdown-menu">
                                                <li>
                                                    <a class="dropdown-item" href="/membership.do">
                                                        멤버십안내
                                                    </a>
                                                </li>
                                            </ul>
                                        </li>

                                        <li class="dropdown">
                                            <a class="dropdown-item dropdown-toggle " href="/board/bulletin.do">
                                                커뮤니티
                                                <i class="fas fa-chevron-down"></i></a>
                                            <ul class="dropdown-menu">
                                                <li>
                                                    <a class="dropdown-item" href="/board/bulletin.do">자유게시판</a>
                                                </li>
                                                <li>
                                                    <a class="dropdown-item" href="/board/winPrayer.do" style="letter-spacing: 0.05em">당첨기원게시판</a>
                                                </li>
                                                <li>
                                                    <a class="dropdown-item" href="/board/debateRoom.do" style="letter-spacing: 0.05em">토론방</a>
                                                </li>
                                            </ul>
                                        </li>

                                        <li class="dropdown">
                                            <a class="dropdown-item dropdown-toggle " href="/board/mylotto_payment.do">나의로또<i class="fas fa-chevron-down"></i></a>
                                            <ul class="dropdown-menu">
                                                <li>
                                                    <a class="dropdown-item" href="/board/mylotto_payment.do">결제게시판</a>
                                                </li>
                                                <li>
                                                    <a class="dropdown-item" href="/myUpdate.do">내정보수정</a>
                                                </li>
                                            </ul>
                                        </li>

                                        <li class="dropdown">
                                            <a class="dropdown-item dropdown-toggle " href="/board/notice.do">
                                                고객센터
                                                <i class="fas fa-chevron-down"></i></a>
                                            <ul class="dropdown-menu">
                                                <li>
                                                    <a class="dropdown-item" href="/board/notice.do">공지사항</a>
                                                </li>
                                                <li>
                                                    <a class="dropdown-item" href="/board/mattersForInquiry.do">1:1상담하기</a>
                                                </li>
                                            </ul>
                                        </li>


                                        <%--<li class="dropdown nav_icon dropdown-reverse">
                                            <a class="nav_icon dropdown-item" href="https://www.youtube.com/channel/UC4FcZUxwwBj0RsVbtVay3Bg/featured" target="_blank">
                                                <img src="img/icon_youtube.png" alt="유튜브">
                                            </a>
                                        </li>--%>
                                    </ul>
                                </nav>
                            </div>

                            <button class="btn header-btn-collapse-nav" data-toggle="collapse" data-target=".header-nav-main nav">
                                <i class="fas fa-bars"></i>
                            </button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</header><!--end:메뉴-->

<%--
<div id="top"><a href="#"><img src="/img/top-btn.jpg"></a></div>--%>

<script>
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

    $(document).ready(function(){
        $('#mobile').click(function() {
            $('.menu_full').fadeIn();
        });
        $('#mobile_x').click(function() {
            $('.menu_full').fadeOut();
        });
    });
</script>
