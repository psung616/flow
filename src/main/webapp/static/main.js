function fnDefaultControll(no, nm, chk){
    var param = {"no":no, "nm":nm, "chk":chk};

    $.ajax({
        url:"/defaultControll",
        method:"POST",
        data:param,
        success:function(response){
            fnCnt();
        },
        error:function(){

        }
    })
}

function fnCustomControll(){
    var customExtension = $("#customExtension").val();
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

    var param = {"customExt":$("#customExtension").val()};

    $.ajax({
        url:"/customAdd",
        method: "POST",
        data: param,
        success:function(response){
            console.log(response);
        }, error:function(){

        }
    })

    // 버튼 추가
    var html = `<div class="button-wrapper">
                   <span class="button-text">${customExtension}</span>
                   <span class="close-btn" onclick="fnDelete(this, '${customExtension}')">×</span>
                </div>`;
    $("#extensionList").append(html);

    fnCnt();
}

function fnDelete(obj, nm){
    var param = {"nm":nm};
    $.ajax({
        url:"/customDel",
        method:"DELETE",
        data:param,
        success:function(response){

        },error:function(){

        }
    })

    $(obj).parent().remove();
    fnCnt();
}

function fnCnt(){
    var btn_len = $(".button-wrapper").length;
    $("#cnt").text(btn_len);

}