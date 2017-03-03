        function search()
        {
            document.getElementById("videoResults").innerHTML = "Loading Videos";
            var query = document.getElementById("query").value;
            query = encodeURIComponent(query);
            var script = document.createElement('script');
            script.setAttribute('id', 'jsonScript');
            script.setAttribute('type', 'text/javascript');
            script.setAttribute('src', "http://gdata.youtube.com/feeds/videos?vq=" + query + '&max-results=20&alt=json-in-script&callback=showVideos');

            document.documentElement.firstChild.appendChild(script);
        }

        function showVideos(data)
        {
            var feed = data.feed;
            var entries = feed.entry;
            var html = ['<ol>'];
            for (var i = 0; i < entries.length; i++)
            {
	var entry = entries[i];
              var playCount = entry.yt$statistics.viewCount.valueOf() + ' views';
              var title = entry.title.$t;
              var lnk = '<a href = \"' + entry.link[0].href + '\" target="_blank">link</a>';
	html.push('<li>', title, ', ', playCount, ', ', lnk, '</li>');
              
            }
	html.push('</ol>');
            document.getElementById('videoResults').innerHTML = html.join('');
        }