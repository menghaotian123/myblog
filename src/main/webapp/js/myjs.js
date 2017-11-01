function loadcenter(who, where) {
    $("button").css("color", "black");
    $(who).css("color", "dodgerblue");
    $("#center").load(where);
}
function loadCenterNote(who,where,which) {
    if (where === "/Note"){
        $("button").css("color", "black");
        $(who).css("color", "dodgerblue");
        $.ajax({
            contentType: "charset=utf-8",
            type: "get",
            url: "/Note?noteId=" + which,
            success: function (datas) {
                $("#center").html(datas);
                return false;
            },
            error: function () {
                alert("请求失败");
                alert(articalnum);
            }
        });
    }
}
function loadusual(who, where) {
    alert(who);
    alert(where);
    $(who).collapse(show());
    $(who).load(where);
}

function loadArtical(articalnum) {
    $.ajax({
        contentType: "charset=utf-8",
        type: "get",
        url: "/Note/artical?articalnum=" + articalnum,
        success: function (datas) {
            $("#articalShow").html(datas);
            return false;
        },
        error: function () {
            alert("请求失败");
            alert(articalnum);
        }
    });
}

function loadContentShow() {

    $.ajax({
        contentType: "application/json;charse=UTF-8",
        type: "post",
        dataType:"json",
        url: "/Admin/add/result",
        data:$('#myform').serialize(),
        async: false,
        processData:false,
        success: function (datas) {
            alert("请求成功");
            $("#contentShow").html(datas);
            return false;
        },
        error: function () {
            alert(data);
            alert("再次请求");
            document.getElementById("myForm").submit();
            alert("请求失败");
        }
    });
}