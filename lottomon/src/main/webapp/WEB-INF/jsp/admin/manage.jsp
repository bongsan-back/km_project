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
    <style>
        .gradeBox{padding: 5px;}
        .tableSubTxt{position: absolute; right: 20px; color: #777;}

    </style>
</head>
<body class="sb-nav-fixed">
<%@include file="./include/header.jsp"%>
<div id="layoutSidenav">
    <%@include file="./include/nav.jsp"%>
    <div id="layoutSidenav_content">
        <main>
            <div class="container-fluid px-4">
                <h1 class="mt-4">회원관리 페이지</h1>
                <ol class="breadcrumb mb-4">
                    <li class="breadcrumb-item active">로또 관리 페이지</li>
                </ol>
                <div class="card mb-4">
                    <div class="card-header">
                        <i class="fas fa-table me-1"></i>
                        회원 관리 테이블
                        <span class="tableSubTxt">(※등급 검색 : #등급)</span>
                    </div>
                    <div class="card-body">
                        <table id="datatablesSimple">
                            <thead>
                            <tr>
                                <th>No</th>
                                <th>이름</th>
                                <th>닉네임</th>
                                <th>성별</th>
                                <th>생년월일</th>
                                <th>등급</th>
                                <th>등급 변경</th>
                            </tr>
                            </thead>
                            <tfoot>
                            <tr>
                                <th>No</th>
                                <th>이름</th>
                                <th>닉네임</th>
                                <th>성별</th>
                                <th>생년월일</th>
                                <th>등급</th>
                                <th>등급 변경</th>
                            </tr>
                            </tfoot>
                            <tbody>
                            <c:forEach items="${userInfo}" var="user" varStatus="idx">
                                <tr>
                                    <td>${user.seq}</td>
                                    <td>${user.name}</td>
                                    <td>${user.nickname}</td>
                                    <td>${user.gender}</td>
                                    <td>${user.birth}</td>
                                    <td>
                                        <c:if test="${user.grade == '01'}">#일반 회원</c:if>
                                        <c:if test="${user.grade == '02'}">#휴면 회원</c:if>
                                        <c:if test="${user.grade == '03'}">#탈퇴 회원</c:if>
                                        <c:if test="${user.grade == '04'}">#정지 회원</c:if>
                                        <c:if test="${user.grade == '10'}">#실버 회원</c:if>
                                        <c:if test="${user.grade == '11'}">#골드 회원</c:if>
                                        <c:if test="${user.grade == '12'}">#다이아 회원</c:if>
                                        <c:if test="${user.grade == '99'}">#관리자</c:if>
                                    </td >
                                    <td>
                                        <select class="gradeBox" name="gradeSel" id="gradeSel${user.seq}" onchange="javascript:changeGrade(${user.seq}, this.value)">
                                            <option value='null'>선택</option>
                                            <option value='01' <c:if test="${user.grade == '01'}">selected</c:if> >일반</option>
                                            <option value='02' <c:if test="${user.grade == '02'}">selected</c:if> >휴면</option>
                                            <option value='03' <c:if test="${user.grade == '03'}">selected</c:if> >탈퇴</option>
                                            <option value='04' <c:if test="${user.grade == '04'}">selected</c:if> >정지</option>
                                            <option value='10' <c:if test="${user.grade == '10'}">selected</c:if> >실버</option>
                                            <option value='11' <c:if test="${user.grade == '11'}">selected</c:if> >골드</option>
                                            <option value='12' <c:if test="${user.grade == '12'}">selected</c:if> >다이아</option>
                                            <option value='99' <c:if test="${user.grade == '99'}">selected</c:if> >admin</option>
                                        </select>
                                        등급 유지 일 <input type="text" id="diffDate${user.seq}" style="width: 40px"> 일
                                    </td>
                                </tr>
                            </c:forEach>
                            </tbody>
                        </table>
                    </div>
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

    })

    function changeGrade(seq, grade){
        console.log(seq);
        console.log(grade);

        if(grade == 'null'){
            return false;
        }

        if($("#diffDate"+seq).val() == ''){
            alert("등급 유지 일을 입력해 주세요.");
            $("#diffDate"+seq).focus();
            $("#gradeSel"+seq).val('null');
            return false;
        }

        var data = {
            grade : grade,
            seq : seq,
            diffDate : $("#diffDate"+seq).val()
        };

        console.log(data);
        $.ajax({
            type: 'POST',
            contentType: "application/json",
            dataType: 'json',
            url: '/admin/changeGrade.do',
            data: JSON.stringify(data),
            success: function (data) {
                alert("등급 변경이 완료되었습니다.");
            },
            error : function(response){
                console.log(response);
            }
        });
    }
</script>
</html>
