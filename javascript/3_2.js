$(document).ready(function () {

    $("p.hideTest").click(function () {
        $(this).hide();        
    });

    $("#show").click(function () {
        $("p").show();
    });

   

    $(".style1").click(function () {
        $(this).css({
            "font-style": "italic",
            "fontFamily" : "Times New Roman"
        })
    });

    $(".style2").click(function () {
        $(this).css({
            "color": "blue",
            "background-color":"green",
            "fontFamily": "Arial"
        })
    });

    $('#refresh').click(function () {
        location.reload();
    });

    $("#p1").draggable();

    $("#p2").draggable({
        grid: [20, 20]
    });

    $("#p3").draggable();
    $(".div1, .div2").draggable({
        grid: [20, 20]
    });
});