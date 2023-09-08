<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="/static/main.js"></script>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>파일 확장자 차단 설정</title>
</head>
<style>
    /* 스타일코드는 인터넷검색을 통해 가져왔습니다. 참고부탁드립니다.  */

    .button-wrapper {
        display: inline-flex;  /* 가로로 나란히 배열 */
        align-items: center;  /* 수직 중앙 정렬 */
        border: 1px solid #ccc;
        padding: 5px 10px;
        margin: 10px;  /* 여러 버튼들 사이의 간격을 조정 */
        position: relative;  /* close-btn의 위치를 위해 설정 */
        background-color: #f7f7f7;
        border-radius: 5px;  /* 버튼의 모서리를 둥글게 */
    }

    .button-text {
        flex-grow: 1;  /* 가능한 많은 공간을 차지하도록 */
    }

    .close-btn {
        margin-left: 5px;
        cursor: pointer;  /* 마우스를 올렸을 때 포인터로 보이게 함 */
    }

</style>
<body>
<div style="font-size: 24px; font-weight: bold;">◎ 파일 확장자 차단</div>
<div>파일확장자에 따라 특정 형식의 파일을 첨부하거나 전송하지 못하도록 제한</div>
<br/>
<div>
    <div>고정확장자</div>
    <c:forEach var="item" items="${list}">
        <input type="checkbox" id="${item.nm}" name="${item.nm}"
            <c:if test="${item.chk ne '0'}">checked</c:if>
        onchange="fnDefaultControll('${item.no}','${item.nm}',this.checked)"><label for="${item.nm}">${item.nm}</label>
    </c:forEach>
</div>
<br/>
<div>
    <div>커스텀확장자</div>
    <input type="text" id="customExtension" placeholder="확장자 입력" maxlength="20">
    <button onclick="fnCustomControll()">+추가</button>
</div>
<br/>
<div id="extensionList" style="position: relative; border: 1px solid black;display: inline-block;" >
    <div><span id="cnt">${cnt}</span> / 200</div>
    <c:forEach var="item" items="${list2}">
        <div class="button-wrapper">
            <span class="button-text">${item.nm}</span>
            <span class="close-btn" onclick="fnDelete(this,'${item.nm}')">×</span>
        </div>
    </c:forEach>
</div>
</body>
</html>