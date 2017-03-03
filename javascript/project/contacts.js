var map;
function initialize() {
    var mapOptions = {
        zoom: 15,
        center: new google.maps.LatLng(42.3389, -71.0903)
    };
    map = new google.maps.Map(document.getElementById('map-canvas'),
        mapOptions);

    var marker = new google.maps.Marker({
        position: new google.maps.LatLng(42.3389, -71.0903),
        map: map,
        title: 'Northeastern University'
    });
}

google.maps.event.addDomListener(window, 'load', initialize);

