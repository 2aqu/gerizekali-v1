$(document).ready(function(){
    $(".container").hide();
    $(".info-box").hide();
    var current
    var pos
    var lastpos

    window.addEventListener("message", function(event){
        var data = event.data
        lastpos = data.lastpos
        $(".container").show()
        createButtons(data.data)
    });
    
    function createButtons(data) { 
        var len = data.length
        for (i=0; i < len; i++) {
            $(".spawn-points").append('<i class="fas fa-map-marker-alt" data-id=' + i + ' id="loc' + i + '"><div class="info-box" id="label' + i +'">' + data[i].label + '</div></i>');
            $(".spawn-points").find("[data-id="+i+"]").data("data", data[i]);
            $(".spawn-points").find("[data-id="+i+"]").data("coords", data[i].coords);
            $(".spawn-points").find("[data-id="+i+"]").data("id", i);
        }
    }

    $(document).on("mouseenter", ".fas", function(e){
        var th = $(this)
        $("#label"+th.data("id")).fadeIn(0);
        if (th.data("data").label != null) {
            $("#label"+current).fadeOut(0);
        }
    });
    $(document).on("mouseleave", ".fas", function(e){
        var th = $(this)
        if ("#label" + th.data("id") != "#label"+current) {
            $("#label"+th.data("id")).fadeOut(0);
        }
    });
    $(document).on("click", ".fas", function(e){
        var th = $(this)
        if (current != null) {
            $("#loc"+current).css("color", "rgb(255, 65, 65)");
            $("#loc"+current).css("font-size", "x-large");
            $("#label"+current).fadeOut(400);
        }
       $("#loc"+th.data("id")).css("color", "rgb(253, 253, 253)");
       $("#loc"+th.data("id")).css("font-size", "xx-large");
       current = th.data("id")
       pos = th.data("coords")
    });

    $(document).on("click", ".play", function(e){
        if (pos != null) {
            $(".container").fadeOut(500)
            $.post('https://nation-spawn/spawn', JSON.stringify({coords: pos}));
            $('#info').hide()
        }
    });

    $(document).on("click", ".sonkonum", function(e){
        $(".container").fadeOut(500)
        $.post('https://nation-spawn/sonkonum', JSON.stringify({coords: pos}));
         $('#info').hide()
    });
})