
$("#wikiterm").keyup(function (arg)
{
var term = $("#wikiterm").val();
$.getJSON("http://en.wikipedia.org/w/api.php?callback=?",
{
    format: "json",
    action: "query",
    search: term,
    list: "search"
},
function (searchword)
{
$("#searchresults").empty();
$("#searchresults").append("<p>Results for: " + term + "</p>");
$.each(searchword.query.search,
    function (i, item)
    {
        $("#searchresults").append("<div><a target="_blank" href='http://en.wikipedia.org/wiki/" + encodeURIComponent(item.title) + "'>" + item.title + " </a><br>" + item.snippet + "<br><br></div>");
    });
});
});