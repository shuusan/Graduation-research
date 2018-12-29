function LinkClick(param) {
    var elem = document.getElementById("image");
    switch (param) {
        case 0:
            elem.src = "image/icon_142460_256.png";
            break;
        case 1:
            elem.src = "image/icon_141850_256.png";
            break;
        case 2:
            elem.src = "image/icon_141860_256.png";
            break;
        case 3:
            elem.src = "image/icon_142030_256.png";
            break;
        case 4:
            elem.src = "image/icon_142150_256.png";
            break;
        case 5:
            elem.src = "image/icon_138200_256.png";
            break;
        case 6:
            elem.src = "image/icon_142530_256.png";
            break;
        case 7:
            elem.src = "image/icon_147540_256.png";
            break;
        case 8:
            elem.src = "image/shedule.png";
            break;
        default:
            elem.src = "image/icon_138200_256.png";
            break;
    }
}
