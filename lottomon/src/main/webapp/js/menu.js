function goToMenu(type){
    if(type==="01") {
        location.href = "./bulletin.do";//자유게시판 이동
    } else if(type==="02") {
        location.href = "./winPrayer.do";//당첨기원게시판 이동
    } else if(type==="03") {
        location.href = "./debateRoom.do";//토론방 이동
    } else if(type==="04") {
        location.href = "./theFirstStory.do";//1등당첨자이야기 이동
    } else if(type==="11") {
        location.href = "./notice.do";//공지사항 이동
    } else if(type==="12") {
        location.href = "./mattersForInquiry.do";//1:1문의하기 이동
    }
}

function goToCategoryMenu(type){
    if(type==="01" || type==="02" || type==="03" || type==="04") {
        location.href = "./bulletin.do";//카테고리 상위 - 자유게시판 이동
    } else if(type==="11" || type==="12") {
        location.href = "./notice.do";//카테고리 상위 - 공지사항 이동 이동
    }
}