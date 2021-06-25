<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>  


<!DOCTYPE html>
<html lang="ko"> 
<head>      
   <meta charset="utf-8">
   <meta name="viewport" content="initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, width=device-width, user-scalable=no">
   <meta name="format-detection" content="telephone=no">      
                                                                                                            
   <script src="/resources/js/libs/jquery.min.js"></script>
   <script src="/resources/js/vcui.js"></script>
   <script src="/resources/js/vcui.common-ui.js"></script>
   
   <script src="/resources/js/site.js"></script> 
            
   <title>실시간 현황</title> 
    <link href="/resources/css_2018/base.css" rel="stylesheet" type="text/css">
</head>
                    
<body>
<div id="wrap" class="realTime_wrap" aria-hidden="false" style=""><!--// 실시간 현황 전용 class="realTime_wrap" -->
   <div class="choice_area"><!--// 한문건 부장님 요청 -->
      <div class="choice_form" id="choice_box" style="height: 40px">
               
      </div>   
   </div>      
         
   <!-- 상단 컬러변경 영역 -->
   <section class="sec_head mod_list list_card_type bg_fill_SKT"><!--// 구분class:SKT(bg_fill_SKT), SKB(bg_fill_SKB), 국민카드(bg_fill_kbcard), 롯데카드(bg_fill_lottecard), 삼성카드(bg_fill_samsungcard), 신한카드(bg_fill_shinhancard), 우리카드(bg_fill_wooricard), 하나카드(bg_fill_hanacard), 현대카드(bg_fill_hyundaicard), 가스&amp;에너지(bg_fill_gas), 상하수도(bg_fill_waterPay), 아파트 관리비(bg_fill_aptManagement), 현금영수증카드(bg_fill_cashReceipt), 지방세(bg_fill_wetax)  -->
      <!-- SKT 고객인 경우 -->
      <!-- 현재까지 누적 금액 -->
      <div class="accumulate_wrap" id="getChargeGuideYN">
         
      </div>  
               
      <!-- 신용카드-신용카드 최초 접속 시,공인인증 후 -->
      <div class="accumulate_wrap" id="tobePaid">
          <div class="tit_wrap hide">
            <h2 class="tit">신용카드</h2>
         </div>
         <div class="items item_statement item_charge accumulate_area"> <!--// 실시간현황 누적금액전용:accumulate_area -->
             <dl>
               <dt>
                  <div class="info_group">
                     <span class="img_com_logo"></span>
                     <span class="my_card">
                     <strong class="my_card_num"></strong>
                  </span>
                  </div>      
                  <dl class="item_tblType">
                     <dt></dt>
                     <dd><span class="amount_txt"></span><span class="won">원</span></dd>
                  </dl>
               </dt>
               <dd>
                  <strong>잔여한도</strong>
                  <!--<div class="btns_area">
                     <a href="#none" class="btn_comm impor3 btn_payView">결제예정금액 보기</a><!--// 신용카드 최초 접속 시 노출 
                   </div>-->
               </dd>
            </dl>
         </div> 
      </div>
      <!--// 신용카드-신용카드 최초 접속 시,공인인증 후 -->

      
<!--       <div class="accumulate_wrap" id="cashReceipt">
      각 div마다 hide로 숨겨놓은 이유는 ?
         <div class="tit_wrap hide">
            <h2 class="tit">현금영수증</h2>
         </div>
         <div class="items item_statement item_charge cashReceipt_area">// 현금영수증 전용:cashReceipt_area
            <dl>
               <dt> 
                  현금영수증 카드      
               </dt>
               <dd>      
                  <div class="barcode_box">
                     <div class="barcode_inner">
                        <strong>국세청 현금영수증 카드</strong>
                        <div>
                           바코드 처리영역
                        </div>
                     </div>
                  </div>
               </dd>
            </dl>
         </div>
      </div> -->

               
      <!-- [공통]SKT 고객인 경우,SKT고객이나 요금안내서 미등록,타사고객 -->
      <!-- 이달의 총액 금액 -->
      <div class="exPrice_wrap">
         <div class="tit_wrap hide">
            <h2 class="tit">이달의 총액</h2>
         </div>
         <div class="items item_statement item_charge exPrice_area"><!--// 실시간현황 누적금액전용:accumulate_area -->
            <dl class="item_tblType">
               <dt>이번달 영수증 총액</dt>
               <dd><span class="amount_txt">1,104,232</span><span class="won">원</span></dd>
            </dl>
         </div>
      </div>
      <!--// 이달의 총액 금액 -->
      <!-- 이달의 쿠폰금액 -->
      <div class="exPrice_wrap">
         <div class="tit_wrap hide">
            <h2 class="tit">이달의 쿠폰 총액</h2>
         </div>
         <div class="items item_statement item_charge exPrice_area"><!--// 실시간현황 누적금액전용:accumulate_area -->
            <dl class="item_tblType">
               <dt>이번 달 쿠폰구매 총액</dt>
               <dd><span class="amount_txt">1,104,232</span><span class="won">원</span></dd>
            </dl>   
            <dl class="item_tblType item_discount">
               <dt>이번 달 할인 총액</dt>
               <dd><span class="amount_txt">1,104,232</span><span class="won">원</span></dd>
            </dl>
         </div>
      </div>
      <!--// 이달의 쿠폰 금액 -->
      <!--// [공통]SKT 고객인 경우,SKT고객이나 요금안내서 미등록,타사고객 -->
   </section>
   <!--// 상단 컬러변경 영역 -->
   <input type="hidden" value="<%request.getAttribute("CI");%>" id ="hiddenCI">
   <!-- 일별 금액 --> 
   <section class="sec_content" >
      <div class=" mod_list list_card_type" id="recieptTodayList">
      <!--   <div class="tit_wrap" id="wrapwrap">
         <h2 class="tit">오늘</h2>
      </div>
         <ul>
            <li>
               <div class="items item_receipt">
                  <a id="detail_view" onclick="detailLocaion();">
                     <dl>
                        <dt>
                           <span class="img_receipt"><img src="/resources/images/common/img_receipt.png" alt=""></span>
                        </dt>
                        <dd>
                           <div class="receipt_info">
                              <div class="card_group">
                                 <span class="card_title"><img src="/resources/images/com_logo/logo_lottecard.png" alt="lottecard"></span>
                                 <p class="card_info">
                                    <strong class="card_number">****-****-**84-**12</strong>
                                    <span class="pay_method">
                                 <span class="lumpSum">일시불</span><span class="completePayment">결제완료</span>
                              </span>
                                 </p>
                                 <p class="pay_time">11시 12분</p>
                              </div>
                              <dl class="item_tblType">
                                 <dt class="shop_name ellip">클릭 샘플</dt>&lt;!&ndash;// 한줄처리할 경우:ellip &ndash;&gt;
                                 <dd><span class="amount_txt">1,182,000</span><span class="won">원</span></dd>
                              </dl>
                           </div>
                        </dd>
                     </dl>
                  </a>
               </div>
            </li>
            <li>

            </li>
         </ul>
         <p class="total_box">총 <span class="amount_txt">1,182,000</span><span class="won">원</span></p>-->
      </div>


      <!--<div class=" mod_list list_card_type">
         <div class="tit_wrap">
            <h2 class="tit">2018년 10월 28일</h2>
         </div>
         <ul>
            <li>
               <div class="items item_receipt">
                  <a href="#none">
                     <dl>
                        <dt>
                           <span class="img_receipt"><img src="/resources/images/common/img_receipt.png" alt=""></span>
                        </dt>
                        <dd>
                           <div class="receipt_info">
                              <div class="card_group">
                                 <span class="card_title">현금영수증</span>
                                 <p class="card_info">
                                    <strong class="card_number">****-****-**84-**12</strong>
                                    <span class="pay_method">
                                 <span class="completePayment">결제완료</span>
                              </span>
                                 </p>
                                 <p class="pay_time" title="시간">12:40</p>
                              </div>
                              <dl class="item_tblType">
                                 <dt class="shop_name ellip">장호왕곱창 장호왕곱창장호왕곱창장호왕곱창</dt>&lt;!&ndash;// 한줄처리할 경우:ellip &ndash;&gt;
                                 <dd><span class="amount_txt">1,182,000</span><span class="won">원</span></dd>
                              </dl>
                           </div>
                        </dd>
                     </dl>
                  </a>
               </div>
            </li>
         </ul>
         <p class="total_box">총 <span class="amount_txt">1,182,000</span><span class="won">원</span></p>
      </div>
      &lt;!&ndash; 쿠폰 &ndash;&gt;
      <div class=" mod_list list_card_type">
         <ul>
            <li>
               <div class="items item_coupon">
                  <a href="#none">
                     <dl>
                        <dt>
                           <span class="img_coup_prd"><img src="/resources/images/coupon_prd/coupon_prd.jpg" alt="파리바게뜨 식빵이용권"></span>
                        </dt>
                        <dd>
                           <div class="prd_info">
                              <div class="prd_info_inner">
                                 <p class="coupon_txt">Coupon</p>
                                 <p class="coupon_dsc_type ellip">촉촉한 우유식빵 20%할인권</p>
                                 <div class="prd_desc">
                                    <span class="brand_name">파리바게뜨</span>
                                    <span class="org_price">20,000원</span>
                                    <span class="coupon_price"><span class="amount_txt">18,000</span><span class="won">원</span></span>
                                 </div>
                                 <p class="coupon_info">
                                    유효기간 <strong class="exDate">2018.11.30</strong>
                                 </p>
                                 <p class="day_time" title="시간">11:20</p>
                              </div>
                           </div>
                        </dd>
                     </dl>
                  </a>
               </div>
            </li>
            <li>
               <div class="items item_coupon disabled">
                  <a href="#none">
                     <dl>
                        <dt>
                           <span class="img_coup_prd"><img src="/resources/images/coupon_prd/coupon_prd.jpg" alt="파리바게뜨 식빵이용권"></span>
                        </dt>
                        <dd>
                           <div class="prd_info">
                              <div class="prd_info_inner">
                                 <p class="coupon_txt">Coupon</p>
                                 <p class="coupon_dsc_type ellip">촉촉한 우유식빵 20%할인권</p>
                                 <div class="prd_desc">
                                    <span class="brand_name ellip">파리바게뜨파리바게뜨파리바게뜨</span>&lt;!&ndash;// 한줄처리할 경우:ellip &ndash;&gt;
                                    <span class="org_price">20,000원</span>
                                    <span class="coupon_price"><span class="amount_txt">18,000</span><span class="won">원</span></span>
                                 </div>
                                 <p class="coupon_info">
                                    유효기간 <strong class="exDate">2018.11.30</strong>
                                 </p>
                                 <p class="day_time" title="시간">11:20</p>
                              </div>
                           </div>
                        </dd>
                     </dl>
                  </a>
               </div>
            </li>
         </ul>
      </div>
      &lt;!&ndash;// 쿠폰 &ndash;&gt;
      &lt;!&ndash; 광고 &ndash;&gt;
      <div class="ad_area">
         <a href="#none" target="_blank"><img src="/resources/images/banner/temp_ad.png" alt="광고 샘플"></a>
      </div>
      &lt;!&ndash;// 광고 &ndash;&gt;
      <div class=" mod_list list_card_type">
         <div class="tit_wrap">
            <h2 class="tit">2018년 10월 27일</h2>
         </div>
         <ul>
            <li>
               <div class="items item_receipt">                           
                  <a href="#none">   
                     <dl>                                                                                    
                        <dt>
                           <span class="img_receipt"><img src="/resources/images/common/img_receipt.png" alt=""></span>
                        </dt>
                        <dd>
                           <div class="receipt_info">
                              <div class="card_group">
                                 <span class="card_title">현금영수증</span>
                                 <p class="card_info">
                                    <strong class="card_number">****-****-**84-**12</strong>
                                    <span class="pay_method">
                                 <span class="completePayment">결제완료</span>
                              </span>
                                 </p>
                                 <p class="pay_time" title="시간">12:40</p>
                              </div>
                              <dl class="item_tblType">
                                 <dt class="shop_name ellip">장호왕곱창</dt>&lt;!&ndash;// 한줄처리할 경우:ellip &ndash;&gt;
                                 <dd><span class="amount_txt">1,182,000</span><span class="won">원</span></dd>
                              </dl>
                           </div>
                        </dd>
                     </dl>
                  </a>
               </div>
            </li>
         </ul>
         <p class="total_box">총 <span class="amount_txt">1,182,000</span><span class="won">원</span></p>
      </div>-->
   </section>
   <!--// 일별 금액 -->
   <!-- 일별 금액 -->
   <div class="btns_area more_area" id="moreBtnDiv"><!--// 더 보기 click 시 section class="sec_content"단위로 추가 -->
      <button type="button" class="btn_comm impor3 btn_more_view" id="add_btn" onClick = "monthPlus()" style="outline:none">한달 더보기<span class="icon_arrow icon_arrow_down"></span></button>
   </div>   
   <!--// 더보기 -->    
</div>

    
    <div id="lay_wrap" class="lay_message lay_message_type2 lay_receipt_detail" style="height:80%"><!--// 전자영수증 상세전용:lay_receipt_detail -->
    <div class="lay_content">
      <div class="head_group">
         <h1 class="tit_message">
            <strong class="strong"></strong>
         </h1>
      </div>
        <div class="cnt_message">
         <div class="scrollY">
             <div class="rtpage_box">
               <div class="rtpage_inbox" id="rtpage"> 
                                                                  
               </div>
            </div>
         </div>
        </div>
    </div>
    <footer class="lay_footer">
        <button type="button" class="fl_l ui_modal_close">취소</button>
        <button type="button" class="fl_r em ui_modal_close">확인하기</button>
    </footer>
</div>
    
    
    
    
    
    
    
    
    









<!-- Status bar overlay for fullscreen mode-->
<div class="statusbar-overlay"></div>


<!-- Panels overlay-->
<div class="panel-overlay"></div>


<div class="views">
    <div class="view view-main">


        <!-- 리뉴얼 스타일 -->
<style type="text/css">

.page { background:#333333 !important; overflow:visible !important; display: none; }
.page-content { padding-top:0 !important; max-width: 450px; margin: 0 auto;}

.latest_contitle { color:#747474; background:#0d0d0d; }
.latest_contitle h2 { padding:15px 15px; font-size:1em; font-weight:400; color:#fff; }
.latest_contitle h2 span { float:right; color:#ddd; border:1px solid #666; border-radius:8px; font-size:0.7em; padding:0 5px; margin-left:5px; line-height:21px; }
.latest_contitle h2 span.active { border:1px solid #539bff; color:#539bff; }

.latest_coninfo { padding:8px 15px; color:#bbb; background:#222; font-size:0.7em; text-align:left; border-bottom:1px solid #333;}
.latest_coninfo .latest_allsms { width:50%; float:left; background:url(common/sms.png) no-repeat left; line-height:20px; padding-left:25px;}
.latest_coninfo .latest_allrec { width:50%; float:right; background:url(common/receipt.png) no-repeat left; line-height:20px; padding-left:25px;}
.latest_coninfo > div span { color:#e5e5e5; } 


.rec_top { position:relative; width:100%; height:40px; border-bottom:1px solid #e5e5e5;  }
.rec_top .rec_arrow { width:30px; height:40px; position:absolute; z-index:20; top:0px; }
.rec_top .left_arrow { background:url(common/left.png) no-repeat; left:20px; }
.rec_top .right_arrow { background:url(common/right.png) no-repeat; right:20px; }

.rtpage_box { background:#585858; margin-bottom:20px; font-size:12px; line-height:1.2em; }
.rtpage_inbox { background:#fff; padding:0px 15px;}
.rtpage_holl { padding:5px 5px 15px 5px; height:35px; }
.rtpage_holl div { width:6%; height:100%; margin:0 2%; border-radius:30px; border:1px solid #e5e5e5; float:left; background:#f2f2f2; }

.rt_title { padding:30px 0 20px 0; }
.rt_title h2 { text-align:center; font-size:2em; font-weight:700; color:#000; clear:both; padding:5px 0 15px 0; }
.rt_title p { text-align:center; font-size:1em; color:#000; clear:both; }

.rt_txt01 { text-align:left; font-size:1em; color:#666; clear:both; padding:0px 10px; }
.rt_txt01 span { text-align:right; float:right; }

.rt_tax { text-align:left; font-size:1.3em; font-weight:500; color:#333; clear:both; padding:10px 10px; border-top:1px dashed #aaa;border-bottom:1px dashed #aaa; margin-top:10px;}
.rt_tax span { text-align:right; float:right; }

.rt_sms { text-align:left; font-size:1.3em; font-weight:500; color:#333; clear:both; padding:10px 10px; border-bottom:1px solid #ddd; margin-top:10px;}
.rt_sms span { text-align:right; float:right; font-size: 13px;}

.rt_total { text-align:left; font-size:1.5em; font-weight:700; color:#000; clear:both; padding:20px 10px; border-bottom:1px dashed #aaa;  }
.rt_total span { text-align:right; float:right; }

.rt_orderno { border-bottom:1px dashed #aaa; border-top:1px dashed #aaa; padding:20px 0; margin-top:20px; }
.rt_orderno p { text-align:center; font-size:1.2em; color:#666; clear:both; }
.rt_orderno h2 { text-align:center; font-size:1.8em; color:#000; clear:both; padding:5px 0; }

.rt_table { border-top:1px solid #ddd; margin:20px 5px 0px 5px;  }
.rt_table .rt_tabletitle { border-bottom:1px solid #ddd; background:#fff;}
.rt_table li { float:left; padding:5px 0; text-align:center; color:#333; }
.rt_table li.rt_mlat01 { width:45%; }
.rt_table li.rt_mlat02 { width:20%; }
.rt_table li.rt_mlat03 { width:10%; }
.rt_table li.rt_mlat04 { width:20%; text-align:right; padding-right:5px; }

.rt_etc { text-align:left; font-size:1.3em; font-weight:700; color:#333; clear:both; padding:10px 10px; border-bottom:1px dashed #aaa; }
.rt_etc span { text-align:right; float:right; }

.rt_copy { text-align:center; font-size:0.7em; margin-bottom: 30px; }

.rt_btn { margin-bottom:30px; text-align:center;}
.rt_email { border-radius:4px; background:#222; color:#fff; text-align:center; padding:8px 10px; width:35%; font-size:13px; margin:0 auto; }

.rt_card{  padding: 10px; color: #232323; font-size: 12px; border-bottom: 1px dashed #aaaaaa; }

.exit_a img{width: 30px;position: absolute;right: 35px;}

.rt_textarea{ width:  100%; height: 110px; border-top: none; border-left: 1px solid #ddd; border-bottom:  1px solid #ddd; border-right:  1px solid #ddd;}
               
.receipt{background-color: #666}
</style>

<!--       
        <div class="pages navbar-through toolbar-through">
            <div data-page="index" class="page">
                <div class="page-content receipt">

                    <div class="pages navbar-through toolbar-through">
                        <div data-page="index" class="page">
                            <div class="page-content">

                                <div class="receipt_con">

                                    <div class="rtpage_box">
                                        <div class="rtpage_inbox" id="rtpage">

                                        </div>
                                    </div>

                                                                        

                                </div>
                            </div>
                        </div>
                    </div>
                                                                                          
                </div> 
            </div> -->


        </div>


    </div>
<%String ACTION_ID = (String)request.getAttribute("ACTION_ID"); %>
<%String MDN  = (String)request.getAttribute("MDN"); %>
<%String CUST_CI = (String)request.getAttribute("CUST_CI"); %>
<%String CUST_CODE = (String)request.getAttribute("CUST_CODE"); %>
<%String PATTERN_YN = (String)request.getAttribute("PATTERN_YN"); %>
<%String FeeGuideYN = (String)request.getAttribute("FeeGuideYN");%>
<%String SKT_REG_YN = (String)request.getAttribute("SKT_REG_YN");%>
<%String CertYn = (String)request.getAttribute("CertYn");%>
<%String ENC = (String)request.getAttribute("ENC");%>		

<script type="text/javascript">

/////////////////기본 정보 값 관련///////////////////////////
var ACTION_ID = "<%=ACTION_ID%>";      
var MDN = "<%=MDN%>";						
var CUST_CI = "<%=CUST_CI%>";                              
var CUST_CODE = "<%=CUST_CODE%>";         
var PATTERN_YN = "<%=PATTERN_YN%>";   
var SKT_REG_YN =    "<%=SKT_REG_YN%>";            
var FeeGuideYN = "<%=FeeGuideYN%>";   
var CertYn = "<%=CertYn%>";   
var ENC = "<%=ENC%>";      
      
      
var popup_select_view = null;
var popup_select_main = null;
var popup_select_cnt = 1 ;

/* 갱신구분 */
var ref = false;

var cardCodeList = null;         

//팝업에서 선택된 카드의 정보 (번호/코드)
var selectCardCd = null;
var selectCardNo = null;


///////////////////////////////////////////////////////////               

//////////////////카드 팝업 리스트 관련//////////////////////
var get_selectCard = null;
var getCardListsize = null;
////////////////////////////////////////////////////////////

var TOT_array = new Array();
                           
var dateObj = new Date();

var year = dateObj.getFullYear();
   
var month = dateObj.getMonth()+1;

if(month < 10){
      month = "0"+month;
}


/* 1년전 날짜 갱신 */
var last_year = dateObj.getFullYear()-1;
var last_y = last_year + "-" + month;

/* <!--월 조회 단위 추가 변수--> */
var plus = 1;

var day = dateObj.getDate()+1;

var nowMonth = year+"-"+month;
         

/* <!--리스트용 today--> */
var today = year + "-" + month + "-" + day;

var card_today = year + month + day;

var startDate = year+""+month+"01";
   
var endDate = card_today;

var flag = false;

/* <!--오늘자 변환용--> */
var todayNow = today;
/* <!--오늘자 변환용--> */
var cardtodayNow = card_today;

/* <!--반복문용 int형--> */
var dayNumber = parseInt(day);

var forDay = dayNumber;

var TOT_AMT = 0;

var count = 0;

var chargeguide_str = '';

var str = '';
var appendStr = "";          
/* <!--TOT_array용 전역 배열index(더보기 기능추가 후 수정)--> */
var amount_total = 1;

/* <!--amount_txt id용 전역 변수(더보기 기능추가 후 수정)--> */
var amount_number = 1;


/* 요금안내서 변수 */
var payResult = "";
var payJsonObj = {};
   
// 모달 샘플
      


function choice_List(mainStr){
   //window.DRApp.toastLongTest(choiceNm);
   var choicebox_str = "";
      
   choicebox_str += '<div style="width: 90%;height: 40px;float: left;" onClick="choice_box_drop()"><div class="iText">'; 
   choicebox_str += '   <input type="text" value="' + mainStr + '" readonly="readonly" name="" >';
   choicebox_str += '</div> <span class="hide">확인</span>   ';
   choicebox_str += '<button type="button" class="choice_btn" title="전체 선택" aria-label="실시간 현황 선택-전체,신용카드,현금영수증카드,쿠폰&amp;이벤트 레이어 팝업 선택"></button></div>';
   choicebox_str += '<div style="width: 10%;float: left;text-align: center;max-width: 50px;" onclick="listRefresh();">';
   choicebox_str += '   <a href="#" style="margin: 0 auto;text-align: center;" >';
   choicebox_str += '      <img src="/resources/images/icon/refresh.png" >';
   choicebox_str += '</a>';
   choicebox_str += '<div>';
   

   $("#choice_box").empty();
   $("#choice_box").append(choicebox_str);

   if(mainStr=="전체"){
      popup_select_view = "all";
   }else if(mainStr == "전자영수증"){
      popup_select_view = "receipt";
   }else if(mainStr == "쿠폰&이벤트"){
      popup_select_view = "coupon";
   }else{
      pupip_select_view = mainStr;
   }
};
    
   
                  






//조회 버튼  호출(선택 된 값 보내기)
function paid_search() {
   if(get_selectCard == null){
      //window.DRApp.btn_cancel();
   }
   else if(get_selectCard == 0){ //전체
      window.DRApp.btn_search(999);
   }
   else if(get_selectCard == getCardListsize + 1 ){ //쿠폰&이벤트 선택 시
      window.DRApp.btn_search(888);
   }
   else //카드 선택 시
   {   
      window.DRApp.btn_search(get_selectCard);
   }
};

function select_radiobutton() {
   var cardradiobtn = document.getElementsByName('form_rad');
    for(var i=0;i<cardradiobtn.length;i++){
      if(cardradiobtn[i].checked == true){
         get_selectCard = i; //선택 된 카드 인덱스
         //window.DRApp.toastLongTest(get_selectCard);
         return;
      }
    }
}







/* //공인인증 후 신용카드-신용카드 최초 접속 
function tobePaid(cardComNm,cardNo,cardComImg){
   // 변수값을 미리 정해놓을 필요가 없음. DB에서 가져온 컬럼명으로 삽입.
   var paidStr = "";

   var CardAmtInfo = window.DRApp.get_CardAmtInfo();
   var jsonCardAmtInfo = JSON.parse(CardAmtInfo); //Json으로 변환

   var CardLimitInfo = window.DRApp.get_CardLimitInfo();
   var jsonCardLimitInfo = JSON.parse(CardLimitInfo); //Json으로 변환

   paidStr += '<div class="tit_wrap hide">';
   paidStr +=       '<h2 class="tit">신용카드</h2>';
   paidStr += '</div>';
   paidStr += '<div class="items item_statement item_charge accumulate_area">';
   paidStr +=       '<dl>';
   paidStr +=          '<dt>';         
   paidStr +=            '<div class="info_group">';
   paidStr +=               '<span class="img_com_logo"><img src="/resources/images/com_logo/' + cardComImg +'.png" alt="lottecard"></span>';
   paidStr +=               '<span class="my_card">';
   paidStr +=               '<strong class="my_card_num">' + cardNo + '</strong>';
   paidStr +=               '</span>';
   paidStr +=            '</div>';   
   paidStr +=            '<dl class="item_tblType">';                  
   paidStr +=               '<dt>' + jsonCardAmtInfo.settleDt.substring(4,6) + '월' + jsonCardAmtInfo.settleDt.substring(6,8) + '일' + ' 결제 예정금액</dt>';   
   paidStr +=               '<dd><span class="amount_txt">' + numCommas(jsonCardAmtInfo.settleAmt) +'</span><span class="won">원</span></dd>';
   paidStr +=            '</dl>';      
   paidStr +=         '</dt>';
   paidStr +=         '<dd>';
   paidStr +=            '<strong>잔여한도</strong>';
   paidStr +=            '<dl class="item_tblType"><dt>총한도(원)</dt><dd><span class="amount_txt">' + numCommas(jsonCardLimitInfo.limitAmt) +'</span><span class="won">원</span></dd></dl>';
   paidStr +=            '<dl class="item_tblType"><dt>사용금액</dt><dd><span class="amount_txt">' + numCommas(jsonCardLimitInfo.useAmt) +'</span><span class="won">원</span></dd></dl>';
   paidStr +=            '<dl class="item_tblType"><dt>잔여한도</dt><dd><span class="amount_txt">' + numCommas(jsonCardLimitInfo.ableAmt) +'</span><span class="won">원</span></dd></dl>';
   paidStr +=            '<div class="btns_area">';
   paidStr +=               '<a href="#none" class="btn_comm impor3 btn_payView">결제예정금액 보기</a>';
   paidStr +=            '</div>';
   paidStr +=         '</dd>';
   paidStr +=      '</dl>';                     
   paidStr += '</div>';                     
   
   $("#tobePaid").empty();
   $("#tobePaid").append(paidStr);
} */   


//현금영수증 정보 화면 
function cahsReceipt(){
   
   var cashStr = "";
   
   cashStr += '<div class="tit_wrap hide">';
   cashStr +=      '<h2 class="tit">현금영수증(새로운삽입)</h2>';
   cashStr += '</div>';
   cashStr += '<div class="items item_statement item_charge cashReceipt_area">';
   cashStr +=      '<dl>';
   cashStr +=         '<dt>';
   cashStr +=         '현금영수증 카드';
   cashStr +=         '</dt>';
   cashStr +=         '<dd>';   
   cashStr +=            '<div class="barcode_box">';
   cashStr +=               '<div class="barcode_inner">'; 
   cashStr +=                  '<strong>국세청 현금영수증 카드</strong>';            
   cashStr +=                  '<div>';                  
   cashStr +=                     '바코드 처리영역';
   cashStr +=                  '</div>';
   cashStr +=               '</div>';   
   cashStr +=            '</div>'; 
   cashStr +=         '</dd>'
   cashStr +=      '</dl>';   
   cashStr += '</div>';1
                     
   $("#cahsReceipt").empty();      
   $("#cahsReceipt").append(cashStr);
}   

                                 
            
//detail 호출
function detailLocaion(barcode, bizNo, sms_no) {
			
	if(barcode == ""){
	
		$.ajax({
		      type : "post",
		      dataType : "json",
		       /* url : "http://localhost:8080/theReal_SKT/front/skt_receipt_list_detail.do",  */ 
		       url : "/front/skt_receipt_list_detail.do",    
		      data : {
		         cust_ci : "TestCI001",
		         barcode : "", 
		         bizNo : "",
		         sms_no : sms_no,
		         Type : "sms"
		      },
		      success : fn_sms_data
		   });		
	}else{
	
 		$.ajax({
		      type : "post",
		      dataType : "json",
		       /* url : "http://localhost:8080/theReal_SKT/front/skt_receipt_list_detail.do",  */ 
		       url : "/front/skt_receipt_list_detail.do",    
		      data : {			
		         cust_ci : "TestCI001",
		         barcode : barcode, 
		         bizNo : bizNo,
		         sms_no : "",
		         Type : "01"
		      },
		      success : fn_latestDetailData
		});
	}
 };
                            
       		               
//디테일 뿌려주기
function fn_latestDetailData(resdata) {

   /* var res = resdata.detailInfo; */
   var res = resdata.detailInfo.resultMap;
 
   /* var shop = resdata.shopInfo; */         
   var shop = resdata.shopInfo.resultMap;
 	  
   
   detailStr = "";               
   detailStr += '<div class="lay_content">';
   detailStr += '   <div class="head_group">';
   detailStr += '      <h1 class="tit_message">';
   detailStr += '         <strong class="strong">전자영수증 상세보기</strong>';
   detailStr += '      </h1>';
   detailStr += '   </div>';
    detailStr += '    <div class="cnt_message">';
   detailStr += '      <div class="scrollY"><!--// img width:100%처리요함 -->';
   detailStr += '          <div class="rtpage_box">';
   detailStr += '            <div class="rtpage_inbox" id="rtpage">';


   detailStr +='<div class="rt_title"><h2>'+shop[0].SHOP_NAME+'</h2></div>'                                             ;
   detailStr +='<div class="rt_txt01">'+shop[0].SHOP_NAME+'<span>'+shop[0].SALES_DATE+'</span></div>'                        ;
   detailStr +='<div class="rt_txt01">사업자번호:'+shop[0].SHOP_BIZNO+'</div>'                                             ;
   detailStr +='<div class="rt_txt01">대표:'+shop[0].SHOP_CEO+'</div>'                                                ;
   detailStr +='<div class="rt_txt01">전화:'+shop[0].SHOP_TEL_NUM +'</div>'                                             ;
   detailStr +='<div class="rt_txt01">주소:'+shop[0].SHOP_ADDR+'</div>'                                                ;
   detailStr +='<div class="rt_table">';
   detailStr +='      <ul class="rt_tabletitle">';
   detailStr +='         <li class="rt_mlat01">상품명</li>';
   detailStr +='         <li class="rt_mlat02">단가</li>';
   detailStr +='         <li class="rt_mlat03">수량</li>';
   detailStr +='         <li class="rt_mlat04">금액</li>';
   detailStr +='      </ul>';

for(var i=0; i<res.length; i++){

   detailStr +='      <ul>';
   detailStr +='         <li class="rt_mlat01">'+res[i].SALES_PNAME+'</li>                                          ';
   detailStr +='         <li class="rt_mlat02">'+numCommas(res[i].SALES_FP_AMT)+'</li>                     ';
   detailStr +='         <li class="rt_mlat03">'+res[i].SALES_QTY+'</li>                                             ';
   detailStr +='         <li class="rt_mlat04">'+numCommas(res[i].SALES_OPRICE)+'</li>                                 ';
   detailStr +='      </ul>                                                                              ';
}
   detailStr +='</div>                                                                                 ';

   detailStr +='<div class="rt_tax">                                                                        ';
   detailStr +='      주문합계<span>'+numCommas(shop[0].SALES_TOT_AMT)+'</span><br><br>                                    ';
   detailStr +='      공급가금액<span>'+numCommas(shop[0].SALES_SURTAX_AMT)+'</span><br><br>                                    ';
   detailStr +='      부가세<span>'+numCommas(shop[0].SALES_TAX_AMT)+'</span>                                          ';
   detailStr +='</div>                                                                                 ';
   detailStr +='<div class="rt_total">Total<span>'+numCommas(shop[0].SALES_PAID_AMT)+'</span></div>                           ';

if(shop[0].CARD_ICOM != ''){
   detailStr +='<div class="rt_card">';
   detailStr +='<div>거래종류 : <sapn>카드거래</span></div>';
   detailStr +='<div>카드승인 : <sapn>';
   if(shop[0].SALES_TYPE =='RCP01'){
      detailStr += '승인';
   }else if(shop[0].SALES_TYPE =='RCP02'){
      detailStr += '취소';
   }else{
      detailStr += '거래실패';
   }
   detailStr += '</span></div>'; 
   detailStr +='<div>카드번호 : <span>';
   var cardNo = shop[0].CARD_NO;
   if(cardNo.length <= 16){
      cardNo = cardNo.substring(0,4)+"-"+cardNo.substring(4,6)+"**-****-"+cardNo.substring(12,16);
   }else if(cardNo.length > 16){
      cardNo = cardNo.substring(0,7)+"**-****"+cardNo.substring(14,19);
   }
            
   detailStr += cardNo+'</span></div>';
   detailStr +='      <div>승인번호 : <span>'+shop[0].CARD_APP_NO+'</span></div>';
   detailStr +='      <div>카드종류 : <span>'+shop[0].CARD_ICOM+'</span></div>';
   detailStr +='      <div>거래일시 : <span>'+shop[0].SALES_DATE+'</span></div>';
   detailStr +='</div>';
}else if(shop[0].CARD_ICOM == ''){
   detailStr +='<div class="rt_card">';
   detailStr +='      <div>거래종류 : <span>현금거래</span> </div>';
   detailStr +='      <div>거래일시 : <span>'+shop[0].SALES_DATE+'</span></div></div>';
}
   

   detailStr +='<div class="rt_copy">본 영수증은 거래의 참고용으로 사용하시기 바랍니다.</div>';

          

   detailStr +='</div> </div> </div>  </div> </div>';
    detailStr +='<footer class="lay_footer">';
   detailStr +='     <button type="button" class="fl_l ui_modal_close">취소</button>';
    detailStr +='   <button type="button" class="fl_r em ui_modal_close">확인하기</button>';
   detailStr +=' </footer>';      

   $("#lay_wrap").css("height","80%");

    $("#lay_wrap").empty();
   $("#lay_wrap").append(detailStr);
    
   
    $('#lay_wrap').vcModal({
      show:'false'
   });    
 
   //푸터 버튼영역이 있을경우 class 추가
   $("#lay_wrap").children('.lay_footer').parents('#lay_wrap').addClass('lay_hasFoot');
}



function fn_sms_data(resdata){
	
	//var res = resdata.resultMap;
	var resdata = resdata.resultMap;
	
	console.log("sms:::::::::: "+resdata[0].FRT_REGN_NM);
	 
	var detailStr = "";
	
	detailStr +='<a class="exit_a"></a>  '	;
	detailStr += '<div class="rt_title">';
	detailStr += '	<h2>문자 상세 내역</h2>';
	detailStr += '</div>';
	
	detailStr += '<div class="rt_sms"> 내역 <span>'+resdata[0].APP_CO+'</span></div><hr>';
	detailStr += '<div class="rt_sms"> 카드 <span>'+resdata[0].CARD_APP_CO+'</span></div><hr>';
	detailStr += '<div class="rt_sms"> 금액 <span>'+numCommas(resdata[0].APP_AMOUNT)+'</span></div><hr>';
	detailStr += '<div class="rt_sms"> 일시 <span>'+resdata[0].FRT_CREA_DTM+'</span></div><hr>';
	if(resdata[0].INST_DIV!="체크"){
		detailStr += '<div class="rt_sms"> 할부 <span>'+resdata[0].INST_DIV+'</span></div><hr>';
	}
	
	var sumAmount = resdata[0].ACC_SUM_AMMOUNT;	
	if(sumAmount != null){
		detailStr += '<div class="rt_sms"> 누적 <span>'+numCommas(sumAmount)+'</span></div><hr>';
	}
	
	detailStr += '<div class="rt_sms"> 항목 <span>'+resdata[0].APP_CO_DIV+'</span></div><hr>';
	
	detailStr += '<div class="rt_sms"> 메모</div><hr>';
	detailStr += '<textarea class="rt_textarea" readonly>'+resdata[0].SMS_MEMO+'</textarea>';
	
	
	$("#lay_wrap").css("height","80%");

    $("#lay_wrap").empty();
   $("#lay_wrap").append(detailStr);
    
   
    $('#lay_wrap').vcModal({
      show:'false'
   });    
 
   //푸터 버튼영역이 있을경우 class 추가
   $("#lay_wrap").children('.lay_footer').parents('#lay_wrap').addClass('lay_hasFoot');
}





















 
var StringBuffer = function() {
    this.buffer = new Array();
};
StringBuffer.prototype.append = function(str) {
    this.buffer[this.buffer.length] = str;
};
StringBuffer.prototype.toString = function() {
    return this.buffer.join("");
};




$(document).ready(function() {

   

   
   //window.DRApp.popup_selectList();  //인포텍 카드 조회
   choice_List("전체")
   
   //요금안내서 조회 호출
/*    payResult = window.DRApp.fee_Guide();
   

   
   getChargeGuide(payJsonObj); */
       
    //sk회원일 경우에만 요금안내서 프로세스
   if(SKT_REG_YN == "Y"){
      //요금안내서 신청이 되어있는경우
      if(FeeGuideYN =="Y"){
    	  //요금안내서 스킴호출이동
    	  fee_Guide_enc();  
    	  		
    //요금안내서 신청이 되어있지 않은경우
      }else{
    	  	
    	   $("#getChargeGuideYN").empty(); 
    	   
    	  
      }
      
  
      
   } 		
    
   
   //영수증 리스트 호출
   receipt_list();
   
   //공인인증서 등록여부 검증
   //location.href="therealmkt://{\"action_code\":\"TR5002\",\"callback_func\":\"CertConfirm\"}"; 
  
   
	//강진우 인포텍 추가 사항
/*    $.ajax({
          type : "post",
//          url : "http://http://110.14.84.75:8454/front/getCardCode.do",    
          url : "/front/getCardCode.do",    
          contentType: "application/x-www-form-urlencoded; charset=UTF-8",
          data : {									
             CUST_CI : "TestCI001",
             CUST_CD : "TestCD001", 
             MDN : MDN
          },
          success : fn_paidCard_list
    }); */
    
    
    
    
    
    
    
    //공인인증 등록여부 YN(추후 추가될 멤버에티블에 존재)
    
    //공인인증 등록여부 YN(추후 추가될 멤버테이블)  *인포텍에 스킴을 날려서 갱신하는 시점은 사용자가 갱신버튼을 누르거나 첫 공인인증등록 시.
 	//등록되 있는 f&U 테이블 조회.
    fn_paidCard_list(); 
   
    
    
   //N일경우, 결제에정금액보기(공인인증서 등록요청)가 포함된 창을 띄운다.
   
   
});         
		

//공인인증서 유무 리턴
function CertConfirm(data){

	var jsonObj = JSON.parse(data);

	jsonObj.errYn = "Y";
	
	if(jsonObj.errYn == "Y"){
		 						
		//강진우 인포텍 추가 사항
	     $.ajax({
	            type : "post",
//	            url : "http://http://110.14.84.75:8454/front/getCardCode.do",    
	            url : "/front/getCardCode.do",    
	            contentType: "application/x-www-form-urlencoded; charset=UTF-8",
	            data : {									
	               CUST_CI : "TestCI001",
	               CUST_CD : "TestCD001", 
	               MDN : MDN
	            },
	            success : fn_paidCard_list
	      });
		
	}else{
		
		  var paidStr = "";
			
	      paidStr += '<div class="tit_wrap hide">';
	      paidStr +=       '<h2 class="tit">신용카드</h2>';                     
	      paidStr += '</div>';               
	      paidStr += '<div class="items item_statement item_charge accumulate_area">';
	      paidStr   +=   '<div class="request_copy_main" style="margin-top: 15px;">';
	      paidStr   +=   '<p class="main_copy" style="font-size: 1.8rem; color: #000; font-weight: 800; line-height: 2.4rem; text-align: center;">아직 공인인증서를<br>등록하지 않으셨군요!</p>';
	      paidStr   +=   '<p class="sub_copy" style="text-align: center; margin-top: 15px;">공인인증서를 등록하시면<br>실시간 결제예정금액을 확인하실 수 있습니다.<br>등록하시겠습니까?</p>';
	      paidStr   +=   '</div>';
	      paidStr +=            '<div class="btns_area">';
	      paidStr +=               '<a class="btn_comm impor3 btn_payView" onClick="fn_test();">결제예정금액 보기</a>';
	      paidStr +=            '</div>'; 
	      paidStr +=         '</dd>';
	      paidStr +=      '</dl>';                     
	      paidStr += '</div>';                     
	                                                                               
	      $("#tobePaid").empty();
	      $("#tobePaid").append(paidStr);
		
		
	}
}







//기존 공인인증유무

/* 
function testG(){
   if(CertYn == "N"){         
                                 
      var paidStr = "";

      paidStr += '<div class="tit_wrap hide">';
      paidStr +=       '<h2 class="tit">신용카드</h2>';                     
      paidStr += '</div>';               
      paidStr += '<div class="items item_statement item_charge accumulate_area">';
      paidStr   +=   '<div class="request_copy_main" style="margin-top: 15px;">';
      paidStr   +=   '<p class="main_copy" style="font-size: 1.8rem; color: #000; font-weight: 800; line-height: 2.4rem; text-align: center;">아직 공인인증서를<br>등록하지 않으셨군요!</p>';
      paidStr   +=   '<p class="sub_copy" style="text-align: center; margin-top: 15px;">공인인증서를 등록하시면<br>실시간 결제예정금액을 확인하실 수 있습니다.<br>등록하시겠습니까?</p>';
      paidStr   +=   '</div>';
      paidStr +=            '<div class="btns_area">';
      paidStr +=               '<a class="btn_comm impor3 btn_payView" onClick="fn_test();">결제예정금액 보기</a>';
      paidStr +=            '</div>'; 
      paidStr +=         '</dd>';
      paidStr +=      '</dl>';                     
      paidStr += '</div>';                     
                                                                               
      $("#tobePaid").empty();
      $("#tobePaid").append(paidStr);
      
   }else{   
      //강진우 인포텍 추가 사항
     $.ajax({
            type : "post",
//            url : "http://http://110.14.84.75:8454/front/getCardCode.do",    
            url : "http://110.45.190.114:28080/theReal/front/getCardCode.do",    
            contentType: "application/x-www-form-urlencoded; charset=UTF-8",
            data : {
               CUST_CI : "TestCI001",
               CUST_CD : "TestCD001", 
               MDN : MDN
            },
            success : fn_paidCard_list
      });
        
   }
}   
    */
   
//공인인증 등록요청 테스트
function fn_test(){
   
      
   //var data = '{ "action_code" : "PO2100", "cust_cd" : "", "cust_ci" : "", "svc_num" : "", "callback_func" : "callTest" }';
   var data = '{ "action_code" : "PO2100", "cust_cd" : "'+CUST_CODE+'", "svc_num" : "'+MDN+'", "callback_func" : "callTest" }';
   //alert(data);
   
   var fnuParam = "";   
      
                  
   $.ajax({
      
      url : "/enc.do", 
      data : {
         paramData : data, 
         flag : "1"
      },
      success :    function(data){
         
         fnuParam = data;
         location.href = "pocketmobile://" + encodeURIComponent(fnuParam);
      }   
      
   });

   
}      

      
function callTest(data){
  
   
}


 
			
/* 요금안내서 데이터 전송 암호화 */

function fee_Guide_enc(){
   
      
   
   var data = '{ "action_code" : "PO6001", "cust_cd" : "'+CUST_CODE+'", "svc_num" : "'+MDN+'", "callback_func" : "fee_Guide_dec" }';
   //alert(data);
            
   var fnuParam = "";   
    			         		
      
   $.ajax({
      			
      url : "/enc.do",    
                         
      data : {                     
         paramData : data, 
         flag : "1"
      },
      success :    function(data){
         fnuParam = data;
         //alert("pocketmobile://" + encodeURIComponent(fnuParam));
         location.href = "pocketmobile://" + encodeURIComponent(fnuParam); 
      
      }   
         
   });
   
}         
         
/* 요금안내서 데이터 전송 복호화 */   
   
function fee_Guide_dec(data) {
   	
   
   		
   //alert("포켓 리턴 데이터"+data);
       
   $.ajax({
         url : "/enc.do",    
         data : {
            paramData : data, 
            flag : "2"
         },
         success : fn_getChargeGuide
   });
   
} 
 
/* 영수증 데이터 리스트 AJAX*/
function receipt_list(){
          
          $.ajax({
            type : "post",
             /* url : "http://localhost:8080/theReal_SKT/front/list_data.do",   */
            url : "/front/list_data.do",    
            data : {
               cust_ci : CUST_CI,
               Type : "00", 	
               Date : today
            },
            success : fn_latestData
      });
 }
		

        
function fn_getChargeGuide(resData){
  
   /* 
   resData = {
      "aebill": {
         "BILL_ITM_LCD": [{
            "BILL_ITM_LCD_NM": "통신서비스요금",
            "LCD_INV_AMT": "63,200"
         }, {
            "BILL_ITM_LCD_NM": "단말기할부금",
            "LCD_INV_AMT": "26,230"
         }, {
            "BILL_ITM_LCD_NM": "기타요금",
            "LCD_INV_AMT": "0"
         }],
         "TOT_AMT": "89,430",
         "SVC_NUM": "010-8637-7069",
         "RESULT_CD": "0",
         "RESULT_VAL": ""
      }
   }; 
    */
   
   //현재시간 구하기
   var currentDate = new Date();
    var divClock = document.getElementById("divClock");
   var time = currentDate.getHours();
   var minute = currentDate.getMinutes();
   /* 
   var aa = JSON.stringify(resData)
   payJsonObj = JSON.parse(aa);      
    */             
                                                                         
                     
   payJsonObj = JSON.parse(resData);
       
   //요금안내서출력유무 호출
   console.log("svc : " + payJsonObj);
   console.log("svc : " + payJsonObj.aebill.SVC_NUM);
    var getChargeGuideYN = "Y";
/*    getChargeGuideYN = window.DRApp.get_ChargeGuideYN(); */
    //SKT 고객인 경우, 요금 안내 신청이 되어있는 경우                         
 	 chargeguide_str +=   '<div class="tit_wrap hide">';      
         chargeguide_str +=   '<h2 class="tit"></h2>';      
      chargeguide_str +=   '</div>';                  
         chargeguide_str +=   '<div class="items item_statement item_charge accumulate_area"><!--// 실시간현황 누적금액전용:accumulate_area -->';
      chargeguide_str   +=   '<dl>';
         chargeguide_str   +=   '<dt>';      
            chargeguide_str   +=   '<div class="info_group">';         
               chargeguide_str   +=   '<span class="img_com_logo logo_sktelecom"><img src="/resources/images/com_logo/logo_sktelecom.png" alt="SK 브로드밴드"></span>';
               chargeguide_str   +=   '<span class="my_cp">';
               chargeguide_str   +=   '<strong class="my_cp_num">'+payJsonObj.aebill.SVC_NUM+'</strong>';
               chargeguide_str   +=   '</span>';
            chargeguide_str   +=   '</div>';
      chargeguide_str   +=   '<dl class="item_tblType">';
      chargeguide_str   +=   '<dt>'+time+'시 '+minute+'분 현재까지</dt>';
         chargeguide_str   +=   '<dd><span class="amount_txt" id="pay_tot">'+payJsonObj.aebill.TOT_AMT+'</span><span class="won">원</span></dd>';
      chargeguide_str   +=   '</dl>';  
      chargeguide_str   +=   '</dt>';   
      chargeguide_str   +=   '<dd>';                    
         chargeguide_str   +=   '<dl class="item_tblType"><dt>통신서비스요금</dt><dd><span class="amount_txt">'+payJsonObj.aebill.BILL_ITM_LCD[0].LCD_INV_AMT+'</span><span class="won">원</span></dd></dl>';
         chargeguide_str   +=   '<dl class="item_tblType"><dt>부가사용금액</dt><dd><span class="amount_txt">'+payJsonObj.aebill.BILL_ITM_LCD[2].LCD_INV_AMT+'</span><span class="won">원</span></dd></dl>';
         chargeguide_str   +=   '<dl class="item_tblType"><dt>단말기할부금</dt><dd><span class="amount_txt">'+payJsonObj.aebill.BILL_ITM_LCD[1].LCD_INV_AMT+'</span><span class="won">원</span></dd></dl>';
      chargeguide_str   +=   '</dd>';            
      chargeguide_str   +=   '</dl>';                                                                     
      chargeguide_str   +=   '<div class="desc_wrap">';                                       
      chargeguide_str   +=   '<p class="desc">';                     
      chargeguide_str   +=   '데이터 사용량이 궁금하신가요?';                       
      chargeguide_str   +=   '<a href="http://m2.tworld.co.kr/jsp/op.jsp?p=w1134&f=l0001" class="btn_comm impor3 btn_small btn_outLink">T World 바로가기</a>';
      chargeguide_str   +=   '</p>';
      chargeguide_str   +=   '</div>';                
      chargeguide_str   +=   '</div>';                         
   }                                                         
              
   $("#getChargeGuideYN").append(chargeguide_str);    

  
/* 영수증 데이터 뿌려주기 */
 function fn_latestData(resData){
    
   dayNumber = parseInt(day);
      
    var res = resData.resultMap;
    
    console.log(res);
    
    count = resData.count;
                      
   str = '';
                           
   intoday = "";               
         
 /*  if(month < 10){
        month = "0"+month;
    }      
     */
    if(day < 10){
        day = "0"+day;
    }
/* <!--바깥쪽 큰 반복문--> */
for(var j = 1; j < dayNumber+1; j++){

                              
/* <!--view를 위해 추가했던 년,월,일을 반복문 날짜매칭 검색을 위해 다시 제거--> */
today = year + "-" + month + "-" + day;
   

forDay = forDay-1;



 
/* <!--영수증 반복문 시작 --> */

var todayCnt = 0;


for(var i = 0; i < res.length; i++){
         
   //f&u = FRT_CREA_DTM                                    
   if( res[i].FRT_CREA_DTM  .indexOf(today) != -1){
      todayCnt++;
   }
                   
   //f&u = FRT_CREA_DTM       
   if ( res[i].FRT_CREA_DTM.indexOf(today) != -1) {
            
   if(todayCnt == 1) {
      if(today==todayNow){
         str += '<div class="tit_wrap">';
         str += '<h2 class="tit">오늘</h2>';
         str += '<a class="total_bo" style="font-size: 1.5rem; color: #3b98e6; letter-spacing : -.1rem; font-weight: 800; float: right; margin-right: 25px;">총 <span class="amount_txt1" id ='+amount_total+'>하루치 총금액 들어갈 곳</span><span class="won">원</span></a>';
         str += '</div>';
      }else{         
         str += '<div class="tit_wrap">';
         str += '<h2 class="tit">'+intoday+'</h2>';
         str += '<a class="total_bo" style="font-size: 1.5rem; color: #3b98e6; letter-spacing : -.1rem; font-weight: 800; float: right; margin-right: 25px;">총 <span class="amount_txt1" id ='+amount_total+'>하루치 총금액 들어갈 곳</span><span class="won">원</span></a>';
         str += '</div>';
      }
   }
                  
   str += '<ul>';            
         
   str += '<li>';      
                        
str += '<div class="items item_receipt" id="receipt_num">';

str += '<a href="#lay_wrap" id="detail_view" class="detail_num" onClick="detailLocaion(\''+res[i].SALES_BARCODE+'\', \''+res[i].SHOP_BIZNO+'\', \''+res[i].SMS_NO+'\')">';
                     
str += '<dl>';
str += '<dt>';         

str += '<span class="img_receipt"><img src="/resources/images/common/img_receipt.png" alt=""></span>';

str += '</dt>';

str += '<dd>';

str += '<div class="receipt_info">';

str += '<div class="card_group">';

if(res[i].CARD_ICOM != ""){


/* <!--카드사 별 이미지 보여줄 곳--> */
if(res[i].CARD_ICOM.indexOf('하나') != -1){
   str += '<span class="card_title"><img src="/resources/images/cardLogo/hana.png" alt="hanacard" class="logoHanaImg"></span>';
}else if(res[i].CARD_ICOM.indexOf('KB') != -1 || res[i].CARD_ICOM.indexOf('국민') != -1 || res[i].CARD_ICOM.indexOf('kb') != -1 ){
   str += '<span class="card_title"><img src="/resources/images/cardLogo/kb.PNG" alt="kbcard" class="logoKbImg"></span>';
}else if(res[i].CARD_ICOM.indexOf('bc') != -1 || res[i].CARD_ICOM.indexOf('BC') != -1 || res[i].CARD_ICOM.indexOf('비씨') != -1){
   str += '<span class="card_title"><img src="/resources/images/cardLogo/bc.png" alt="bccard" class="logoBcImg"></span>';
}else if(res[i].CARD_ICOM.indexOf('신한') != -1 || res[i].CARD_ICOM.indexOf('shin') != -1){
   str += '<span class="card_title"><img src="/resources/images/cardLogo/shinhan.PNG" alt="shinhancard" class="logoShinhanImg"></span>';
}else if(res[i].CARD_ICOM.indexOf('농협') != -1 || res[i].CARD_ICOM.indexOf('nh') != -1 || res[i].CARD_ICOM.indexOf('NH') != -1){
   str += '<span class="card_title"><img src="/resources/images/cardLogo/nh.PNG" alt="nhcard" class="logoNhImg"></span>';
}else if(res[i].CARD_ICOM.indexOf('우리') != -1){
   str += '<span class="card_title"><img src="/resources/images/cardLogo/woori.PNG" alt="wooricard" class="logoWooriImg"></span>';
}else if(res[i].CARD_ICOM.indexOf('롯데') != -1 || res[i].CARD_ICOM.indexOf('lotte') != -1 || res[i].CARD_ICOM.indexOf('LOTTE') != -1){
   str += '<span class="card_title"><img src="/resources/images/cardLogo/lotte.PNG" alt="lottecard" class="logoLotteImg"></span>';
}else{
   str += '<span class="card_title">기타 카드</span>';
}

}else{
   str += '<span class="card_title">현금결제</span>';
}
str += '<p class="card_info">';

/* <!--결제방식 구분--> */
if(res[i].CARD_ICOM != ""){
   str += '<strong class="card_number">'+res[i].CARD_NO+'</strong>';
}else{ 
   str += '<strong class="card_number">&nbsp</strong>';
} 
      
if(res[i].CARD_ICOM!=""&&res[i].CARD_NO == ""){
   str += '<strong class="card_number">&nbsp</strong>';
}

str += '<span class="pay_method">';

if(res[i].CARD_ICOM != ""){
   str += '<span class="lumpSum">'+res[i].CARD_INSTALLMENT+'</span><span class="completePayment">결제완료</span>';
}else{
   str += '<span class="lumpSum">일시불</span><span class="completePayment">결제완료</span>';
}

str += '</span>';

str += '</p>';

      
/* <!--결제시간만 추출--> */
 
 
  //f&u = FRT_CREA_DTM
var payTime = res[i].FRT_CREA_DTM.substring(11,16);

str += '<p class="pay_time">'+payTime+'</p>';

str += '</div>';

str += '<dl class="item_tblType">';

str += '<dt class="shop_name ellip">'+res[i].SHOP_NAME+'</dt>';

str += '<dd><span class="amount_txt">'+numCommas(res[i].TOTAL_AM)+'</span><span class="won">원</span></dd>';

str += '</dl>';

str += '</div>';

str += '<dd>';

str += '</dl>';

str += '</a>';

str += '</div>';

str += '<li>';

str += '</li>';

str += '</ul>';

   TOT_AMT += parseInt(res[i].TOTAL_AM);
}

}

/* <!-- 전자영수증 반복문 끝  --> */
      








TOT_array[amount_total] = TOT_AMT;

amount_total++;

TOT_AMT = 0;

var wrap = "";
   if(today==todayNow){
         wrap += '<h2 class="tit">오늘</h2>';
      }else{
         wrap += '<h2 class="tit">'+today+'</h2>';
      }

/* <!--현재날짜 - j = j만큼의 전날짜--> */
day = day-1;
   
  if(day < 10){
        day = "0"+day;
  }

/* <!--view용 intoday 변수--> */
intoday = year + "년 " + month + "월 " + day + "일";
   
if(res==""){
   
    nothing(intoday);         
    return false;  
}    
    
todayCnt = 0;

}
/* <!--바깥쪽 큰 반복문 끝--> */            

$("#recieptTodayList").append(str);

$(".btn_more_view").off("click");

for(var i=1; i< TOT_array.length; i++){
   $("#"+i).empty();
   $("#"+i).append(numCommas(TOT_array[i]));
}
      
var numItems = $('.completePayment').length; 

if(numItems == count){
   
   $('.btn_more_view').css('display', 'none');
   return false;
   
}

if(today.substring(0, 7) == last_y){

   $('.btn_more_view').css('display', 'none');
   return false;
}

}


                 
/* <!--한달 더보기 --> */
function monthPlus(){
      
      
   month = dateObj.getMonth()+1-plus;
      if(month < 0) month = month+12;   
   
   
   if(month == 0){
      
      year = dateObj.getFullYear()-1;
      month = 12;   
      
   }         
    
   if(month < 10){
        month = "0"+month;
     }
      
                  
   //새로운 전달의 말일 계산.
   day = ( new Date( year, month, 0) ).getDate();
   
   today = year+"-"+month+"-"+day;
   
   plus++;
   
   receipt_list();
   
   if(plus == 3){
      $('.btn_more_view').css('display', 'none');
   }
   
   $("#add_btn").blur();
}; 



function cardMonthPlus(){
   console.log("cardMonth시작");
   
   month = dateObj.getMonth()+1-plus;
   //day =  dateObj.getDate();
   
   //새로운 전달의 말일 계산.
   day = ( new Date( year, month, 0) ).getDate();
   
   // today = year+"-"+month+"-"+day;

   if(month < 0) month = month+12;   
                                       
   if(month == 0){
   
      year = dateObj.getFullYear()-1;
      month = 12;   
   }         
           
   if(month < 10){               
       month = "0"+month;    
   }
               
                  
   if(plus == 4){
      $('.btn_more_view').css('display', 'none');
   }
         
   today = year+""+month+""+day;
   
   startDate = year+""+month+"01";
   
   endDate = today;

   var resultDate = startDate+" "+endDate;
   
   plus++;
    
   $("#add_btn").blur();
   
//   fn_cardApproval_list("{\"cardCd\":\""+selectCardCd+"\",\"cardNo\":\""+selectCardNo+"\",\"sdate\":\"" + startDate + "\",\"edate\":\"" + endDate + "\"}");
fn_cardApproval_list("{\"cardCd\":\"004\",\"cardNo\":\"540926******9018\",\"sdate\":\"" + startDate + "\",\"edate\":\"" + endDate + "\"}");
    
}

//popup 관련 ( 강진우 추가 ) 


//드랍박스 눌렀을때 행동

function choice_box_drop(){
   $.ajax({
      type : "post",
      dataType : "text",
//         url : "http://110.14.84.75:8454/front/skt_infotec_data_update.do",    
      url : "/front/skt_pupup_list_data.do",    
      data : {
         CUST_CI : "TestCI001",
         CUST_CODE : "TestCD001", 
         MDN : "01047197404"
      },
      success : fn_popupListViwe
   });
}




//popup list 카드 출력 ajax fn

function fn_popupListViwe(data){
   
   var jsonObj = JSON.parse(data);

   var listSize = jsonObj.length;
   //alert(jsonObj[i].cardCd)
   
var getCardList_str = '';
   $("#lay_wrap").empty();
   
   getCardList_str += '<div class="lay_content"><div class="head_group"><h1 class="tit_message">';
   getCardList_str += '<strong class="strong">조회하실 항목을 선택하세요.</strong><h1>';
   getCardList_str += '</h></div>';
   getCardList_str += '<div class="cnt_message">';
   getCardList_str += '<div class="scrollY">';
   getCardList_str += '<div class="rtpage_box">';
   getCardList_str += '<div class="rtpage_inbox">';

    //getCardList_str += '<div class="modWrap_inner">'
   getCardList_str += '<span class="rad_wrap" style="margin:5px 0;">';
   getCardList_str += '<input type="radio" name="form_rad" id="form_rad_1" onClick="select_radiobutton(\'all\', \'전체\', \'1\')">';
   getCardList_str += '<label for="form_rad_1">';
   getCardList_str += '<span>전체</span>';
   getCardList_str += '</label>';
   getCardList_str += '</span>';
   //getCardList_str += '</div>'
   ///////////////* 카드 목록 수 가져오기*//////////////////////
   getCardList_str += '<div class="cardlist_wrap" id="getCardList">';
   
   getCardListsize = null;
   //getCardListsize = window.DRApp.getCardListsize();
   getCardListsize = 0;
   //window.DRApp.toastLongTest(getCardListsize);
   if(listSize == 0){ 	
      //alert("0");
   } else{ 
      for(var i = 0; i < listSize; i++)													
      {   										
         var cardNm = GetCardComImg(jsonObj[i].CARD_CD,'01'); //Json으로 변환				
         var cardNo = jsonObj[i].CARD_NO;
         getCardList_str += '<span class="rad_wrap" style="margin:5px 0;">';
         getCardList_str += '<input type="radio" style="text-align:left" name="form_rad" id="form_rad_' + (4+i) + '" onClick="select_radiobutton(\''+jsonObj[i].CARD_CD+'/'+cardNo+'\',\'' + cardNm + '(' + cardNo.substring(12,cardNo.length) + ')' + '\', \''+(i+4)+'\')">';
         getCardList_str += '<label for="form_rad_' + (4+i) +'">';
         getCardList_str += '<span >' + cardNm + '(' + cardNo.substring(12,cardNo.length) + ')' + '</span>';
         getCardList_str += '</label>';
         getCardList_str += '</span><br>';
      }
   }
   /////////////////////////////////////////////////////////////.substring(12,cardNo.length)
   getCardList_str += '</div>';
   getCardList_str += '<div class="modWrap_inner">';
   getCardList_str += '<span class="rad_wrap" style="margin:5px 0;">';
   getCardList_str += '<input type="radio" name="form_rad" id="form_rad_2" onClick="select_radiobutton(\'receipt\', \'전자영수증\' , \'2\')">';
   getCardList_str += '<label for="form_rad_2">';
   getCardList_str += '<span>전자영수증</span>';
   getCardList_str += '</label>';
   getCardList_str += '</span>';
   getCardList_str += '</div>';
   getCardList_str += '<span class="rad_wrap" style="margin:5px 0;">';
   getCardList_str += '<input type="radio" name="form_rad" id="form_rad_3" onClick="select_radiobutton(\'coupon\', \'쿠폰\' , \'3\')">';
   getCardList_str += '<label for="form_rad_3">';
   getCardList_str += '<span>쿠폰&이벤트</span>';
   getCardList_str += '</label>';
   getCardList_str += '</span>';
   getCardList_str += '</div>';
   getCardList_str += '</div>';

   
   getCardList_str += '</div></div></div></div></div>';
   getCardList_str +='<footer class="lay_footer">';
   getCardList_str +='     <button type="button" class="fl_l ui_modal_close">취소</button>';
   getCardList_str +='   <button type="button" class="fl_r em " onclick="modal_choice()" id="search_btn">확인하기</button>';
   getCardList_str +=' </footer>';  
   
   $("#lay_wrap").css("height", "250px");
   $("#lay_wrap").empty();
   $("#lay_wrap").append(getCardList_str);   
      
    $('#lay_wrap').vcModal({
      show:'false'
   });  
   //푸터 버튼영역이 있을경우 class 추가
   
/*    $("#lay_wrap").css("display", "block"); */
   $("#lay_wrap").children('.lay_footer').parents('#lay_wrap').addClass('lay_hasFoot');

   $("#form_rad_1").prop("checked",true);
   
   $("#form_rad_"+popup_select_cnt).prop("checked",true);
   
   
}


      
function modal_choice(){
   if (popup_select_view==null){
      return;
   }else{
	  
      $("#search_btn").addClass("ui_modal_close");
         
      if(popup_select_view=='all'){ 
    	  //전체 리스트 뿌려주는 곳
		 if(ref == true){ 						
					
			 	//location.href="therealmkt://{\"action_code\":\"TR5000\",\"cardInfo\":[{\"cardCd\":\"000\"}],\"callback_func\":\"toBePaid\"}"
		    		
			 		var data = {
		
		    			  "err_Yn":"N",
		
		    			  "errMsg":"",
														
		    			  "baseInfo": {																																								
		
		    			                  "CUST_CODE":"TestCD001","CUST_CI":"TestCI001","MDN":"01047197404"																	
																												
		    			               } 
		
		    			 ,"cardInfo": [{
		
		    			                 "CARD_CD":"003","CARD_NO":"98**-****-****-1234","SETTLE_DT":"20190116","SETTLE_AMT": "1616255", "DUMMY" : ""
		
		    			                  ,"cardlimitInfo":[{"ITEM_NM":"총한도(원)","LIMIT_AMT":"7000000","USE_AMT":"1616255","ABLE_AMT":"5383745"}]  
		
		    			                }],		
								
		    			  "callback_func":""
		
		    			 }
		    	 ;
		
					toBePaid(data);
				
					location.href ="BillerService.do?ENC="+encodeURIComponent(ENC)+"";
					
					ref = false;
			
					 
			   /*       str = ''; 
			         
			         plus = 1;
			          
			         appendStr = '';
			         
			         year = dateObj.getFullYear();
			         
			         month = dateObj.getMonth()+1;
			         
			         day = dateObj.getDate();
			         
			         if(month < 10){
			               month = "0"+month;
			         }
			         
			         today = year + "-" + month + "-" + day;
			               
			         testG(); 
			         receipt_list(); */
			         
		 }else{

			 $("#tobePaid").css('display', 'block');
			
			 receipt_list(); 
		}
    	  
    
      }else if(popup_select_view=='receipt'){
         //전자영수증
         
         
        $("#tobePaid").css('display', 'none');
         
         str = ''; 
         
         plus = 1;
         
         appendStr = '';
         
         year = dateObj.getFullYear();
         
         month = dateObj.getMonth()+1;		
         
         day = dateObj.getDate();
         
         if(month < 10){		
               month = "0"+month;
         }
         
         today = year + "-" + month + "-" + day;
         
         
         $(".exPrice_wrap").css("display","");
         $("#tobePaid").css("display","none");
         $("#recieptTodayList").empty();
         
         str = '';
         
         receipt_list(); 
      }else if(popup_select_view=='coupon'){
         //쿠폰
         
    	      
      }else{
   	     
    	 //카드 승인내역 뿌리는곳
         var splitStr = popup_select_view.split("/");
         
         selectCardCd = splitStr[0]; 
         selectCardNo = splitStr[1];
     
         		
//       $(".exPrice_wrap").empty();

         $(".exPrice_wrap").css("display","none");
		
				
	
         $("#tobePaid").css("display","none");
         $("#recieptTodayList").empty();
         str = '';
		 
         fn_cardApproval_list("{\"cardCd\":\"  "+selectCardCd+"  \",\"cardNo\":\""+selectCardNo+" \",\"sdate\":\"" + startDate + "\",\"edate\":\"" + endDate + "\"}");

      }
      
      
   }
   choice_List(popup_select_main);
}
   



function select_radiobutton(value, main, cnt){
   
   popup_select_view = value;
   popup_select_main = main;
   popup_select_cnt = cnt;
   
}
















   
/* 데이터 없음 */ 

function nothing(intoday){
   
   
   var t = intoday.substring(0,9);
   
   var t2 = intoday.substring(6,9);
   
   str += '<div class="tit_wrap" id="notingto">';
   str += '<h2 class="tit">'+t+'</h2>';
   str += '<a class="total_a" style="font-size: 1.5rem; color: #3b98e6; letter-spacing : -.1rem; font-weight: 800; float: right; margin-right: 25px;"> <span class="amount_txt1"></span><span class="won"></span></a>';
   
   
   str += '<ul>';

   str += '<li>';

str += '<div class="">';

str += '<a id="">';

str += '<dl>';
str += '<dt>';

str += '<span class=""></span>';

str += '</dt>';

str += '<dd>';

str += '<div class="">';
   
str += '<div class="" style = "text-align : center; margin-top: 21px;">';

str += '<span class=""></span>';

str += '<p class="card_info">'; 

str += '<strong class=""><b>사용내역이 없습니다.</b></strong>';



str += '</p>';

               


str += '<p class="pay_time"></p>';

str += '</div>';

str += '<dl class="item_tblType">';

str += '<dt class="shop_name ellip"></dt>';

str += '<dd><span class="amount_txt"></span><span class="won"></span></dd>';

str += '</dl>';

str += '</div>';

str += '<dd>';

str += '</dl>';

str += '</a>';

str += '</div>';

str += '<li>';

str += '</li>';

str += '</ul>';
   
str += '</div>';   /* 
   var moreStr = '<button type="button" class="btn_comm impor3 btn_more_view" onClick = "monthPlus();">한달 더보기<span class="icon_arrow icon_arrow_down"></span></button>';
 */   
   $("#recieptTodayList").append(str);
/*    $("#moreBtnDiv").empty();
   $("#moreBtnDiv").append(moreStr); */
   if(today.substring(0, 7) == last_y){

      $('.btn_more_view').css('display', 'none');
      return false;
   }

} 
   
/* url에서 파라미터 추출 */
function getParam(sname) {

    var params = location.search.substr(location.search.indexOf("?") + 1);

    var sval = "";
      
    params = params.split("&");

    for (var i = 0; i < params.length; i++) {

        temp = params[i].split("=");

        if ([temp[0]] == sname) { sval = temp[1]; }

    }

    return sval;

}         

function exit11(){
   
   $("#wrap").css("display", "block");

   $(".page").css("display", "none"); 
   
}

function numCommas(x) { //3자리수 , 찍어주기

    return x.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
}
		
		
//실시한조회 갱신 버튼 눌렀을 경우
function listRefresh(){						
	
	ref = true;
	modal_choice();	
			
			
   /* location.href="therealmkt://{\"action_code\":\"TR5000\",\"cardInfo\":[{\"cardCd\":\"000\"}],\"callback_func\":\"toBePaid\"}"; */
		
}
//////////강진우 인포텍 부분
 function fn_paidCard_list(){ 
                                                                         
   //location.href="therealmkt://{\"action_code\":\"TR5000\",\"cardInfo\":[{\"cardCd\":\"001\"},{\"cardCd\":\"004\"}],\"callback_func\":\"toBePaid\"}";
   //location.href="therealmkt://{\"action_code\":\"TR5000\",\"cardInfo\":["+listToJson+"],\"callback_func\":\"toBePaid\"}";
	
   $.ajax({
            type : "post",
            dataType : "text",
         //url : "http://110.14.84.75:8454/skui/front/realTimeInfotecData.do",    
            url : "/front/realTimeInfotecData.do",    
            data : {      
               TYPE : "list",
               CUST_CI : "TestCI001",
               CUST_CD : "TestCD001", 
               MDN : "01047197404" 
            },
            success : fn_viewCardInfo
      });
 }   
function toBePaid(data){
	
	var data = JSON.stringify(data);
   
	
	$.ajax({
            type : "post",
            dataType : "text",
//               url : "http://110.14.84.75:8454/front/skt_infotec_data_update.do",    
            url : "/front/skt_infotec_data_update.do",    
            data : {
               param : data
            },
            success : fn_getCardInfo
      });
}

function fn_cardApproval_list(data){ //카드 승인 내역 조회 기능(인포텍)
   var listToJson = data; 

   location.href="therealmkt://{\"action_code\":\"TR5001\",\"cardInfo\":[{\"cardCd\":\"004\",\"cardNo\":\"540926******9018\",\"sdate\":\"" + startDate + "\",\"edate\":\"" + endDate + "\"}],\"callback_func\":\"toBeApprovalCard\"}";
   //location.href="therealmkt://{\"action_code\":\"TR5001\",\"cardInfo\":["+listToJson+"],\"callback_func\":\"toBeApprovalCard\"}";
}

function toBeApprovalCard(resData){ //카드 승인 내역 조회 기능(인포텍)

   //console.log(resData);
    var jsonObj = JSON.parse(resData);

   console.log(jsonObj.list.length);
   //var card_approval_list = jsonObj.list;			
			
   // for(var i = 0 ;  i < jsonObj.list.length; i++){
   //    console.log(jsonObj.list[i].useStore);
   // }		

   str = '';
   //intoday = "";   
   day = day;
   intoday = year + "년 " + month + "월 " + day + "일";
    if(day < 10){
        day = "0"+day;
    }
   console.log("여기 탔다1");
/* <!--바깥쪽 큰 반복문--> */
for(var j = 1; j < dayNumber+1; j++){
      console.log("여기 탔다2");
      /* <!--view를 위해 추가했던 년,월,일을 반복문 날짜매칭 검색을 위해 다시 제거--> */
      card_today = year + month + day;
      console.log(year);
      console.log(month);
      console.log(day);
      console.log(card_today);
      forDay = forDay-1;

      /* <!--영수증 반복문 시작 --> */
      var todayCnt = 0;

      for(var i = jsonObj.list.length -1; i > 0; i--){ //카드 내역 조회가 역순으로 넘어옴
            //console.log(jsonObj.list[i].useStore);
            // console.log(card_today.toString());
    	  //console.log(jsonObj.list[i]);
          console.log("여기 탔다3");
          console.log(card_today.toString());
          console.log(cardtodayNow.toString());	
       if(jsonObj.list[i].useDt.indexOf(card_today) != -1){
          todayCnt++;
          console.log("여기 탔다4");
       }         
       if (jsonObj.list[i].useDt.indexOf(card_today) != -1) {
          //console.log("여기 탔다" + i);
          console.log(card_today.toString());
          console.log(cardtodayNow.toString());
          console.log("여기 탔다5");
          if(todayCnt == 1) { 
             console.log("여기 탔다6");
             if(card_today==cardtodayNow){
                console.log("여기 탔다7");
                str += '<div class="tit_wrap">';
                str += '<h2 class="tit">오늘</h2>';
                str += '<a class="total_bo" style="font-size: 1.5rem; color: #3b98e6; letter-spacing : -.1rem; font-weight: 800; float: right; margin-right: 25px;">총 <span class="amount_txt1" id ='+amount_total+'>하루치 총금액 들어갈 곳</span><span class="won">원</span></a>';
                str += '</div>';
             }else{
                console.log("여기 탔다8");
                str += '<div class="tit_wrap">';
                str += '<h2 class="tit">'+intoday+'</h2>';
                str += '<a class="total_bo" style="font-size: 1.5rem; color: #3b98e6; letter-spacing : -.1rem; font-weight: 800; float: right; margin-right: 25px;">총 <span class="amount_txt1" id ='+amount_total+'>하루치 총금액 들어갈 곳</span><span class="won">원</span></a>';
                str += '</div>';
             }
          }         
       str += '<ul>';            
       str += '<li>';            
       str += '<div class="items item_receipt" id="receipt_num">';
       //str += '<a href="#lay_wrap" id="detail_view" class="detail_num" onClick="detailLocaion(\''+res[i].SALES_BARCODE+'\', \''+res[i].SHOP_BIZNO+'\')">';                        
       str += '<dl>';
       str += '<dt>';
       str += '<span class="img_receipt"><img src="/resources/images/common/img_receipt.png" alt=""></span>';
       str += '</dt>';
       str += '<dd>';  
       str += '<div class="receipt_info">'; 
       str += '<div class="card_group">';
       str += '<p class="card_info">';
       str += '<strong class="card_number">'+ jsonObj.list[i].useTm.substring(0,2) + ':'+ jsonObj.list[i].useTm.substring(2,4) +'</strong>';
       str += '<span class="pay_method">';
       str += '<span class="completePayment">' + jsonObj.list[i].useDiv +'</span><span class="lumpSum">' + jsonObj.list[i].apprSt +'</span>';
       str += '</span>';
       str += '</p>';
       /* <!--결제시간만 추출--> */ 
       var payTime = jsonObj.list[i].useDt.substring(11,16);
       str += '<p class="pay_time">'+payTime+'</p>';
       str += '</div>';
       str += '<dl class="item_tblType">';
       str += '<dt class="shop_name ellip">'+ jsonObj.list[i].useStore +'</dt>';
       str += '<dd><span class="amount_txt">'+ numCommas(jsonObj.list[i].useAmt) +'</span><span class="won">원</span></dd>';
       str += '</dl>';
       str += '</div>';
       str += '<dd>';
       str += '</dl>';
       str += '</a>';
       str += '</div>';
       str += '<li>';
       str += '</li>';
       str += '</ul>';
       TOT_AMT += parseInt(jsonObj.list[i].useAmt);
       }

    }
    console.log("여기 탔다10");
    console.log(str);
    /* <!-- 반복문 끝  --> */         
    TOT_array[amount_total] = TOT_AMT;
    amount_total++;
    TOT_AMT = 0;

    var wrap = "";
       if(card_today==cardtodayNow){
             wrap += '<h2 class="tit">오늘</h2>';
          }else{
             wrap += '<h2 class="tit">'+card_today+'</h2>';
          }
    /* <!--현재날짜 - j = j만큼의 전날짜--> */
    day = day-1;
    if(day < 10){
          day = "0"+day;
    }
    /* <!--view용 intoday 변수--> */
    intoday = year + "년 " + month + "월 " + day + "일";

    if(jsonObj==""){
       nothing(intoday);         
       return false;  
    }    
       
    todayCnt = 0;
 }
 /* <!--바깥쪽 큰 반복문 끝--> */            
 console.log("여기 탔다11");
 $("#recieptTodayList").append(str);

 $(".btn_more_view").off("click");

 for(var i=1; i< TOT_array.length; i++){
    $("#"+i).empty();
    $("#"+i).append(numCommas(TOT_array[i]));
 }
       
 var numItems = $('.completePayment').length; 

 if(numItems == count){
    
    $('.btn_more_view').css('display', 'none');
    return false;
    
 }

 if(today.substring(0, 7) == last_y){
    $('.btn_more_view').css('display', 'none');
    return false;
 }	

 $("#moreBtnDiv").empty();

 var card_str = "";
 
 card_str += '<button type="button" class="btn_comm impor3 btn_more_view" id="add_btn" onClick = "cardMonthPlus()" style="outline:none">한달 더보기<span class="icon_arrow icon_arrow_down"></span></button>';
 $("#moreBtnDiv").append(card_str);
}
		
function fn_getCardInfo(data){
 		$.ajax({
          type : "post",
          dataType : "text",
       //url : "http://110.14.84.75:8454/skui/front/realTimeInfotecData.do",    
          url : "/front/realTimeInfotecData.do",    
          data : {	      
             TYPE : "list",		
             CUST_CI : "TestCI001",
             CUST_CD : "TestCD001",  
             MDN : "01047197404"
          }, 	 
          success : fn_viewCardInfo
    });		
} 
       
function fn_viewCardInfo(data){ 
            
var jsonObj = JSON.parse(data);
						
$("#tobePaid").empty();      

var limitSize = jsonObj.cardLimitInfo.length

for(var i = 0 ;  i < jsonObj.cardInfo.length; i++){

 appendStr+='          <div class="tit_wrap hide">';
 appendStr+='            <h2 class="tit">신용카드</h2>';
 appendStr+='         </div>';
 appendStr+='         <div class="items item_statement item_charge accumulate_area" style="margin-top : 10px">';
 appendStr+='             <dl>';
 appendStr+='               <dt>';		
 appendStr+='                  <div class="info_group">';
 var tempCardCom = GetCardComImg(jsonObj.cardInfo[i].CARD_CD,'00');
 appendStr+='                     <span class="img_com_logo"><img src="../../images/card_logo/'+tempCardCom+'.png" alt="" class="'+tempCardCom+'"></span>';
 appendStr+='                     <span class="my_card">';
 appendStr+='                     <strong class="my_card_num">'+cardNoFormat(jsonObj.cardInfo[i].CARD_NO) +'</strong>';
 appendStr+='                  </span>';
 appendStr+='            </div>';
 appendStr+='                  <dl class="item_tblType">';
 appendStr+='                     <dt>'+settleDateFormat(jsonObj.cardInfo[i].SETTLE_DT)+'일 결제 예정금액'+tempCardCom+'</dt>';
 appendStr+='                     <dd><span class="amount_txt">'+ numCommas(jsonObj.cardInfo[i].SETTLE_AMT)+'</span><span class="won">원</span></dd>';
 appendStr+='                  </dl>';
 appendStr+='               </dt>';
 appendStr+='               <dd>';
 appendStr+='                  <strong>잔여한도</strong>';
		
 for(var k=0; k<limitSize;k++){	
    if(jsonObj.cardLimitInfo[k].ITEM_NM.indexOf("(원)") > 0){
       var tempStr = jsonObj.cardLimitInfo[k].ITEM_NM;
       tempStr = tempStr.replace("(원)","");
       appendStr+='                  <dl class="item_tblType"><dt>'+tempStr+'</dt><dd><span class="amount_txt">'+numCommas(jsonObj.cardLimitInfo[k].USE_AMT)+'</span><span class="won">원</span></dd></dl>';
    }else if(jsonObj.cardLimitInfo[k].ITEM_NM.indexOf("($)") > 0){
       var tempStr = jsonObj.cardLimitInfo[k].ITEM_NM;
       tempStr = tempStr.replace("($)","");
       appendStr+='                  <dl class="item_tblType"><dt>'+tempStr+'</dt><dd><span class="amount_txt">'+numCommas(jsonObj.cardLimitInfo[k].USE_AMT)+'</span><span class="won" style=" margin-left: 5px; margin-right: 1px;">$</span></dd></dl>';
    }else{
       appendStr+='                  <dl class="item_tblType"><dt>'+jsonObj.cardLimitInfo[k].ITEM_NM+'</dt><dd><span class="amount_txt">'+numCommas(jsonObj.cardLimitInfo[k].USE_AMT)+'</span><span class="won">원</span></dd></dl>';
    }
 }
 //appendStr+='                  <div class="btns_area">';
 //appendStr+='                     <a href="#none" class="btn_comm impor3 btn_payView">결제예정금액 보기</a><!--// 신용카드 최초 접속 시 노출 -->';
 //appendStr+='                   </div>';
 appendStr+='               </dd>';
 appendStr+='            </dl>';
 appendStr+='         </div> ';
 
}
 
$("#tobePaid").append(appendStr);
 


}		

function cardNoFormat(cardNo){
 var reCardNo = "";

 reCardNo = cardNo.substring(0,4) + "-" + cardNo.substring(4,8) + "-" + cardNo.substring(8,12) + "-" + cardNo.substring(12,16);

 return reCardNo;
}	

function settleDateFormat(settleDT){
 var reSettleDT = "";

 reSettleDT = settleDT.substring(4,6) + "월" + settleDT.substring(6,8);

 return reSettleDT;
}


function GetCardComImg(cardCd, type){

  var CardComImgNm = "";
  switch(cardCd)
  {
      case  "001" :
       if(type.indexOf('00') > 0){
          CardComImgNm = "logo_shinhancard";
       }else{
          CardComImgNm = "신한카드";
       }
      break;
      case  "002" :
    if(type.indexOf('00') > 0){
          CardComImgNm = "logo_shinhancard";//"현대카드";
     }else{
       CardComImgNm = "현대카드";
    }
      break;
      case  "003" :
    if(type.indexOf('00') > 0){
          CardComImgNm = "logo_samsungcard";
      }else{
       CardComImgNm = "삼성카드";
    }
      break;
      case  "004" :
    if(type.indexOf('00') > 0){
          CardComImgNm = "logo_kbcard";
      }else{
       CardComImgNm = "국민카드";
    }
      break;
      case  "005" :
    if(type.indexOf('00') > 0){
          CardComImgNm = "logo_lottecard";
      }else{
       CardComImgNm = "롯데카드";
    }
      break;
      case  "006" :
    if(type.indexOf('00') > 0){
          CardComImgNm = "logo_hanacard";
      }else{
       CardComImgNm = "하나카드";
    }
      break;
      case  "007" :
    if(type.indexOf('00') > 0){
          CardComImgNm = "logo_wooricard";
      }else{
       CardComImgNm = "우리카드";
    }
      break;
      case  "008" :
    if(type.indexOf('00') > 0){
          CardComImgNm = "logo_nhcard";
      }else{
       CardComImgNm = "농협카드";
    }
      break;
      case  "009" :
    if(type.indexOf('00') > 0){
          CardComImgNm = "logo_shinhancard";//"씨티카드";
      }else{
       CardComImgNm = "씨티카드";
    }
      break;
      case  "010" :
    if(type.indexOf('00') > 0){
          CardComImgNm = "logo_bccard";
      }else{
       CardComImgNm = "비씨카드";
    }
      break;
      case  "011" :
    if(type.indexOf('00') > 0){
          CardComImgNm = "logo_shinhancard";//"수협카드";
      }else{
       CardComImgNm = "수협카드";
    }
      break;
      case  "012" :
    if(type.indexOf('00') > 0){
          CardComImgNm = "logo_shinhancard";//"광주카드";
      }else{
       CardComImgNm = "광주카드";
    }
        break;
      case  "013" :
    if(type.indexOf('00') > 0){
          CardComImgNm = "logo_shinhancard";//"전북카드";
      }else{
       CardComImgNm = "전북카드";
    }
      break;
      default: 
          CardComImgNm = "알수없는카드";
  }
  return CardComImgNm;

}

</script>
</body>
</html>    