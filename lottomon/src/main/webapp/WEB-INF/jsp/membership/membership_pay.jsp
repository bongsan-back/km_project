<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
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

    <link rel="stylesheet" href="/css/swiper-min.css"/>
    <script src="/js/swiper.min.js"></script>
    <script src="/js/common.js"></script>
    <link rel="stylesheet" type="text/css" href="/css/font.css"/>
    <link rel="stylesheet" type="text/css" href="/css/common.css"/>
    <link rel="stylesheet" type="text/css" href="/css/layout.css"/>
    <link rel="stylesheet" type="text/css" href="/css/header.css"/>
    <link rel="stylesheet" type="text/css" href="/css/footer.css"/>
    <link rel="stylesheet" type="text/css" href="/css/style.css"/>


    <%--리뉴얼--%>
    <!--웹폰트추가-->
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300;400;500&amp;display=swap"
          rel="stylesheet">

    <!-- Mobile Metas -->
    <meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1.0, shrink-to-fit=no">

    <!-- Web Fonts  -->
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700,800%7CShadows+Into+Light%7CPlayfair+Display:400"
          rel="stylesheet" type="text/css">

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
        .placeholder {
            color: #aaa;
        }

        .bank-btn:hover{
            background-color: #d92c26 !important;
            color: #fff;
        }


        .bank-btn{ font-size: 14px; padding: 12px 42px;width: 100%;}
    </style>


</head>
<body>

<div class="body">
    <%@include file="../include/headerRenew.jsp" %>
    <div role="main" class="main">


        <section
                class="page-header page-header-modern page-header-background page-header-background-md overlay overlay-color-dark overlay-show overlay-op-5"
                style="background-image: url(img/sub_title_bg.jpg);">
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
            <div class="row justify-content-center text-center mb-4 appear-animation animated fadeInUpShorter appear-animation-visible"
                 data-appear-animation="fadeInUpShorter" data-appear-animation-delay="400"
                 style="animation-delay: 400ms;">
                <div class="col-lg-8">
                    <div class="txt_type1 text-color-dark">무통장 입금 안내</div>
                    <div class="txt_type3 m-b-70 text-color-dark">선택 요금제</div>
                </div>
            </div>


            <div class="row featured-boxes featured-boxes-style-4">
                <div class="col-md-6 col-lg-6">
                    <div class="pricing-table pricing-table-no-gap mb-4">
                        <div class="col-md-8">
                            <div class="plan plan-featured">
                                <c:choose>
                                    <c:when test="${sg=='bronze'}">
                                        <div class="plan-header bg-primary">
                                            <h3 class="text-4">브론즈 (1개월)</h3>
                                        </div>
                                        <div class="plan-price py-3">
                                            <div class="rank-img"><img src="/renew/img/goods_bronze.jpg" alt=""></div>
                                            <span class="price mt-2 mb-2" id="memPrice">48,800원</span>
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
                                    </c:when>
                                    <c:when test="${sg=='silver'}">
                                        <div class="plan-header bg-primary">
                                            <h3 class="text-4">실버 (3개월)</h3>
                                        </div>
                                        <div class="plan-price py-3">
                                            <div class="rank-img"><img src="/renew/img/goods_01.jpg" alt=""></div>
                                            <span class="price mt-2 mb-2" id="memPrice">299,000원</span>
                                        </div>
                                        <div class="plan-features">
                                            <ul>
                                                <li class="text-color-primary">비공개자동게시판 열람가능</li>
                                                <li class="text-color-primary">AI필터링 12단계 적용</li>
                                                <li>패턴 매칭 3X3 적용</li>
                                                <li>조합 및 당첨 결과 문자발송</li>
                                                <li>조합수 : 20조합</li>
                                            </ul>
                                        </div>
                                    </c:when>
                                    <c:when test="${sg=='gold'}">
                                        <div class="plan-header bg-primary">
                                            <h3 class="text-4">골드 (6개월)</h3>
                                        </div>
                                        <div class="plan-price py-3">
                                            <div class="rank-img"><img src="/renew/img/goods_02.jpg" alt=""></div>
                                            <span class="price mt-2 mb-2" id="memPrice">39,900원</span>
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
                                    </c:when>
                                    <c:when test="${sg=='diamond'}">
                                        <div class="plan-header bg-primary">
                                            <h3 class="text-4">다이아 (12개월)</h3>
                                        </div>
                                        <div class="plan-price py-3">
                                            <div class="rank-img"><img src="/renew/img/goods_03.jpg" alt=""></div>
                                            <span class="price mt-2 mb-2" id="memPrice">599,000원</span>
                                        </div>
                                        <div class="plan-features">
                                            <ul>
                                                <li class="text-color-primary">VVIP자료 + 게시판 열람가능</li>
                                                <li class="text-color-primary">AI필터링 15단계 적용</li>
                                                <li>패턴 매칭 3X3 적용</li>
                                                <li>조합 및 당첨 결과 문자발송</li>
                                                <li>조합수 : 20조합</li>
                                            </ul>
                                        </div>
                                    </c:when>
                                    <c:when test="${sg=='marster'}">
                                        <div class="plan-header bg-primary">
                                            <h3 class="text-4">마스터 (24개월)</h3>
                                        </div>
                                        <div class="plan-price py-3">
                                            <div class="rank-img"><img src="/renew/img/goods_04.jpg" alt=""></div>
                                            <span class="price mt-2 mb-2" id="memPrice">999,000원</span>
                                        </div>
                                        <div class="plan-features">
                                            <ul>
                                                <li class="text-color-primary">VVIP자료 + 게시판 열람가능</li>
                                                <li class="text-color-primary">AI필터링 15단계 적용</li>
                                                <li>패턴 매칭 3X3 적용</li>
                                                <li>조합 및 당첨 결과 문자발송</li>
                                                <li>조합수 : 20조합</li>
                                            </ul>
                                        </div>
                                    </c:when>
                                </c:choose>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-md-6 col-lg-6">
                    <div class="pricing-table pricing-table-no-gap mb-4">
                        <div class="col-md-12">
                            <img src="http://lotto-kingdom.co.kr/renew/img/bankbook.png">
                            <br><br>
                            <div style="font-size: 20px">
                                입금자 성명 <input type="text" id="name" style="font-size: 14px; padding: 5px 5px; width: calc(100% - 100px);"><br><br>
                                <input type="button" value="입금 확인" onclick="javascript:deposit()" class="bank-btn">
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="container py-4 my-5" style="">
                <img src="http://lotto-kingdom.co.kr/renew/img/memberLanding.jpg">
            </div>


        </div>

    </div><!--end:main-->


    <!------공통:푸터------>
    <%@include file="../include/footerRenew.jsp" %>
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


</div>
<a class="scroll-to-top hidden-mobile" href="#"><i class="fas fa-chevron-up"></i></a><!--end:bodyClass-->

<script>
    function deposit() {
        var id = "${user_id}";
        var price = $("#memPrice").val();
        var grade = '${sg}';

        if ($("#name").val() == '') {
            alert('입금자 성명을 입력해 주세요.');
            return false;
        }

        if(grade=='bronze') price = '48,800';
        else if(grade=='silver') price = '299,000';
        else if(grade=='gold') price = '399,000';
        else if(grade=='diamond') price = '599,000';
        else if(grade=='marster') price = '999,999';

        var message = "입금자 명 : " + $("#name").val() +
            "\n입금 금액 : " + price +
            " 원\n\n위 정보가 맞으면 확인을 눌러주세요." +
            "\n입금자 성명이 맞지 않으면 등급 전환 처리가 어려울 수 있습니다.";

        if (confirm(message)) {
            var requestParam = {
                "data": {
                    "id": id,
                    "price" : price,
                    "grade": grade,
                    "bankname": $("#name").val()
                }
            };

            console.log(requestParam);

            $.ajax({
                type: 'POST',
                url: '/membership/deposit.do',
                data: JSON.stringify(requestParam),
                success: function (data) {
                    if (data == '\"SUCCESS\"') {
                        alert("입금 신청이 완료되었습니다.\n입금 확인은 영업시간 외에 신청하실 경우 1~2일이 소요되며 SMS문자 발송 예정입니다.\n\n입금 내역은 나의로또 > 결제 게시판 에서 확인 가능합니다.");
                        location.href = '/board/mylotto_payment.do';
                    } else {
                        alert("결제 요청이 실패되었습니다. 다시 시도해주세요.");
                    }
                },
                error: function (request, status, error) {
                    alert("알 수 없는 이유로 실패하였습니다. " + error);

                },
                contentType: "application/json",
                dataType: 'text'
            });
        }


    }


</script>


<script type="text/javascript">
</script>
</body>
