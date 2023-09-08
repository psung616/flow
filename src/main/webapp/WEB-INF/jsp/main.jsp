<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>파일 확장자 차단 설정</title>
</head>
<body>
<div style="font-size: 24px; font-weight: bold;">◎ 파일 확장자 차단</div>
<div>파일확장자에 따라 특정 형식의 파일을 첨부하거나 전송하지 못하도록 제한</div>
<div>
    <div>고정확장자</div>
    <c:forEach var="item" items="${list}">
        <input type="checkbox" id="${item.nm}" name="${item.nm}"
            <c:if test="${item.chk ne '0'}">checked</c:if>
        onchange="fnDefaultControll('${item.no}','${item.nm}',this.checked)"><label for="${item.nm}">${item.nm}</label>
    </c:forEach>
</div>

<div>
    <div>커스텀확장자</div>
    <input type="text" id="customExtension" placeholder="확장자 입력" maxlength="20">
    <button onclick="fnCustomControll()">+추가</button>
    <div>${cnt} / 200</div>
</div>

<div style="width: 500px; height: 200px; border: 1px solid black;" id="extensionList"></div>

<script>
$(function(){


})

function fnDefaultControll(no, nm, chk){
    var param = {"no":no, "nm":nm, "chk":chk};

    $.ajax({
        url:"/defaultControll",
        method:"POST",
        data:param,
        success:function(response){

        },
        error:function(){

        }
    })
}

function fnCustomControll(){

}
</script>
</body>
</html>