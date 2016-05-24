
var timerid = 0;
var images = new Array("Images/img11.jpg", "Images/img12.jpg", "Images/img13.jpg", "Images/img14.jpg", "Images/img15.jpg", "Images/img16.jpg", "Images/img17.jpg", "Images/img18.jpg", "Images/img19.jpg");
var countimages = 0;
function startTime() {
    if (timerid) {
        timerid = 0;
    }
    var tDate = new Date();

    if (countimages == images.length) {
        countimages = 0;
    }
    if (tDate.getSeconds() % 5 == 0) {
        document.getElementById("img1").src = images[countimages];
    }
    countimages++;

    timerid = setTimeout("startTime()", 700);
}
