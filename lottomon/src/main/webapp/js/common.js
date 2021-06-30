var year;
var month;
var date;
var day;

$(document).ready(function(){
nowDate();

});

function nowDate(){

var	today = new Date();   

now_year = today.getFullYear(); // 년도
now_month = today.getMonth() + 1;  // 월
now_date = today.getDate();  // 날짜
now_day = today.getDay();  // 요일

}




$('#mobile').click(function() {
	$('.menu_full').fadeIn();
});
$('#mobile_x').click(function() {
	$('.menu_full').fadeOut();
});


 //특수 문자 체크
 function checkSpecial(str) {
     const regExp = /[~!@#$%^&*()_+-|<>?:;`,{}\]\[/\'\"\\\']/gi;
     if (regExp.test(str)) {
         return true;
     }
     else {
         return false;
     }
 }
 //한글 체크
 function checkKor(str) {
     const regExp = /^[ㄱ-ㅎ|ㅏ-ㅣ|가-힣]*$/;
     if (regExp.test(str)) {
         return true;
     }
     else {
         return false;
     }
 }
 //숫자 체크
 function checkNum(str) {
     const regExp = /^[0-9]*$/;
     if (regExp.test(str)) {
         return true;
     }
     else {
         return false;
     }
 }
 //영문(영어) 체크
 function checkEng(str) {
     const regExp = /^[a-zA-Z]*$/;
     영어
     if (regExp.test(str)) {
         return true;
     }
     else {
         return false;
     }
 }
 //영문 + 숫자만 입력 체크
 function checkEngNum(str) {
     const regExp = /^[a-zA-Z0-9]*$/;;
     if (regExp.test(str)) {
         return true;
     }
     else {
         return false;
     }
 }
 //공백(스페이스 바) 체크
 function checkSpace(str) {
     if (str.search(/\s/) !== -1) {
         return true;
         //스페이스가 있는 경우
     }
     else {
         return false;
         //스페이스 없는 경우
     }
 }
 
  //비밀번호 8~20 자리 영어,숫자,특문
 function checkPassword(str) {
	 var regExp = /^(?=.*[a-zA-Z])((?=.*\d)|(?=.*\W)).{8,20}$/;
	 if (regExp.test(str)) {
		 return true;
	 }
	 else {
		 return false;
	 }
 }
 
 
 /^(?=.*[a-zA-Z])((?=.*\d)|(?=.*\W)).{6,20}$/


