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
<body class="sb-nav-fixed">
<%@include file="./include/header.jsp"%>
<div id="layoutSidenav">
    <%@include file="./include/nav.jsp"%>
    <div id="layoutSidenav_content">
        <main>
            <div class="container-fluid px-4">
                <h1 class="mt-4">관리 페이지</h1>
                <ol class="breadcrumb mb-4">
                    <li class="breadcrumb-item active">로또 관리 페이지</li>
                </ol>
                <form action="/admin/lottoUpdate.do" name="excleUpload" id="excleUpload" method="POST" enctype="multipart/form-data">
                    <div>아래의 링크로 이동하여 회차별 당첨번호 엑셀다운로드 한 뒤, 업로드 버튼 클릭</div><br>
                    <a href="https://dhlottery.co.kr/gameResult.do?method=byWin">동행복권 이동하기</a><br>
                    <input type="file" id="lottoFile" name="lottoFile">
                    <input type="button" value="업로드" id="addBtn">
                </form>

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

        $("#addBtn").on('click', function(){
            let upFile = $('#lottoFile')[0];

            let form = $('#excleUpload')[0];
            let frmData = new FormData(form);

            var fileName = $("#lottoFile").val();

            if(fileName.indexOf('.xls') < 0 || fileName == ''){
                alert('동행복권에서 다운받은 xls파일만 올려주세요.');
                return;
            }

            $.ajax({
                enctype: 'multipart/form-data',
                type: 'POST',
                url: '/admin/lottoUpdate.do',
                processData: false,
                contentType: false,
                cache: false,
                data: frmData,
                success: function(data) {
                    console.log(data);
                },
                error: function(e) {
                    console.log(e);
                    alert('파일업로드 실패');
                }
            });
        })

    })
</script>
</html>