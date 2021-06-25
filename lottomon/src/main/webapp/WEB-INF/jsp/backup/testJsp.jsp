<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %> 
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ include file="/WEB-INF/include/include-body.jspf" %>
<%@ include file="/WEB-INF/include/include-header.jspf" %>


<!DOCTYPE html>
<html lang="ko">
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no"/>
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<link rel="stylesheet" media="all" href="../uplusCode/code/layout.css" />
<link rel="stylesheet" media="all" href="../uplusCode/code/common.css" />
<link rel="stylesheet" href="../uplusCode/css/my-app.css">
<script src="https://code.jquery.com/jquery-1.12.4.min.js" integrity="sha256-ZosEbRLbNQzLpnKIkEdrPv7lOy9C27hHQ+Xp8a4MxAQ=" crossorigin="anonymous"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<title>Uplus 전자영수증</title>


</head>
<body>

test
   
   <input type="button" id="test11" value="테스트 진행">
   
   
<!--     <input type="button" id="test" value="테스트 진행">
<input type="button" id="test2" value="테스트 진행2">

<input type="button" id="test3" value="인포텍 테스트 갱신하기">
<input type="button" id="test4" value="인포텍 테스트 http 통신">
 -->
<br><br><br>
<input type="text" id="start">
<input type="text" id="end">
<input type="button" id="test5" value="Lpoint취소">

<script type="text/javascript">
var data3 = {    "userKey": "01052812307",    "etcInfo": {        "connectionCom": "trm",        "memo": "",        "event": ""    },    "shopInfo": {        "name": "피자에땅 ",        "bizNo": "입력요망",        "address": "입력요망",        "ceo": "입력요망",        "phone": "입력요망",        "cashier": "입력요망"    },    "salesInfo": {        "salesBarCode": "201712190013",        "recNO": "0013",        "originSalesDate": "20171219",        "originRecNo": "201712190013",        "salesDate": "20171219113239",        "printDate": "20171219113239",        "salesType": "RCP01",        "sumDfAmt": "0",        "sumFpAmt": "83273",        "sumTaxAmt": "8327",        "sumSlAmt": "91600",        "sumOpAmt": "91600",        "chgAmt": "91600",        "sumAllAmt": "91600",        "discountAmt": "0",        "pointamt": "0",        "paidAmt": "91600",        "chgAmt": "91600",        "paidAmt": "91600",        "rePrint": "0",        "dtCnt": "3"    },    "salesList": [        {            "seqNo": "1",            "pName": "퐁듀 불금피자 스크린 레귤러",            "pPrice": "19000",            "oPrice": "19000",            "qty": "1",            "dfAmt": "0",            "fpAmt": "19000",            "taxAmt": "1900",            "slAmt": "20900",            "opAmt": "20900"        },        {            "seqNo": "2",            "pName": "퐁듀 매울 빠에야 스크린 레귤러",            "pPrice": "19000",            "oPrice": "19000",            "qty": "1",            "dfAmt": "0",            "fpAmt": "19000",            "taxAmt": "1900",            "slAmt": "20900",            "opAmt": "20900"        },        {            "seqNo": "3",            "pName": "퐁듀 불금피자 스크린 라지",            "pPrice": "45273",            "oPrice": "45273",            "qty": "2",            "dfAmt": "0",            "fpAmt": "45273",            "taxAmt": "4527",            "slAmt": "49800",            "opAmt": "49800"        }    ],    "cashInfo": {        "cashAmt": "21600",        "cashType": "",        "cashNo": "",        "cashAppNo": "",        "cashDate": "20171219113239"    },    "cardInfo": [        {            "cardAmt": "20000",            "cardInstallment": "0",            "cardAppNo": "1214622144",            "cardDate": "20171219113147",            "SP_APPR_COM": "KICC",            "cardPCom": "국민카드",            "cardNo": "1214622144"        },        {            "cardAmt": "50000",            "cardInstallment": "3",            "cardAppNo": "523544444555",            "cardDate": "20171219113213",            "SP_APPR_COM": "KICC",            "cardPCom": "삼성카드",            "cardNo": "523544444555"        }    ],    "customerInfo": {        "pointAmt": "0",        "getPoint": "0",        "customerCode": "",        "customerPoint": "0"    }};
var data = '{    "userKey": "01052812307",    "etcInfo": {        "connectionCom": "trm",        "memo": "",        "event": ""    },    "shopInfo": {        "name": "피자에땅 ",        "bizNo": "입력요망",        "address": "입력요망",        "ceo": "입력요망",        "phone": "입력요망",        "cashier": "입력요망"    },    "salesInfo": {        "salesBarCode": "201712190013",        "recNO": "0013",        "originSalesDate": "20171219",        "originRecNo": "201712190013",        "salesDate": "20171219113239",        "printDate": "20171219113239",        "salesType": "RCP01",        "sumDfAmt": "0",        "sumFpAmt": "83273",        "sumTaxAmt": "8327",        "sumSlAmt": "91600",        "sumOpAmt": "91600",        "chgAmt": "91600",        "sumAllAmt": "91600",        "discountAmt": "0",        "pointamt": "0",        "paidAmt": "91600",        "chgAmt": "91600",        "paidAmt": "91600",        "rePrint": "0",        "dtCnt": "3"    },    "salesList": [        {            "seqNo": "1",            "pName": "퐁듀 불금피자 스크린 레귤러",            "pPrice": "19000",            "oPrice": "19000",            "qty": "1",            "dfAmt": "0",            "fpAmt": "19000",            "taxAmt": "1900",            "slAmt": "20900",            "opAmt": "20900"        },        {            "seqNo": "2",            "pName": "퐁듀 매울 빠에야 스크린 레귤러",            "pPrice": "19000",            "oPrice": "19000",            "qty": "1",            "dfAmt": "0",            "fpAmt": "19000",            "taxAmt": "1900",            "slAmt": "20900",            "opAmt": "20900"        },        {            "seqNo": "3",            "pName": "퐁듀 불금피자 스크린 라지",            "pPrice": "45273",            "oPrice": "45273",            "qty": "2",            "dfAmt": "0",            "fpAmt": "45273",            "taxAmt": "4527",            "slAmt": "49800",            "opAmt": "49800"        }    ],    "cashInfo": {        "cashAmt": "21600",        "cashType": "",        "cashNo": "",        "cashAppNo": "",        "cashDate": "20171219113239"    },    "cardInfo": [        {            "cardAmt": "20000",            "cardInstallment": "0",            "cardAppNo": "1214622144",            "cardDate": "20171219113147",            "SP_APPR_COM": "KICC",            "cardPCom": "국민카드",            "cardNo": "1214622144"        },        {            "cardAmt": "50000",            "cardInstallment": "3",            "cardAppNo": "523544444555",            "cardDate": "20171219113213",            "SP_APPR_COM": "KICC",            "cardPCom": "삼성카드",            "cardNo": "523544444555"        }    ],    "customerInfo": {        "pointAmt": "0",        "getPoint": "0",        "customerCode": "",        "customerPoint": "0"    }}';
var data2 = {    userKey: "01052812307",    etcInfo: {        connectionCom: "trm",        memo: "",        event: ""    },    shopInfo: {  name: "피자에땅 ",   bizNo: "입력요망",  address: "입력요망",  ceo: "입력요망",  phone: "입력요망",        cashier: "입력요망"    },   salesInfo: { salesBarCode: "201712190013",  recNO: "0013",  originSalesDate: "20171219", originRecNo: "201712190013",  salesDate: "20171219113239",  printDate: "20171219113239",salesType: "RCP01", sumDfAmt: "0",  sumFpAmt: "83273", sumTaxAmt: "8327", sumSlAmt: "91600", sumOpAmt: "91600", chgAmt: "91600", sumAllAmt: "91600", discountAmt: "0", pointamt: "0", paidAmt: "91600", chgAmt: "91600", paidAmt: "91600", rePrint: "0",  dtCnt: "3"    },  salesList: [        {  seqNo: "1",   pName: "퐁듀 불금피자 스크린 레귤러",  pPrice: "19000", oPrice: "19000",  qty: "1",    dfAmt: "0",  fpAmt: "19000", taxAmt: "1900",  slAmt: "20900",   opAmt: "20900"        },        {  seqNo: "2",  pName: "퐁듀 매울 빠에야 스크린 레귤러",  pPrice: "19000",   oPrice: "19000",  qty: "1",  dfAmt: "0",  fpAmt: "19000",  taxAmt: "1900", slAmt: "20900",  opAmt: "20900"        },        {  seqNo: "3", pName: "퐁듀 불금피자 스크린 라지", pPrice: "45273",   oPrice: "45273",  qty: "2",   dfAmt: "0", fpAmt: "45273",  taxAmt: "4527",  slAmt: "49800",  opAmt: "49800"        }    ],    "cashInfo": {        "cashAmt": "21600",        "cashType": "",        "cashNo": "",        "cashAppNo": "",  cashDate: "20171219113239"    },    cardInfo: [        {  cardAmt: "20000",  cardInstallment: "0",  cardAppNo: "1214622144",  cardDate: "20171219113147",            SP_APPR_COM: "KICC",            cardPCom: "국민카드",           cardNo: "1214622144"        },        {            cardAmt: "50000",            cardInstallment: "3",            cardAppNo: "523544444555",            cardDate: "20171219113213",            SP_APPR_COM: "KICC",            cardPCom: "삼성카드",            cardNo: "523544444555"        }    ],    customerInfo: {        pointAmt: "0",        getPoint: "0",        customerCode: "",        customerPoint: "0"    }};
var telNo = "01074505585";

var data4 = '{ \"baseInfo\": { \"CUST_CODE\":\"test1\",\"CUST_CI\":\"test1\",\"MDN\":\"010-1111-1111\" }  ,\"cardInfo\":  [ { \"CARD_COM\":\"NHcard\",\"CARD_NO\":\"33**-****-****-1234\",\"SETTLE_DT\":\"20190116\",\"SETTLE_AMT\": \"99900\" ,\"cardlimitInfo\": [ { \"ITEM_NM\":\"총 한도(won)\",\"LIMIT_AMT\":\"5000000\",\"USE_AMT\":\"500000\",\"ABLE_AMT\":\"0\"} ] } ,{ \"CARD_COM\":\"hanacard\",\"CARD_NO\":\"11**-****-****-1234\",\"SETTLE_DT\":\"20190116\",\"SETTLE_AMT\": \"333254\" ,\"cardlimitInfo\": [ { \"ITEM_NM\":\"총한도(원)\",\"LIMIT_AMT\":\"7000000\",\"USE_AMT\":\"500000\",\"ABLE_AMT\":\"6500000\"} ] } ,{ \"CARD_COM\":\"shinhancard\",\"CARD_NO\":\"22**-****-****-1234\",\"SETTLE_DT\":\"20190116\",\"SETTLE_AMT\": \"1616255\" ,\"cardlimitInfo\": [ { \"ITEM_NM\":\"총한도(원)\",\"LIMIT_AMT\":\"7000000\",\"USE_AMT\":\"1616255\",\"ABLE_AMT\":\"5383745\"} ,{ \"ITEM_NM\":\"해외 한도\",\"LIMIT_AMT\":\"5000000\",\"USE_AMT\":\"500\",\"ABLE_AMT\":\"4999500\"} ] } ] }';
	
$("#test3").click(function(){
	$.ajax({
		type : "post",
		dataType : "text",
		url : "http://110.45.190.114:28080/theReal/front/skt_infotec_data_update.do",
		data : {
			param : data4
		},
		success : fn_test
	})
})

$("#test4").click(function(){
	$.ajax({
		type : "post",
		dataType : "text",
		url : "http://110.45.190.114:28080/theReal/front/skt_test.do",
		data : {
			param : data4
		},
		success : fn_test
	})
})

$("#test2").click(function(){
	alert("22");
	$.ajax({
		type : "post",
		url :"117.52.97.40/theReal/receipt/latestData.do",
		data : {
			telNo : telNo
			
		},
		success : fn_test
	});
})


$("#test5").click(function(){
	var start = $("#start").val();
	var end = $("#end").val();
	var add = false;
	
	if(start=="" || end==""){
		alert("입력");
		return false;
		alert("입력");
	}else{
		 $.ajax({
			type : "get",
			url :"http://localhost:8080/lpointCancle.do",
			data : {
				start : start,
				end : end,
				add : "false"
				
			},
			success : fn_test
		}); 
	}
	
})


$("#test11").click(function(){
		 $.ajax({
			type : "get",
			url :"http://localhost:8080/first/splitData.do",
			success : fn_test
		}); 
	
})



function fn_test(){
	alert("성공");
}



</script>


</body>
</html>