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
	 var regExp = /^(?=.*[A-Za-z])(?=.*\d)(?=.*[~!@#$%^&*()+|=])[A-Za-z\d~!@#$%^&*()+|=]{8,16}$/;
	 if (regExp.test(str)) {
		 return true;
	 }
	 else {
		 return false;
	 }
 }


 /^(?=.*[a-zA-Z])((?=.*\d)|(?=.*\W)).{6,20}$/


function setCookie(cookie_name, value, days) {
    var exdate = new Date();
    exdate.setDate(exdate.getDate() + days);
    // 설정 일수만큼 현재시간에 만료값으로 지정

    var cookie_value = escape(value) + ((days == null) ? '' : '; expires=' + exdate.toUTCString());
    document.cookie = cookie_name + '=' + cookie_value;
}

function getCookie(cookie_name) {
    var x, y;
    var val = document.cookie.split(';');

    for (var i = 0; i < val.length; i++) {
        x = val[i].substr(0, val[i].indexOf('='));
        y = val[i].substr(val[i].indexOf('=') + 1);
        x = x.replace(/^\s+|\s+$/g, ''); // 앞과 뒤의 공백 제거하기
        if (x == cookie_name) {
            return unescape(y); // unescape로 디코딩 후 값 리턴
        }
    }
}

function addCookie(id) {
    var items = getCookie('productItems'); // 이미 저장된 값을 쿠키에서 가져오기
    var maxItemNum = 5; // 최대 저장 가능한 아이템개수
    var expire = 7; // 쿠키값을 저장할 기간
    if (items) {
        var itemArray = items.split(',');
        if (itemArray.indexOf(id) != -1) {
            // 이미 존재하는 경우 종료
            console.log('Already exists.');
        }
        else {
            // 새로운 값 저장 및 최대 개수 유지하기
            itemArray.unshift(id);
            if (itemArray.length > maxItemNum ) itemArray.length = 5;
            items = itemArray.join(',');
            setCookie('productItems', items, expire);
        }
    }
    else {
        // 신규 id값 저장하기
        setCookie('productItems', id, expire);
    }
}
