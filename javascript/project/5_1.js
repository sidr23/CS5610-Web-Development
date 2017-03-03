var url = "simpleproxy.aspx?url=|http://news.prlog.org/us/ind/books/rss.xml|";

var $contents;

function defineWrappers() {
    $contents = $(".updates_right");
}

function load_xml() {
    var settings = {
        url: url,
        datatype: "xml",
        cache: false
    }

    $.ajax(settings)
    .done(BookNews);
}

function BookNews(xmldoc) {
var rss = getChildNodesByTagName(xmldoc, "rss")[0];

var channel = getChildNodesByTagName(rss, "channel")[0];
var titlenode = getChildNodesByTagName(channel, "title")[0];
var title = $(titlenode).text();
var html = "<p><i><h4>" + title + "</h4></i></p>\n";

$(html).appendTo($contents);
var items = getChildNodesByTagName(channel, "item");
var itemcount = items.length;
for (var i = 0; i < itemcount; i++) {
        gatherItem(items[i]);
}
}

function gatherItem(item) {

var title = "";
var href = "";
var pubdate = "";
var description = "";
var nodes = item.childNodes;
var length = nodes.length;

for (var i = 0; i < length; i++) {

var child = nodes[i];

if (child.nodeType != 1) {
continue;
}

var tag = child.tagName;
var $child = $(child);

switch (tag) {
case "title":
title = $child.text();
break;

case "link":
link = $child.text();
break;

case "pubDate":
pubdate = $child.text();
break;

case "description":
description = $child.text();
break;

default:
break;
}
}

var itemdata = {
    title: title,
    description:description,
    link: link,
    pubdate: pubdate
}

renderItem(itemdata);
}

function renderItem(itemdata) {
    var html = "<p><h3> " + itemdata.title + "</h3></p>";
    html += "<p> Published on: " + itemdata.pubdate + "</p>";
    html += "<p><h4>" + itemdata.description + "</h4></p>";
    html += "<p><a target='_blank' href='" + itemdata.link + "'>Link to read this story</a></p><br/>";
    $(html).appendTo($contents);
}


function initialize() {
    defineWrappers();
    load_xml();
}

$(initialize);