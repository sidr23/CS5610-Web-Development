    $(function ()
    {
        $("#table1").hide();
        $("#button1").click(function ()
        {
            var authorname = $("#search").val();
            ApiSuccess(authorname);
            $("#table1").show();
        }
        );        

        function ApiSuccess(authorname)
        {
            var author = "inauthor:" + authorname;
            var url = "https://www.googleapis.com/books/v1/volumes?q=" + author + '&maxResults=10&startIndex=0';
            var newUrl = "simpleproxy.aspx?url=|" + url + "|";
            console.log(url);
            $.ajax(
            {
                url: newUrl,
                dataType: "json",
                cache: false,
                success: function (data)
                {
                     $("#BookResults").empty();

            for (var i = 0; i < data.items.length; i++) 
    {
            
            $('#BookResults').append('<tr><td>' + data.items[i].volumeInfo.title + '</td>'
                                        +'<td>' + data.items[i].volumeInfo.authors + '</td>'
                                        + '<td>' + data.items[i].volumeInfo.publisher + '</td>'
                                        + '<td>' + data.items[i].volumeInfo.publishedDate + '</td>'
                                        + '<td>' + data.items[i].volumeInfo.description + '</td>'
                                        + '<td><img src="' + data.items[i].volumeInfo.imageLinks.smallThumbnail + '"/>' + '</td>'
                                        + '<td><a target="_blank" href="' + data.items[i].volumeInfo.previewLink + '">Preview Link</a>' + '</td>'
                                        + '<td><a target="_blank" href="' + data.items[i].volumeInfo.infoLink + '">Info Link</a></td></tr>');

     }
                },

                failure: function () {
                    console.log("I failed doing ajax");
                }
            }
    );}
    }
    )
