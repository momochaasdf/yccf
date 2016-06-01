$.fn.myHoverTip = function(divId, value) {
    var div = $("#" + divId); //要浮动在这个元素旁边的层
    div.css("position", "absolute");//让这个层可以绝对定位
    var self = $(this); //当前对象
    self.hover(function() {
        div.css("display", "block");
        var p = self.position(); //获取这个元素的left和top
        var x = p.left + self.width();//获取这个浮动层的left
        var docWidth = $(document).width();//获取网页的宽
        if (x > docWidth - div.width() - 20) {
            x = p.left - div.width();
        }
        div.css("left", x);
        div.css("top", p.top);
        div.html(value);
    },
    function() {
        div.css("display", "none");
    }
    );

    return this;
}