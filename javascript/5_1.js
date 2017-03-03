var url_array = ["simpleproxy.aspx?url=|http://news.prlog.org/us/ind/books/rss.xml|"];

var xml_array = [];

var $contents;

function defineWrappers() {
    $contents = $("#BookNews");
}

function load_xml() {
    var length = url_array.length;
    var index = xml_array.length;

    if (index >= length) {
        Work();
        return;
    }

    var url= url_array[index];

    var settings = {
        url: url,
        datatype: "xml",
        cache: false
    }

    $.ajax(settings)
    .done(load_xml_success);
}


function load_xml_success(data) {
    xml_array.push(data);
    load_xml();
}


function Work() {
    $contents.html("");

    var url_length = url_array.length;
    var xml_length = xml_array.length;

    if (xml_length < url_length) {
        var html = "<p>"
            + "Loaded "
            + xml_length
            + " news feeds out of a possible "
            + url_length
            + " news feeds"
            + "</p>\n";

        $(html).appendTo($contents);
    }

    for (var i = 0; i < xml_length; i++) {
        showFeed(xml_array[i]);
    }
}

function showFeed(xmldoc) {
    var rss = getChildNodesByTagName(xmldoc, "rss")[0];

    if (!rss) {
        printNoNodeMessage("rss");
        return;
    }

    var channel = getChildNodesByTagName(rss, "channel")[0];

    if (!channel) {
        printNoNodeMessage("channel");
        return;
    }
    var titlenode = getChildNodesByTagName(channel, "title")[0];

    var items = getChildNodesByTagName(channel, "item");

    var itemcount = items.length;

    for (var i = 0; i < itemcount; i++) {
        getItem(items[i]);
    }
}


function printNoNodeMessage(tag) {
    var html = "<p>No <code>"
        + tag
        + "</code> Node</p>";

    $(html).appendTo($contents);
}


function getItem(item) {
    var title = "";
    var description = "No Description";
    var href = "";
    var imagehref = "";
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

            case "description":
                description = $child.text();
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
        description: description,
        pubdate: pubdate,
        link: link
    }

    renderItem(itemdata);
}


function renderItem(itemdata) {
    var html = "<p><h3> " + itemdata.title + "</h3></p>";
    html += "<p> Published on: " + itemdata.pubdate + "</p>";
    html += "<p><h4>" + itemdata.description + "</h4></p>";
    html += "<p><a target='_blank' href='" + itemdata.link + "'>Link to read this article</a></p><br/>";
    $(html).appendTo($contents);
}

function initialize() {
    defineWrappers();
    load_xml();
}

$(initialize);