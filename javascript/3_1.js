$(document).ready(function () {

    $("p.hideTest").click(function () {
        $(this).hide();        
    });

    $("#show").click(function () {
        $("p").show();
    });

    $(".fade").hide();

    $("button#fadeIn").click(function(){
        $(".fade").fadeIn();
    });

    $("button#fadeOut").click(function () {
        $(".fade").fadeOut();
    });


});