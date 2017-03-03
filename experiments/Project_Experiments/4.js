$(function () {
    function log(message) {
        $("<div>").text(message).prependTo("#log");
        $("#log").scrollTop(0);
    }

    $("#city").autocomplete({
        source: function (request, response) {
            $.ajax({
                url: "",
                dataType: "jsonp",
                data: {
                    q: request.term
                },


                success: function (data) {
                    jsonObj = [];
                    for (i = 0; i < data.list.length; i++) {
                        jsonObj.push(data.list[i].name + ', ' + data.list[i].sys.country);
                    }
                    //return jsonObj;
                    //console.log(jsonObj);
                    response(jsonObj);
                }
            });
        },
        minLength: 3,
        select: function (event, ui) {
            log(ui.item ?
              ui.item.label :
              "Nothing selected, input was " + this.value);
        },
        open: function () {
            $(this).removeClass("ui-corner-all").addClass("ui-corner-top");
        },
        close: function () {
            $(this).removeClass("ui-corner-top").addClass("ui-corner-all");
        }
    });
});