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
</style>


</head>
<body>

<div class="body">
    <%@include file="../include/headerRenew.jsp"%>
    <div role="main" class="main">


        <section class="page-header page-header-modern page-header-background page-header-background-md overlay overlay-color-dark overlay-show overlay-op-5" style="background-image: url(img/sub_title_bg.jpg);">
            <div class="container">
                <div class="row">
                    <div class="col-md-8 order-2 order-md-1 align-self-center p-static">
                        <h1 class="mb-3 text-9" style="letter-spacing: 0.03em">상품안내/구매</h1>
                        <span class="sub-title">최적의 프리미엄조합수 필터링을 통해 서비스를 제공하는 로또몬입니다.</span>
                    </div>
                    <div class="col-md-4 order-1 order-md-2 align-self-center">
                        <ul class="breadcrumb breadcrumb-light d-block text-md-right">
                            <li><a href="/main.do">Home</a></li>
                            <li class="active">상품안내/구매</li>
                            <li class="active">등급별 상품</li>
                        </ul>
                    </div>
                </div>
            </div>
        </section>


        <div class="container py-4 my-5" style="">
            <div class="row justify-content-center text-center mb-4 appear-animation animated fadeInUpShorter appear-animation-visible" data-appear-animation="fadeInUpShorter" data-appear-animation-delay="400" style="animation-delay: 400ms;">
                <div class="col-lg-8">
                    <div class="txt_type1 text-color-dark">ANALYSIS SYSTEM RATING GUIDE</div>
                    <div class="txt_type3 m-b-70 text-color-dark">분석시스템 상품안내</div>
                </div>
            </div>
            <div class="row featured-boxes featured-boxes-style-4">
                <div class="col-md-12 col-lg-12">
                    <div class="pricing-table pricing-table-no-gap mb-4">
                        <div class="col-md-4 mb-4">
                            <div class="plan">
                                <div class="plan-header">
                                    <h3 class="text-4">다이아 (12개월)</h3>
                                </div>
                                <div class="plan-price py-3">

                                    <div class="rank-img"><img src="/renew/img/goods_03.jpg" alt=""></div>

                                    <span class="price mt-2 mb-2">599,000원</span>
                                </div>
                                <div class="plan-features">
                                    <ul>
                                        <li class="text-color-primary">VVIP자료 + 게시판 열람가능</li>
                                        <li class="text-color-primary">AI필터링 15단계 적용</li>
                                        <li>패턴 매칭 4X4 적용</li>
                                        <li>조합 및 당첨 결과 문자발송</li>
                                        <li>조합수 : 20조합</li>
                                    </ul>
                                </div>
                                <div class="plan-footer">
                                    <a href="#none" class="btn btn-dark btn-modern btn-outline py-2 px-4 text-3" onclick="goPage('diamond');">구매하기</a>

                                </div>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="plan plan-featured">
                                <div class="plan-header bg-primary">
                                    <h3 class="text-4">브론즈 (1개월)</h3>
                                </div>

                                <div class="plan-price py-3">

                                    <div class="rank-img"><img src="/renew/img/goods_bronze.jpg" alt=""></div>

                                    <span class="price mt-2 mb-2">39,900원</span>
                                </div>
                                <div class="plan-features">
                                    <ul>
                                        <li class="text-color-primary">비공개자동게시판 열람가능</li>
                                        <li class="text-color-primary">AI필터링 8단계 적용</li>
                                        <li>패턴 매칭 3X3 적용</li>
                                        <li>조합 및 당첨 결과 문자발송</li>
                                        <li>조합수 : 20조합</li>
                                    </ul>
                                </div>
                                <div class="plan-footer">
                                    <a href="#none" class="btn btn-primary btn-modern py-2 px-4 text-3" onclick="javascript:goPage('bronze');">구매하기</a>
                                </div>
                            </div>
                        </div>

                        <div class="col-md-4 mb-4">
                            <div class="plan">
                                <div class="plan-header">
                                    <h3 class="text-4">마스터 (24개월)</h3>
                                </div>
                                <div class="plan-price py-3">

                                    <div class="rank-img"><img src="/renew/img/goods_04.jpg" alt=""></div>

                                    <span class="price mt-2 mb-2">999,000원</span>
                                </div>
                                <div class="plan-features">
                                    <ul>
                                        <li class="text-color-primary">VVIP자료 + 게시판 열람가능</li>
                                        <li class="text-color-primary">AI필터링 15단계 적용</li>
                                        <li>패턴 매칭 4X4 적용</li>
                                        <li>조합 및 당첨 결과 문자발송</li>
                                        <li>조합수 : 20조합</li>
                                    </ul>
                                </div>
                                <div class="plan-footer">
                                    <a href="#none" class="btn btn-dark btn-modern btn-outline py-2 px-4 text-3" onclick="goPage('marster');">구매하기</a>
                                </div>
                            </div>
                        </div>
                    </div>



                    <div class="pricing-table pricing-table-gap mb-4 mt-5 justify-content-center">
                        <div class="col-md-4 mb-4">
                            <div class="plan">
                                <div class="plan-header">
                                    <h3 class="text-4">골드 (6개월)</h3>
                                </div>
                                <div class="plan-price py-3">

                                    <div class="rank-img"><img src="/renew/img/goods_02.jpg" alt=""></div>

                                    <span class="price mt-2 mb-2">399,000원</span>
                                </div>
                                <div class="plan-features">
                                    <ul>
                                        <li class="text-color-primary">VVIP자료 + 게시판 열람가능</li>
                                        <li class="text-color-primary">AI필터링 12단계 적용</li>
                                        <li>패턴 매칭 3X3 적용</li>
                                        <li>조합 및 당첨 결과 문자발송</li>
                                        <li>조합수 : 20조합</li>
                                    </ul>
                                </div>
                                <div class="plan-footer">
                                    <a href="#none" class="btn btn-dark btn-modern btn-outline py-2 px-4 text-3" onclick="goPage('gold'););">구매하기</a>
                                </div>
                            </div>
                        </div>

                        <!--<div class="col-md-4">
                            <div class="plan plan-featured">
                                <div class="plan-header bg-primary">
                                    <h3 class="text-4">프리미엄 (24개월+12개월)</h3>
                                </div>

                                <div class="plan-price py-3">

                                <div class="rank-img"><img src="/renew/img/goods_05.jpg" alt=""></div>

                                    <span class="price mt-2 mb-2">1,599,000원</span>
                                </div>
                                <div class="plan-features">
                                    <ul>
                                        <li class="text-color-primary">VVIP자료 + 게시판 열람가능</li>
                                        <li class="text-color-primary">AI필터링 15단계 적용</li>
                                        <li>패턴 매칭 4X4 적용</li>
                                        <li>조합 및 당첨 결과 문자발송</li>
                                        <li>조합수 : 20조합</li>
                                    </ul>
                                </div>
                                <div class="plan-footer">
                                    <a href="#none" class="btn btn-primary btn-modern py-2 px-4 text-3" onclick="javascript:pay('17');">구매하기</a>
                                </div>
                            </div>
                        </div>-->

                        <div class="col-md-4 mb-4">
                            <div class="plan">
                                <div class="plan-header">
                                    <h3 class="text-4">실버 (3개월)</h3>
                                </div>
                                <div class="plan-price py-3">

                                    <div class="rank-img"><img src="/renew/img/goods_01.jpg" alt=""></div>

                                    <span class="price mt-2 mb-2">299,000원</span>
                                </div>
                                <div class="plan-features">
                                    <ul>
                                        <li class="text-color-primary">VVIP자료 + 게시판 열람가능</li>
                                        <li class="text-color-primary">AI필터링 12단계 적용</li>
                                        <li>패턴 매칭 3X3 적용</li>
                                        <li>조합 및 당첨 결과 문자발송</li>
                                        <li>조합수 : 20조합</li><!--여기-->
                                    </ul>
                                </div>
                                <div class="plan-footer">
                                    <a href="#none" class="btn btn-dark btn-modern btn-outline py-2 px-4 text-3" onclick="javascript:goPage('silver');">구매하기</a>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </div>

    </div><!--end:main-->


    <!------공통:푸터------>
    <%@include file="../include/footerRenew.jsp"%>
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
    <div class="membership">
        <div class="wrap">
            <div class="left">
                <h2>멤버십안내</h2>
                <div>
                    <a href="./membership.do" class="on">멤버십 안내</a>
                    &lt;%&ndash;<a href="./membershipPay.do">멤버십 결제</a>&ndash;%&gt;
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
                            <div class="img"><img src="${list.image}"><a href="/board/mylotto_payment.do">가입하기</a>
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
                &lt;%&ndash;<table style="border-spacing:0px" ;>
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
                </table>&ndash;%&gt;
                <div class="pay"><a href="/board/mylotto_payment.do">멤버십 결제하기</a></div>
            </div>
        </div>
    </div>
</section>



<%@include file="../include/footer.jsp"%>

--%>

<script>
    function goPage(grade){
        location.href = 'membershipPay.do?sg='+grade;
    }

</script>




<script type="text/javascript">
</script>
</body>
