var onlyElement = "";
function showWin(obj) {
    onlyElement = obj;
    var bodyHeight = $("body").height();
    var bodyWidth = $("body").width();
    $(".PopupLayer").css({ height: bodyHeight, width: bodyWidth, display: "block" });
    $(obj).show();
    resscrEvt(obj);
}
function objValue(obj) {
    var st = document.documentElement.scrollTop;//滚动条距顶部的距离
    var sl = document.documentElement.scrollLeft;//滚动条距左边的距离
    var ch = document.documentElement.clientHeight;//屏幕的高度
    var cw = document.documentElement.clientWidth;//屏幕的宽度
    var objH = $(obj).height();//浮动对象的高度
    var objW = $(obj).width();//浮动对象的宽度
    var objTop = Number(st) + (Number(ch) - Number(objH)) / 2;
    var objLeft = Number(sl) + (Number(cw) - Number(objW)) / 2;
    return objTop + "|" + objLeft;
}
function resscrEvt(obj) {
    var bjCss = $(".PopupLayer").css("display");
    if (bjCss == "block") {
        var bH2 = $("body").height();
        var bW2 = $("body").width();
        $(".PopupLayer").css({ width: bW2, height: bH2 });
        if (obj != "") {
            var objV = objValue(obj);
            var tbTop = objV.split("|")[0] + "px";
            var tbLeft = objV.split("|")[1] + "px";
            $(obj).css({ top: tbTop, left: tbLeft });
        }
    }
}
function closeWin(obj) {
    onlyElement = "";
    $(".PopupLayer").css("display", "none");
    $(obj).css("display", "none");
}