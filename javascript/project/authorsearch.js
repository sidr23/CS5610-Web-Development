$(function () {

    $("#table1").hide();
    $("#button1").click(function () {
        var authorname = $("#search").val().trim();
        var booknumber = $("#booksearch").val();
        if (authorname != '' && authorname != undefined)
        {
            ApiSuccess(authorname,booknumber);
            //$("#table1").show();
        }
        else {
            $("#table1").hide();
            $("#BookResults").empty();
            $("#p1").empty();
            $("#p1").append("<center><h3>Incorrect input. Please input a valid name relatable to the literary world</center></h3>");
        }
    }
    );

    $("#search").keydown(function (e) {
        var key = e.charCode ? e.charCode : e.keyCode ? e.keyCode : 0;
        if (key == 13) {
            e.preventDefault();

            var authorname = $("#search").val().trim();
            var booknumber = $("#booksearch").val();
            if (authorname != '' && authorname != undefined) {
                ApiSuccess(authorname,booknumber);
                //$("#table1").show();
            }
            else {
                $("#table1").hide();
                $("#BookResults").empty();
                $("#p1").empty();
                $("#p1").append("<center><h3>Incorrect input. Please input a valid name relatable to the literary world</center></h3>");
            }
        }
    });

    function ApiSuccess(authorname, booknumber) {
        
        var author = "inauthor:" + authorname;
        var url = "https://www.googleapis.com/books/v1/volumes?q=" + author + "&startIndex=0&maxResults=" + booknumber;
        var newUrl = "simpleproxy.aspx?url=|" + url + "|";
        console.log(url);
        $.ajax(
        {
            url: newUrl,
            dataType: "json",
            cache: false,
            success: function (data) {
                
                $("#p1").empty();
                var i = 0;
                if (data.hasOwnProperty('items')) {
                    $("#table1").show();
                    // Remember
                    $("#BookResults").empty();
                    for (; i < data.items.length; i++) {
                        $('#BookResults').append('<tr><td>' + data.items[i].volumeInfo.title + '</td>'
                                                    + '<td>' + data.items[i].volumeInfo.authors + '</td>'
                                                    + '<td>' + data.items[i].volumeInfo.publisher + '</td>'
                                                    + '<td>' + data.items[i].volumeInfo.publishedDate + '</td>'
                                                    + '<td><div style="max-height:160px; overflow:auto">' + data.items[i].volumeInfo.description + '</div></td>'
                                                    + '<td><img src="' + data.items[i].volumeInfo.imageLinks.thumbnail + '"/>' + '</td>'
                                                    + '<td><a target="_blank" href="' + data.items[i].volumeInfo.previewLink + '">Preview Link</a>' + '</td>'
                                                    + '<td><a target="_blank" href="' + data.items[i].volumeInfo.infoLink + '">Info Link</a></td></tr>');


                    }
                }
                else {

                    $('#p1').append("<h2> No results found. Please search again</h2>");
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