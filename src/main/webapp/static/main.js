function fnDefaultControll(no, nm, chk){
    var param = {"no":no, "nm":nm, "chk":chk};

    $.ajax({
        url:"/defaultControll",
        method:"POST",
        data:param,
        success:function(response){
            fnCnt();
        },error:function(jqXHR, textStatus, errorThrown){
            alert('작업 중 에러가 발생했습니다: ' + textStatus);
        }
    })
}

function fnCustomControll(){
    var customExtension = $("#customExtension").val();

    // 공백여부검사
    if(customExtension == ""){
        alert("확장자를 입력해주세요.");
        $("#customExtension").focus();
        return;
    }

    // 확장자 중복검사
    var flag = false;
    $("#extensionList .button-text").each(function(){
       if($(this).text() === customExtension){
           flag = true;
           return false;
       }
    });

    if(flag){
        alert("이미 추가된 확장자 입니다.")
        $("#customExtension").val('').focus();
        return;
    }

    // 정규식 검사
    var regex = /[!@#$%^&*()_+\-=\[\]{};':"\\|,.<>\/?]+/;
    if(regex.test(customExtension)){
        alert("특수문자를 포함할 수 없습니다.");
        $("#customExtension").val("").focus();
        return;
    }

    if($(".button-wrapper").length >= 200){
        alert("커스텀 확장자는 200개를 초과할수 없습니다.");
        return;
    }

    var param = {"customExt":$("#customExtension").val()};

    $.ajax({
        url:"/customAdd",
        method: "POST",
        data: param,
        success:function(response) {
            // 버튼 추가
            var html = `<div class="button-wrapper">
                   <span class="button-text">${customExtension}</span>
                   <span class="close-btn" onclick="fnDelete(this, '${customExtension}')">×</span>
                </div>`;
            $("#extensionList").append(html);

            fnCnt();
        },error:function(jqXHR, textStatus, errorThrown){
            alert('작업 중 에러가 발생했습니다: ' + textStatus);
        }
    })
}

function fnDelete(obj, nm){
    var $parent = $(obj).parent();
    $parent.remove();

    var param = {"nm":nm};
    $.ajax({
        url:"/customDel",
        method:"DELETE",
        data:param,
        success:function(response){

        },error:function(){
            // 삭제에 실패하면 화면에 다시 추가해준다.
            $("#extensionList").append($parent);
        }
    })


    fnCnt();
}

function fnCnt(){
    var btn_len = $(".button-wrapper").length;
    $("#cnt").text(btn_len);

}