<%@ page import="com.company.lottomon.model.MembershipPrice" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %>
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
    <div class="membership_pay">
        <div class="wrap">
            <div class="left">
                <h2>멤버십안내</h2>
                <div>
                    <a href="./membership.do">멤버십 안내</a>
                    <a href="./membershipPay.do" class="on">멤버십 결제</a>
                </div>
            </div>
            <div class="content">
                <div class="head">
                    <h2>멤버십결제</h2>
                    <h5>
                        <a href="/"><img src="./img/home.jpg"> 홈</a>
                        <a href="./membership.do"><img src="./img/arrow.png"> 멤버십안내</a>
                        <a href="./membershipPay.do"><img src="./img/arrow.png"> 멤버십결제</a>
                    </h5>
                </div>

                <h2 class="h2">결제정보</h2>
                <form action="#" name="pay_information">

                    <h6>회원제 선택</h6>

                    <label for="silver">
                        <input type="radio" name="rank" value="1" id="silver" style="margin-left:0;" checked>실버회원
                    </label>
                    <label for="gold">
                        <input type="radio" name="rank" value="2" id="gold">골드회원
                    </label>
                    <label for="vip">
                        <input type="radio" name="rank" value="3" id="vip">VIP 회원
                    </label>

                    <h6>분석번호 받으실 요일</h6>
                    <label for="monday">
                        <input type="radio" name="weekday" id="monday" style="margin-left:0;" checked>월
                    </label>
                    <label for="tuesday">
                        <input type="radio" name="weekday" id="tuesday">화
                    </label>
                    <label for="wednesday">
                        <input type="radio" name="weekday" id="wednesday">수
                    </label>
                    <label for="thursday">
                        <input type="radio" name="weekday" id="thursday">목
                    </label>
                    <label for="friday">
                        <input type="radio" name="weekday" id="friday">금
                    </label>
                    <label for="saturday">
                        <input type="radio" name="weekday" id="saturday">토
                    </label>
                    <label for="sunday">
                        <input type="radio" name="weekday" id="sunday">일
                    </label>

                    <h6>분석번호 받으실 핸드폰번호
                    </h6>
                    <select id="tel_num" name="tel_num" class="tel_num">
                        <option value="010">010</option>
                        <option value="011">011</option>
                        <option value="016">016</option>
                    </select><span>-</span>
                    <input type="text" name="tel_h2_1" id="tel_h2_1" class="tel_num"><span>-</span>
                    <input type="text" name="tel_h2_2" id="tel_h2_2" class="tel_num">
                    <h6>결제수단</h6>
                    <label for="tel">
                        <input type="radio" name="payment_method" id="tel" style="margin-left:0;" checked>휴대전화
                    </label>
                    <label for="card">
                        <input type="radio" name="payment_method" id="card">신용카드
                    </label>
                    <label for="bank">
                        <input type="radio" name="payment_method" id="bank">무통장입금
                    </label>
                    <h6>무통장입금 계좌</h6>
                    <select id="account" name="account">
                        <option value="">국민 123-456-78900 (주)로또몬</option>
                        <option value="">신한 123-456-78900(주)로또몬</option>
                        <option value="">농협 123-456-78900(주)로또몬</option>
                    </select>
                    <h6>무통장입금 입금자명</h6>
                    <input type="text" name="account_name" id="account_name" placeholder="홍길동">
                    <h6>기간</h6>
                    <label for="one_month">
                        <input type="radio" name="term" id="one_month" value="1" style="margin-left:0;" checked>1개월
                    </label>
                    <label for="three_month">
                        <input type="radio" name="term" id="three_month" value="3">3개월
                    </label>
                    <label for="six_month">
                        <input type="radio" name="term" id="six_month" value="6">6개월
                    </label>
                    <label for="one_year">
                        <input type="radio" name="term" id="one_year" value="12">12개월
                    </label>
                    <h6>결제금액</h6>
                    <label class="amount-of-payment">
                        <p class="member_price"><span>멤버십금액</span><span id="price"></span></p>
                        <p class="event_price"><span>-이벤트할인</span><span id="discountPrice"></span></p>
                        <p class="total"><span>합계</span><span id="totalPrice"></span></p>
                    </label>
                    <h6>이용약관</h6>
                    <textarea name="Terms-of-service" style="resize: none;" readonly>제 1 조 (총칙)
                        (주)브레인콘텐츠(이하 “회사”)의 이용약관은 다음과 같고, 회사는 로또리치(lottorich)라는 명칭의 웹 사이트(http://www.lottorich.co.kr), 모바일 사이트(http://m.lottorich.co.
                        kr), 어플리케이션을 운영하고 있습니다(이하 회사를 통칭하여 “로또리치”). 로또리치는 종합 콘텐츠 포털 서비스를 제공하는 사이트로 복권 콘텐츠 및 영화, 만화, 운세, 게임 등 각</textarea>
                    <label>

                        <input type="checkbox" name="Terms-of-service" checked> 이용약관에 동의합니다.
                    </label>
                    <div class="submit">
                        <input type="submit" value="멤버십 결제하기"></div>
                </form>
            </div>
        </div>
    </div>
</section>
<%@include file="../include/footer.jsp"%>

<script>
    var membership_seq = '1';
    var maintain_month = '1';

    $(document).on('ready',function(){
        changeMs(membership_seq, maintain_month);


        $("input[name='term']").on('change',function(){
            membership_seq = $("input[name='rank']:checked").val();
            maintain_month = $("input[name='term']:checked").val();

            changeMs(membership_seq, maintain_month);
        })

        $("input[name='rank']").on('change',function(){
            membership_seq = $("input[name='rank']:checked").val();
            maintain_month = $("input[name='term']:checked").val();

            changeMs(membership_seq, maintain_month);
        })
    })

    function changeMs(membership_seq, maintain_month){

        var requestParam = {
            "data":{
                "membership_seq" : membership_seq,
                "maintain_month": maintain_month
            }
        };

        $.ajax({
            type: 'POST',
            url: '/membership/getPrice.do',
            data: JSON.stringify(requestParam),
            success: function(data) {
                const obj = JSON.parse(data);

                var price = obj.price.replace(/\B(?<!\.\d*)(?=(\d{3})+(?!\d))/g, ",");
                var discount_price = obj.discount_price.replace(/\B(?<!\.\d*)(?=(\d{3})+(?!\d))/g, ",");
                var total = Number(obj.price) + Number(obj.discount_price);

                total = String(total).replace(/\B(?<!\.\d*)(?=(\d{3})+(?!\d))/g, ",");
                $("#price").html(price+' 원');
                $("#discountPrice").html('-'+discount_price+' 원');
                $("#totalPrice").html(total+' 원');

                if(discount_price == '0' || discount_price == '') $(".event_price").hide();
                else $(".event_price").show();
            },
            error : function(request, status, error ) {
                alert("알 수 없는 이유로 실패하였습니다. " + error);
            },
            contentType: "application/json",
            dataType: 'text'
        });
    }
</script>




<script type="text/javascript">
</script>
</body>
