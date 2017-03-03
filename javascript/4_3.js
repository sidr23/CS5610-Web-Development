$(function () {
    var choices = [ "Cricket", "Hockey", "Football","Soccer","Tennis","Golf"];
    $("#auto").autocomplete({
    source: choices
    });

});