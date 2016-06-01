$.fn.myHoverTip = function(divId, value) {
    var div = $("#" + divId); //Ҫ���������Ԫ���ԱߵĲ�
    div.css("position", "absolute");//���������Ծ��Զ�λ
    var self = $(this); //��ǰ����
    self.hover(function() {
        div.css("display", "block");
        var p = self.position(); //��ȡ���Ԫ�ص�left��top
        var x = p.left + self.width();//��ȡ����������left
        var docWidth = $(document).width();//��ȡ��ҳ�Ŀ�
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