function goToMenu(type){
    if(type==="01") {
        location.href = "/board/bulletin.do";//자유게시판 이동
    } else if(type==="02") {
        location.href = "/board/winPrayer.do";//당첨기원게시판 이동
    } else if(type==="03") {
        location.href = "/board/debateRoom.do";//토론방 이동
    } else if(type==="04") {
        location.href = "/board/theFirstStory.do";//1등당첨자이야기 이동
    } else if(type==="11") {
        location.href = "/board/notice.do";//공지사항 이동
    } else if(type==="12") {
        location.href = "/board/mattersForInquiry.do";//1:1문의하기 이동
    } else if(type==="21") {
        location.href = "/lotto/thisWeeksNumber.do";//이번주 나의번호 이동
    } else if(type==="22") {
        location.href = "/board/mylotto_payment.do";//결제 게시판
    }
}

function goToCategoryMenu(type){
    if(type==="01" || type==="02" || type==="03" || type==="04") {
        location.href = "/board/bulletin.do";//카테고리 상위 - 자유게시판 이동
    } else if(type==="11" || type==="12") {
        location.href = "/board/notice.do";//카테고리 상위 - 공지사항 이동
    } else if(type==="21" || type==="22") {
        location.href = "/lotto/thisWeeksNumber.do";//카테고리 상위 - 이번주 나의번호 이동
    }
}

var menu = {
    createLeftMenu: function(type, type_group_name) {
        var str = "";
        str +=  '<h2>'+type_group_name+'</h2>\n';
        str +=  '<div>\n';
        if(type==="01" || type==="02" || type==="03" || type==="04"){
            str +=  '<a href="/board/bulletin.do"';
            str +=  type==="01" ? 'class="on"' : '';
            str +=  '>자유게시판</a>' +
                '<a href="/board/winPrayer.do"';
            str +=  type==="02" ? 'class="on"' : '';
            str +=  '>당첨기원게시판</a>' +
                '<a href="/board/debateRoom.do"';
            str +=  type==="03" ? 'class="on"' : '';
            str +=  '>토론방</a>';
            /*str +=  '<a href="/board/theFirstStory.do"';
            str +=  type==="04" ? 'class="on"' : '';
            str +=  '>1등당첨자이야기</a>';*/
        }
        else if(type==="11" || type==="12"){
            str +=  '<a href="/board/notice.do"';
            str +=  type==="11" ? 'class="on"' : '';
            str +=  '>공지사항</a>' +
                '<a href="/board/mattersForInquiry.do"';
            str +=  type==="12" ? 'class="on"' : '';
            str +=  '>1:1문의하기</a>';
        }
        else if(type==="21" || type==="22"){
            /*str +=  '<a href="/lotto/thisWeeksNumber.do"';
            str +=  type==="21" ? 'class="on"' : '';
            str +=  '>이번주 나의번호</a>' +*/
                '<a href="/board/mylotto_payment.do"';
            str +=  type==="22" ? 'class="on"' : '';
            str +=  '>결제 게시판</a>';
        }
        str +=  '</div>';
        return str;
    }
};

