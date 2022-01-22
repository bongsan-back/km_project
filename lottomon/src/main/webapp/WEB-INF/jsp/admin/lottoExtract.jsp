<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <link href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css" rel="stylesheet" />
    <link href="../css/adminStyles.css" rel="stylesheet" />
    <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/js/all.min.js" crossorigin="anonymous"></script>

<title>관리자페이지</title>



<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

</head>
<style>
    .exHeaderBox div{
        margin-bottom: 12px;
    }

    .ex-header{font-size: 22px;}

</style>
<body class="sb-nav-fixed">
<%@include file="./include/header.jsp"%>
<div id="layoutSidenav">
    <%@include file="./include/nav.jsp"%>
    <div id="layoutSidenav_content">
        <main>
            <div class="container-fluid px-4">
                <h1 class="mt-4">관리 페이지</h1>
                <ol class="breadcrumb mb-4">
                    <li class="breadcrumb-item active">로또 번호 추출 프로그램</li>
                </ol>

                <div class="exHeaderBox">
                    <div>추출 할 인원 <input type="text" id="exPerCnt"></div>
                    <div>인당 추출 수 <input type="text" id="exCnt"></div>
                    <input type="button" value="추출하기" id="exBtn">
                </div>
                <br><br>

                <div id="extractBox">
                </div>

            </div>
        </main>
        <%@include file="./include/footer.jsp"%>
    </div>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
<script src="../js/scripts.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js" crossorigin="anonymous"></script>
<script src="../assets/demo/chart-area-demo.js"></script>
<script src="../assets/demo/chart-bar-demo.js"></script>
<script src="https://cdn.jsdelivr.net/npm/simple-datatables@latest" crossorigin="anonymous"></script>
<script src="../js/datatables-simple-demo.js"></script>
</body>
<script>
    $(document).ready(function(){

    });

    $("#exBtn").click(function(){
        var exPerCnt = $("#exPerCnt").val();
        var exCnt = $("#exCnt").val();

        var str = '';
        for (var i=0; i < exPerCnt; i++){
            str += '    <div>';
            str += '        <div class="ex-header">추출 번호 '+(i+1)+'</div>';
            str += '        <span class="ex-content">';
            for(var j = 0; j < exCnt; j++){
                str += '[ ' + createLotto() + ' ] ';
            }
            str += '        </span>';
            str += '    </div><br>';
        }
        $("#extractBox").html(str);
    })

    function createLotto(exPerCnt, exCnt){
        var lotto = []; //6개로 값이 나열될것이기 때문에 배열처리 - 값은 담지 않음

        //6번처리 - 반복문
        for(var i=0;i<6;i++){
            var num = Math.floor(Math.random() * 44) + 1;
            for(var j in lotto){
                if(num == lotto[j]){ //현재 새로나온 숫자가 기존 숫자와 같으면
                    num = Math.floor(Math.random() * 44) + 1;
                }
            }
            lotto.push(num);
        }

        //오름차순으로 숫자 정렬
        lotto.sort(function(a,b){
            return a - b;
        });

        console.log(lotto);
        return lotto;
    }


</script>
</html>
