    var apikey;

    $(function () {

        $("#table1").hide();
        getApiKey();

        $("#button1").click(function ()
        {
            var booktype = $("#booksearch").val();
            // var genretype = $("#genresearch").val();
            ApiSuccess(booktype);
            $("#table1").show();
        }
        );        

        function getApiKey() {
            var url = "../../getkey.aspx?nytimesapi";

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
            console.log("Hello : " + data);

            apikey = data;

        }

        function getApiKeyFailure()
        {
            $contents.append("<p><b>Failed to get NYTimes api key</b></p>");
        }

        function ApiSuccess(booktype)
        {
            var items = [];
            var url = "http://api.nytimes.com/svc/books/v2/lists/"+ booktype + ".json?&api-key=" + apikey;
            var newUrl = "simpleproxy.aspx?url=|" + url + "|";
            console.log(url);
            console.log(apikey);
            $.ajax(
            {
                //url: "http://api.nytimes.com/svc/books/v2/lists/hardcover-" + booktype + ".json?&api-key=ff001b53928ac9b79bc0f6745d6acce2:17:71837079",
                url: newUrl,
                dataType: "json",
                cache: false,
                success: function (data)
                {
                    $("#BookResults").empty();
                    items = data.results;
                    for (var i = 0; i < items.length; i++) 
                    {
            
                        $('#BookResults').append('<tr><td>' + items[i].book_details[0].title + '</td>'
                                                    +'<td>' + items[i].book_details[0].author + '</td>'
                                                    + '<td>' + items[i].book_details[0].publisher + '</td>'
                                                    + '<td style="line-height: 14px;">' + items[i].book_details[0].description + '</td>'
                                                    + '<td><a target="_blank" href="' + items[i].book_details[0].amazon_product_url + '">Click here</a>' + '</td></tr>');

                    }
                },
                //{
                //    var result = "";
                //    items = data.results;
                //    for (var i = 0; i < items.length; i++) 
                //    {
                //        result += '<div>';
                //        result += '<br><b>Title: </b><span>' + items[i].book_details[0].title + '</span>';
                //        result += '<br><b>Authors:</b> <span>' + items[i].book_details[0].author + '</span>';
                //        result += '<br><b>Publisher:</b> <span>' + items[i].book_details[0].publisher + '</span>';
                //        result += '<br><b>Description: </b><span><i>' + items[i].book_details[0].description + '</i></span>';
                //        result += '<br><b>Link to Buy it from Amazon:</b> <span> <a target= "_blank" href="' + items[i].book_details[0].amazon_product_url + '"> Click Here </a></span></br>';
                //        result += '</div>';
                //    }
                //    document.getElementById("BookResults").innerHTML = result;
                //},

                failure: function () {
                    console.log("I failed doing ajax");
                }
            }
    );}
    }
    )
    //function updateSelectTarget() {
    //    var id = this.options[this.selectedIndex].value;
    //    var targets = this.parentNode.getElementsByTagName("select");
    //    var len = targets.length;
    //    for (var i = len - 1; i > 0; --i) {
    //        if (targets[i].id == id) {
    //            targets[i].style.display = "block";
    //        }
    //        else {
    //            targets[i].style.display = "none";
    //        }
    //    }
    //}