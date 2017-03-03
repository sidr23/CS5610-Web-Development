var JSONResponse;

$(document).ready(function()
{
$("#button1").click(function ()
{
var result='';
query = $ ('#search').value;

$.getJSON(
{
    url:""http://www.goodreads.com/book/title?"
    format: "json",
    key: 'FZipmIrjEiakviFVQ1f3Q',
    title: query,
    success: function (response) 
{
console.log(response);
}
}

function getbooks(data)
{
for (var i = 0; i < data.items.length; i++) {
result += '<div>';
result += '<br>Name: <span>' + data.items[i].volumeInfo.title + '</span>';
result += '<br>Author: <span>' + data.items[i].volumeInfo.authors[0] + '</span>';    
result += '<br><a><img src=' + data.items[i].volumeInfo.imageLinks.thumbnail + '></a></br>';
result += '</div>';

}
document.getElementById("BookResults").innerHTML = result;
}
else {
}
}