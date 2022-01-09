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

<title>모바일</title>

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
    <div class="membership">
        <div class="wrap">
            <div class="left">
                <h2>멤버십안내</h2>
                <div>
                    <a href="./membership.do" class="on">멤버십 안내</a>
                    <%--<a href="./membershipPay.do">멤버십 결제</a>--%>
                </div>
            </div>
            <div class="content">
                <div class="head">
                    <h2>멤버십안내</h2>
                    <h5>
                        <img src="./img/home.jpg"> 홈
                        <img src="./img/arrow.png"> 멤버십안내
                        <img src="./img/arrow.png"> 멤버십안내
                    </h5>
                </div>

                <div class="box_vip">
                    <c:forEach items="${membershipList}" var="list">
                        <div class="vip">
                            <div class="img"><img src="${list.image}"><a href="./membership_pay.do">가입하기</a>
                            </div>
                            <div class="txt">
                                <c:set var = "title" value = "${list.title}"/>
                                <c:if test = "${fn:contains(title, '1')}">
                                    <span class="recommendation">추천</span>
                                </c:if>
                                <c:if test = "${fn:contains(title, '2')}">
                                    <span class="sale">기간제 할인</span>
                                </c:if>
                                    <c:if test = "${fn:contains(title, '3')}">
                                        <span class="evert">이벤트 할인</span>
                                </c:if>
                                    <c:if test = "${fn:contains(title, '4')}">
                                        <span class="bonus">보너스 조합</span>
                                </c:if>
                                <h2>${list.name}</h2>
                                <p>${list.content}</p>
                                <span class="money"><fmt:formatNumber value="${list.price}" pattern="#,###" />원</span><span><fmt:formatNumber value="${list.discount_price}" pattern="#,###" />원</span>
                            </div>
                        </div>
                    </c:forEach>
                </div>
                <table style="border-spacing:0px" ;>
                    <tr class="gray">
                        <th>기간</th>
                        <th>실버</th>
                        <th>골드</th>
                        <th>VIP</th>
                    </tr>
                    <tr>
                        <td>1개월</td>
                        <td><fmt:formatNumber value="${silver1}" pattern="#,###" />원</td>
                        <td><fmt:formatNumber value="${gold1}" pattern="#,###" />원</td>
                        <td><fmt:formatNumber value="${vip1}" pattern="#,###" />원</td>
                    </tr>
                    <tr class="gray">
                        <td>3개월</td>
                        <td><fmt:formatNumber value="${silver3}" pattern="#,###" />원</td>
                        <td><fmt:formatNumber value="${gold3}" pattern="#,###" />원</td>
                        <td><fmt:formatNumber value="${vip3}" pattern="#,###" />원</td>
                    </tr>
                    <tr>
                        <td>6개월</td>
                        <td><fmt:formatNumber value="${silver6}" pattern="#,###" />원</td>
                        <td><fmt:formatNumber value="${gold6}" pattern="#,###" />원</td>
                        <td><fmt:formatNumber value="${vip6}" pattern="#,###" />원</td>
                    </tr>
                    <tr class="gray">
                        <td>1년</td>
                        <td><fmt:formatNumber value="${silver12}" pattern="#,###" />원</td>
                        <td><fmt:formatNumber value="${gold12}" pattern="#,###" />원</td>
                        <td><fmt:formatNumber value="${vip12}" pattern="#,###" />원</td>
                    </tr>
                    <tr>
                        <td>3년</td>
                        <td><fmt:formatNumber value="${silver36}" pattern="#,###" />원</td>
                        <td><fmt:formatNumber value="${gold36}" pattern="#,###" />원</td>
                        <td><fmt:formatNumber value="${vip36}" pattern="#,###" />원</td>
                    </tr>
                </table>
                <div class="pay"><a href="/board/mylotto_payment.do">멤버십 결제하기</a></div>
            </div>
        </div>
    </div>
</section>



<%@include file="../include/footer.jsp"%>


<script>
</script>




<script type="text/javascript">
</script>
</body>
