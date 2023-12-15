window.addEventListener("message", function(event) {
    var v = event.data
    switch (v.action) {
        case 'openMenu':
            $('.container').fadeIn(100).css('display', 'flex');
        break;
    }
});

function CloseAll() {
    $('.container').fadeOut(100)
    $.post('https://v4-shootingstyles/exit', JSON.stringify({}));
}

$(document).keyup((e) => {
    if (e.key === "Escape") {
        CloseAll()
    }
});

$(document).ready(function () {
    var container = $(".container");
    function handleButtonClick(buttonNumber) {
        $.post('https://v4-shootingstyles/changestyle', JSON.stringify({
            style: buttonNumber                
        }));
    }
    $(".button:eq(0)").click(function () {
        handleButtonClick(1);
    });
    $(".button:eq(1)").click(function () {
        handleButtonClick(2);
    });
    $(".button:eq(2)").click(function () {
        handleButtonClick(3);
    });
    container.mousedown(function (e) {
        var offsetX = e.pageX - container.offset().left;
        var offsetY = e.pageY - container.offset().top;
        container.css("cursor", "grabbing");
        $(document).mousemove(function (e) {
            container.offset({
                top: e.pageY - offsetY,
                left: e.pageX - offsetX
            });
        });
        $(document).mouseup(function () {
            $(document).off("mousemove mouseup");
            container.css("cursor", "auto");
        });
    });
});