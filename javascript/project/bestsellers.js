var apikey;

$(function () {

    $("#table1").hide();
    getApiKey();

    $("#button1").click(function () {
        var booktype = $("#booksearch").val();
        // var genretype = $("#genresearch").val();
        ApiSuccess(booktype);
        $("#table1").show();
    }
    );

    function getApiKey() {
        var url = "../getkey.aspx?nytimesapi";

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
        //  console.log("Hello : " + data);

        apikey = data;

    }

    function getApiKeyFailure() {
        $contents.append("<p><b>Failed to get NYTimes api key</b></p>");
    }

    function ApiSuccess(booktype) {
        var items = [];
        var url = "http://api.nytimes.com/svc/books/v2/lists/" + booktype + ".json?&api-key=" + apikey;
        var newUrl = "simpleproxy.aspx?url=|" + url + "|";
        //console.log(url);
        // console.log(apikey);
        $.ajax(
        {
            url: newUrl,
            dataType: "json",
            cache: false,
            success: function (data) {
                $("#BookResults").empty();
                items = data.results;
                for (var i = 0; i < items.length; i++) {

                    $('#BookResults').append('<tr><td>' + items[i].book_details[0].title + '</td>'
                                                + '<td>' + items[i].book_details[0].author + '</td>'
                                                + '<td>' + items[i].book_details[0].publisher + '</td>'
                                                + '<td style="line-height: 14px;">' + items[i].book_details[0].description + '</td>'
                                                + '<td><a target="_blank" href="' + items[i].book_details[0].amazon_product_url + '">Click here</a>' + '</td></tr>');

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