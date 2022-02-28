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



<script>
    function deposit(){
        var id = "${user_id}";

        if($("#name").val() == ''){
            alert('입금자 성명을 입력해 주세요.');
            return false;
        }

        var message = "입금자 명 : " + $("#name").val()+
            "\n입금 금액 :" +
            "\n\n위 정보가 맞으면 확인을 눌러주세요." +
            "\n입금자 성명이 맞지 않으면 등급 전환 처리가 어려울 수 있습니다." +
            "" +
            "";
        if(confirm(message)){

            var requestParam = {
                "data":{
                    "id" : id,
                    "grade" : "",
                    "name" : $("#name").val()
                }
            };

            console.log(requestParam);

            $.ajax({
                type: 'POST',
                url: '/membership/deposit.do',
                data: JSON.stringify(requestParam),
                success: function(data) {
                    if(data == '\"SUCCESS\"'){
                        alert("회원가입에 성공하였습니다.");
                        location.href = '/login/login.do';

                    }else{
                        alert("이미 회원가입 된 휴대폰 번호입니다.\n본인이 가입하지 않았거나, 번호가 바뀌었을 경우에 고객센터에 문의바랍니다.");
                    }


                },
                error : function(request, status, error ) {
                    alert("알 수 없는 이유로 실패하였습니다. " + error);

                },
                contentType: "application/json",
                dataType: 'text'
            });
           alert("");
        }




    }


</script>




<script type="text/javascript">
</script>
</body>
