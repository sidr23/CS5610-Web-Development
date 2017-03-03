var apikey;

$(function () {

    $("#table1").hide();
    getApiKey();

    $("#button1").click(function () {

        var searchval = $("#statebox").val();
        ApiSuccess(searchval);

    }
    );

    function getApiKey() {
        var url = "../getkey.aspx?harpercollinsapi";

        var settings = {
            url: url,
            dataType: "text",
            cache: false
        };

        $.ajax(settings)
            .done(getApiKeySuccess)
            .fail(getApiKeyFailure);
    }

    function getApiKeySuccess(data) {
        // console.log("Hello : " + data);

        apikey = data;

    }

    function getApiKeyFailure() {
        $contents.append("<p><b>Failed to get api key</b></p>");
    }

    function ApiSuccess(searchval) {
        $("#table1").show();
        var items = [];
        var url = "http://api.harpercollins.com/api/v3/hcapim?apiname=AuthorTour&format=JSON&apikey=" + apikey;
        var newUrl = "simpleproxy.aspx?url=|" + url + "|";
        console.log(url);
        $.ajax(
        {
            url: newUrl,
            dataType: "json",
            cache: false,
            success: function (data) {
                $("#BookResults").empty();
                $("#p1").empty();
                items = data.AA_EVENT;
                var temp = 0;

                for (var i = 0; i < items.length; i++) {


                    if (items[i].STATE == searchval) {
                        temp += 1;
                        $('#BookResults').append('<tr><td>' + items[i].TITLE + '</td>'
                                                    + '<td>' + items[i].NAME + '</td>'
                                                    + '<td>' + items[i].TOUR_START_TIME + '</td>'
                                                    + '<td>' + items[i].TOUR_END_TIME + '</td>'
                                                    + '<td>' + items[i].TIMEOFDAY + '</td>'
                                                    + '<td>' + items[i].VENUE + '</td>'
                                                    + '<td>' + items[i].LOCATION + '</td>'
                                                    + '<td>' + items[i].CITY + '</td></tr>');
                    }
                }
                if (temp == 0) {
                    $('#p1').append("<h3><center> No book events in this state. Please search for some other state</center></h3>");
                    $("#table1").hide();
                }
            },

            failure: function () {
                console.log("I failed doing ajax");
            }
        }
);
    }
}
)