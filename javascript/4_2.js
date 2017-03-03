function test() {
    $.ajax({
        url: "http://json-cricket.appspot.com/score.json",
        dataType: "jsonp",
        success: function (data) {
            $("#output").empty();
            $.each(data, function (i, item) {
                $("#output").append(item);
            });
        }
    });
}