var query;
var xmlhttp;

function loadbooks() {
query = document.getElementById('search').value;

xmlhttp = new XMLHttpRequest();

xmlhttp.onreadystatechange = function () {
                
if (xmlhttp.status == 200) {
var result="";
var data = eval("(" + xmlhttp.responseText + ")");
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

xmlhttp.open("GET", "https://www.googleapis.com/books/v1/volumes?q=" + query +  '&max-results=20&startIndex=0', true);
xmlhttp.send();

}
