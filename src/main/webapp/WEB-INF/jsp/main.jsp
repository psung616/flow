<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>파일 확장자 차단 설정</title>
</head>
<body>
<div style="font-size: 24px; font-weight: bold;">◎ 파일 확장자 차단</div>
<div>파일확장자에 따라 특정 형식의 파일을 첨부하거나 전송하지 못하도록 제한</div>
<div>
    <div>고정확장자</div>
    <input type="checkbox" id="bat" name="bat"><label for="bat">bat</label>
    <input type="checkbox" id="cmd" name="cmd"><label for="cmd">cmd</label>
    <input type="checkbox" id="com" name="com"><label for="com">com</label>
    <input type="checkbox" id="cpl" name="cpl"><label for="cpl">cpl</label>
    <input type="checkbox" id="exe" name="exe"><label for="exe">exe</label>
    <input type="checkbox" id="scr" name="scr"><label for="scr">scr</label>
    <input type="checkbox" id="js" name="js"><label for="js">js</label>
</div>

<div>
    <div>커스텀확장자d</div>
    <input type="text" id="customExtension" placeholder="확장자 입력">
    <button onclick="addExtension()">+추가</button>
</div>

<div style="width: 200px; height: 200px; border: 1px solid black;" id="extensionList"></div>

<script>
    function addExtension() {
        const input = document.getElementById('customExtension');
        const list = document.getElementById('extensionList');

        const div = document.createElement('div');
        div.textContent = input.value;
        list.appendChild(div);

        input.value = ''; // 입력필드 초기화
    }
</script>
</body>
</html>