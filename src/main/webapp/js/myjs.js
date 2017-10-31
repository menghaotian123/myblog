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
        contentType: "charset=utf-8",
        type: "post",
        url: "/Admin/add/result",
        data: $('#myform').serialize(),
        success: function (datas) {
            $("#contentShow").html(datas);
            return false;
        },
        error: function () {
            alert("请求失败");
        }
    });
}