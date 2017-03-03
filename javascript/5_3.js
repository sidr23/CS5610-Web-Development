var url = "simpleproxy.aspx?url=|http://www.espncricinfo.com/rss/content/story/feeds/509587.xml|";

var $contents;

function defineWrappers() {
    $contents = $("#liveNews");
}

function load_xml() {
    var settings = {
        url: url,
        datatype: "xml",
        cache: false
    }

    $.ajax(settings)
    .done(liveNews);
}

function liveNews(xmldoc) {
var rss = getChildNodesByTagName(xmldoc, "rss")[0];

var channel = getChildNodesByTagName(rss, "channel")[0];
var titlenode = getChildNodesByTagName(channel, "title")[0];
var title = $(titlenode).text();
var html = "<p><i><b>" + title + "</b></i></p>\n";

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

default:
break;
}
}

var itemdata = {
title: title,
link: link,
pubdate: pubdate
}

renderItem(itemdata);
}

function renderItem(itemdata) {
var html = "<p>";
html += itemdata.title;

if (itemdata.link) {
html += "<p><a target='_blank' href='";
html += itemdata.link;
html += "' Click to follow this news>"</a></p>";
}

if (itemdata.pubdate) {
html += "<p class='pubdate'>";
html += itemdata.pubdate;
html += "</p>\n";
}

    $(html).appendTo($contents);
}


function initialize() {
    defineWrappers();
    load_xml();
}

$(initialize);