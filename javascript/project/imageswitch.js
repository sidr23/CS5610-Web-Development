var timerid = 0;
var images = new Array("../images/project/background.jpg",
			"../images/project/background2.jpg",
			"../images/project/background3.jpg");
var countimages = 0;
function startTime() {
    if (timerid) {
        timerid = 0;
    }
    var tDate = new Date();

    if (countimages == images.length) {
        countimages = 0;
    }
    if (tDate.getSeconds() % 4 == 0) {
        document.getElementById("img1").src = images[countimages];
    }
    countimages++;

    timerid = setTimeout("startTime()", 1000);
}
