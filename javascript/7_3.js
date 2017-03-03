     (function ()
      {
                var flickerAPI = "http://api.flickr.com/services/feeds/photos_public.gne?jsoncallback=?";
                $.getJSON(flickerAPI,
                {
                    tags: "northeastern university", // This searches for images about northeastern university from flickr
                    tagmode: "any",
                    format: "json"
                })
                .done(function (data)
                {
                    $.each(data.items, function (i, item)
                    {
                        $("<img>").attr("src", item.media.m).appendTo("#images");
                        if (i === 7)
                        {
                            return false; // As soon as the number of images goes to 7, it stops
                        }   
                    });
                });
    })();

