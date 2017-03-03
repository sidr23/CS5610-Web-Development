   
    function getApi()
    {
        var bookname = $("#search").val();
        console.log(bookname);
        ApiSuccess(bookname, bookresults);
    }

    

    function ApiSuccess(bookname,callback) {
        $.ajax(
        {
            //url: "simpleproxy.aspx?url=|" + "https://www.googleapis.com/books/v1/volumes?q=" + bookname + '&maxResults=10&startIndex=0' + "|",
            url: "https://www.googleapis.com/books/v1/volumes?q=" + bookname + '&maxResults=10&startIndex=0',
            datatype: "jsonp",

            success: function (data) {
                console.log(data);
                callback(data);
            }

        });
    }

    function bookresults(data) {
        // console.log(data);
        $("#BookResults").empty();

        for (var i = 0; i < data.items.length; i++) {
            
            $('#BookResults').append('<tr><td>' + data.items[i].volumeInfo.title + '</td>'

        }
    }
    //    var result = "";
    //    console.log(data);
    //    for (var i = 0; i < data.items.length; i++) {
    //        result += '<div>';
    //        result += '<br>Name: <span>' + data.items[i].volumeInfo.title + '</span>';
    //        result += '<br>Author: <span>' + data.items[i].volumeInfo.authors[0] + '</span>';
    //        result += '<br><a><img src=' + data.items[i].volumeInfo.imageLinks.thumbnail + '></a></br>';
    //        result += '</div>';
    //     }

    //    document.getElementById("BookResults").innerHTML = result;

    //}