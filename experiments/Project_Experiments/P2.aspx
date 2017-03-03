<%@ Page Language="C#"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
    
<head>
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>    
<script type="text/javascript">
    var $bookname;
    var bookid;
    function getApiKey(data) {
        console.log("Hi");
        var url = "http://www.goodreads.com/book/title.json?key=FZipmIrjEiakviFVQ1f3Q";
        $bookname = $("#bookname");
        var book = $bookname.val();
        var bookurl = "simpleproxy.aspx?url=|"
            + url
            + "&title="
            + encodeURI(book)
            + "|";
        //var settings = {
        //    url: bookurl,
        //    dataType: "jsonp",
        //    cache: false
        //};
        //console.log(url);
        //$.ajax(settings)
        //    .done(getApiKeySuccess);

        console.log(book);

        var title = $(this).find('book').find('title').text();
        var author = $(this).find('book').find('author').find('name').text();
        var img_url = $(this).find('book').find('image_url').text();

        $(this).find('book').find('id').each(function () {
            {
                bookid = $(this).text();
            }

        });

        for (var i = 0; i < data.items.length; i++) {
            result += '<div>';
            result += '<br>Name: <span>' + data.Title + '</span>';
            result += '<br>Author: <span>' + data.Author + '</span>';
            result += '<br><a><img src=' + data.Cover_Image + '></a></br>';
            result += '</div>';
            formatdata(title, author, img_url);
        }
        document.getElementById("BookResults").innerHTML = result;
    }
        //    var formatteddata = '';

        //    function formatdata(title, author, img_url) {
        //        formatteddata += '<div class="bookdisplay">';
        //        formatteddata += '<a href = "P2.aspx?bid=' + bookid + '" target = "_blank"><b>' + title + '</b></a>';
        //        formatteddata += '<a href = "P2_details.aspx?bid=' + bookid + '" target = "_blank"><img src="' + img_url + '" width="60" height="80"/></a>';
        //        formatteddata += '<div class="clear"></div>';
        //        formatteddata += '<b>' + author + '</b><br/>';
        //        formatteddata += '</div>';
        //}

        //function getApiKeySuccess(data)
        //{
        //    console.log(data);
        //}

        //return bookurl;
        //console.log(data);
        //alert("Run");
    
</script>
</head>
<body>
    <form id="form1" runat="server">
    <h2>Get Book Information</h2>
   <div>
            <input type="text" id="bookname" />
            <input type="button" type="submit" value="Search" onclick="getApiKey()"/>
   </div>
        <div id="bookResults"></div>
    </form>
</body>
</html>
