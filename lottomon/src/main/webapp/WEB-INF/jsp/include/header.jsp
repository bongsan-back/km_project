<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<header id="header">
    <h1 class="logo"><a href="/main.do"><img src="/img/logo_pc.png"></a></h1>

    <div id="mobile">
        <div>
            <span></span>
        </div>
    </div>

    <div class="gnb">
        <div class="wrap">
            <ul>
                <c:if test="${empty user_id }">
                    <li><a href="/login/login.do">로그인</a></li>
                    <li><a href="/login/joinAgree.do">회원가입</a></li>
                </c:if>
                <c:if test="${not empty user_id }">
                    <c:if test="${grade_name == 'normal'}">
                        <li><a href="#none" style="cursor: default">${user_nickname} 님</a></li>
                    </c:if>
                    <c:if test="${grade_name != 'normal'}">
                        <li><a href="#none" style="cursor: default">${user_nickname}(${grade_name}) 님</a></li>
                    </c:if>

                    <li><a href="javascript:logout()">로그아웃</a></li>
                    <li><a href="/myUpdate.do">마이페이지</a></li>
                    <c:if test="${role eq 'ADMIN'}">
                        <li><a href="/admin/main.do">관리자 페이지</a></li>
                    </c:if>
                </c:if>

            </ul>
        </div>
    </div>

    <div class="numder">
        <div><span>3</span></div>
        <div><span>21</span></div>
        <div><span>7</span></div>
        <div><span>13</span></div>
        <div><span>39</span></div>
        <div><span>17</span></div>
        <div><span>27</span></div>
    </div>

    <div class="light">
        <div class="pcleft"><img src="/img/header-light-left.png"></div>
        <div class="pcright"><img src="/img/header-light-right.png"></div>
    </div>

    <div class="menu">
        <nav class="wrap menu_list">
            <ul>
                <li><a href="/winning.do">로또당첨결과</a></li>
                <li><a href="/membership.do">멤버십안내</a></li>
                <li><a href="/board/bulletin.do">커뮤니티</a></li>
                <li><a href="/lotto/thisWeeksNumber.do">나의로또</a></li>
                <li><a href="/board/notice.do">고객센터</a></li>
            </ul>
        </nav>

        <nav class="menu_full">
            <ul class="wrap">
                <li class="rogin_m">
                    <ul>
                        <%if(session.getAttribute("user_id") != null){%>
                            <li><a href="javascript:logout()">로그아웃</a></li>
                            <li><a href="/myUpdate.do">마이페이지</a></li>
                            <%if(session.getAttribute("role").equals("ADMIN")){%>
                                <li><a href="/adminPage.do">관리자 페이지</a></li>
                            <%}%>
                        <%}else{%>
                            <li><a href="/login/login.do">로그인</a></li>
                            <li><a href="/user/join.do">회원가입</a></li>
                        <li><a href="/myUpdate.do">마이페이지</a></li>
                        <%}%>
                        <li id="mobile_x">
                            <div id="mobile">
                                <div>
                                    <span></span>
                                </div>
                            </div>
                        </li>
                    </ul>
                </li>
                <li>
                    <ul>
                        <li><a href='/winning.do'>로또당첨결과</a></li>
                    </ul>
                </li>
                <li>
                    <ul>
                        <li><a href='/membership.do'>멤버십 안내</a></li>
                        <%--<li><a href='/membershipPay.do'>멤버십 결제</a></li>--%>
                    </ul>
                </li>
                <li>
                    <ul>
                        <li><a href='/board/bulletin.do'>자유게시판</a></li>
                        <li><a href='/board/winPrayer.do'>당첨기원게시판</a></li>
                        <li><a href='/board/debateRoom.do'>토론방</a></li>
                        <%--<li><a href='/board/theFirstStory.do'>1등 당첨자이야기</a></li>--%>
                    </ul>
                </li>
                <li>
                    <ul>
                        <li><a href='/lotto/thisWeeksNumber.do'>이번주 나의번호</a></li>
                        <li><a href='/board/mylotto_payment.do'>결제내역</a></li>
                        <li><a href='/myUpdate.do'>내 정보 수정</a></li>
                    </ul>
                </li>
                <li>
                    <ul>
                        <li><a href='/board/notice.do'>공지사항</a></li>
                        <li><a href='/board/mattersForInquiry.do'>1:1문의하기</a></li>
                    </ul>
                </li>
            </ul>
        </nav>
    </div>
</header>
<div id="top"><a href="#"><img src="/img/top-btn.jpg"></a></div>

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
